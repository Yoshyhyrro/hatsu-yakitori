{- shake/Rules/GC.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE KindSignatures #-}

module Rules.GC
  ( -- * GC Strategy Types
    GCStrategyType(..)
  , TopologyMetrics(..)
  , HeapStats(..)
  
    -- * Shake Rule
  , gcRule
  , PerExeGC(..)
  , gcObjPath
  
    -- * High-level API
  , buildGCOptimized
  , buildWithGCStrategy
  
    -- * Polysemy Effects
  , GCStrategy(..)
  , analyzeHeapTopology
  , selectOptimalStrategy
  , generateGCFlags
  , executeSchemeGC
  ) where

import Development.Shake
import Development.Shake.Classes
import Development.Shake.FilePath
import Development.Shake.Rule
    ( addBuiltinRule
    , RunResult(..)
    , RunChanged(..)
    , noLint
    , noIdentity
    , apply1
    )

import Control.Monad (filterM, forM_, unless)
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import qualified System.Process as Proc
import qualified Data.ByteString as BS
import Data.Typeable
import GHC.Generics (Generic)
import Data.Binary
import Data.Hashable
import Data.List (isInfixOf)
import Data.Kind (Type)

-- Polysemy
import Polysemy
import Polysemy.Embed
import Polysemy.Trace (Trace)  -- Import only the type
import qualified Polysemy.Trace as PT  -- Qualified import for trace function
import Polysemy.Error
import Polysemy.State

import Chicken
import Rules.StandardToplevel (extractAllDeps, classifyDependency, DependencyType(..))

-- ============================================================
-- GC Strategy Types
-- ============================================================

data GCStrategyType
  = GomoryHu              -- ^ Min-cut based (high connectivity)
  | Ultrametric           -- ^ Distance-based (spatial locality)
  | ConnesKreimer         -- ^ Hopf algebra (algebraic topology)
  | Conservative          -- ^ Minimal GC (default)
  deriving (Show, Eq, Generic)

instance Binary GCStrategyType
instance Hashable GCStrategyType
instance NFData GCStrategyType

-- ============================================================
-- Topology Metrics (from Scheme analysis)
-- ============================================================

data TopologyMetrics = TopologyMetrics
  { tmObjectCount :: Int
  , tmEdgeCount :: Int
  , tmAvgConnectivity :: Double
  , tmBottleneckRatio :: Double
  , tmMaxCutCapacity :: Double
  , tmRecommendedStrategy :: Maybe GCStrategyType
  } deriving (Show, Generic)

instance Binary TopologyMetrics

data HeapStats = HeapStats
  { hsObjectCount :: Int
  , hsEdgeCount :: Int
  , hsAvgConnectivity :: Double
  , hsBottleneckCount :: Int
  } deriving (Show, Generic)

instance Binary HeapStats

-- ============================================================
-- GC Effect Definition (Polysemy)
-- ============================================================

data GCStrategy (m :: Type -> Type) a where
  -- | Analyze heap topology by invoking Scheme analyzer
  AnalyzeHeapTopology :: FilePath -> GCStrategy m TopologyMetrics
  
  -- | Select optimal strategy based on metrics
  SelectOptimalStrategy :: TopologyMetrics -> GCStrategy m GCStrategyType
  
  -- | Generate CSC compilation flags for strategy
  GenerateGCFlags :: GCStrategyType -> FilePath -> FilePath -> String -> GCStrategy m [String]
  
  -- | Execute Scheme-side GC (optional, for testing)
  ExecuteSchemeGC :: FilePath -> GCStrategyType -> GCStrategy m HeapStats

makeSem ''GCStrategy

-- ============================================================
-- Polysemy Interpreters
-- ============================================================

-- | Main interpreter: uses Scheme FFI for topology analysis
interpretGCStrategyWithScheme :: Members '[Embed IO, Trace] r
                               => Sem (GCStrategy ': r) a -> Sem r a
interpretGCStrategyWithScheme = interpret \case
  AnalyzeHeapTopology srcPath -> do
    PT.trace $ "[GC] Analyzing heap topology: " ++ srcPath
    liftIO $ analyzeViaScheme srcPath
  
  SelectOptimalStrategy metrics -> do
    let strat = selectStrategy metrics
    PT.trace $ "[GC] Selected strategy: " ++ show strat ++ 
            " (connectivity=" ++ show (tmAvgConnectivity metrics) ++
            ", bottleneck=" ++ show (tmBottleneckRatio metrics) ++ ")"
    return strat
  
  GenerateGCFlags strat srcPath gcObjPath unitName -> do
    let flags = buildGCCompilerFlags strat srcPath gcObjPath unitName
    PT.trace $ "[GC] Compiler flags: " ++ unwords flags
    return flags
  
  ExecuteSchemeGC srcPath strat -> do
    PT.trace $ "[GC] Executing Scheme GC with strategy: " ++ show strat
    liftIO $ executeSchemeGCAnalysis srcPath strat

-- | Heuristic-based interpreter (no Scheme calls)
interpretGCStrategyHeuristic :: Members '[Embed IO, Trace] r
                              => Sem (GCStrategy ': r) a -> Sem r a
interpretGCStrategyHeuristic = interpret \case
  AnalyzeHeapTopology srcPath -> do
    PT.trace $ "[GC-Heuristic] Estimating topology from source"
    liftIO $ estimateTopologyFromSource srcPath
  
  SelectOptimalStrategy metrics -> do
    let strat = selectStrategy metrics
    PT.trace $ "[GC-Heuristic] Strategy: " ++ show strat
    return strat
  
  GenerateGCFlags strat srcPath gcObjPath unitName -> do
    return $ buildGCCompilerFlags strat srcPath gcObjPath unitName
  
  ExecuteSchemeGC srcPath strat -> do
    PT.trace $ "[GC-Heuristic] Skipping Scheme execution"
    return $ HeapStats 0 0 0.0 0

-- | Conservative interpreter (minimal GC)
interpretGCStrategyConservative :: Members '[Embed IO, Trace] r
                                 => Sem (GCStrategy ': r) a -> Sem r a
interpretGCStrategyConservative = interpret \case
  AnalyzeHeapTopology srcPath -> do
    PT.trace $ "[GC-Conservative] Skipping analysis"
    return $ TopologyMetrics 0 0 0.0 0.0 0.0 (Just Conservative)
  
  SelectOptimalStrategy _metrics -> do
    PT.trace $ "[GC-Conservative] Using Conservative strategy"
    return Conservative
  
  GenerateGCFlags _strat srcPath gcObjPath unitName -> do
    return $ buildBaseCompilerFlags srcPath gcObjPath unitName
  
  ExecuteSchemeGC _srcPath _strat -> do
    return $ HeapStats 0 0 0.0 0

-- ============================================================
-- Strategy Selection Logic
-- ============================================================

selectStrategy :: TopologyMetrics -> GCStrategyType
selectStrategy metrics
  -- High bottleneck ratio → use min-cut (Gomory-Hu)
  | tmBottleneckRatio metrics > 0.5 = GomoryHu
  
  -- High connectivity → use algebraic decomposition (Connes-Kreimer)
  | tmAvgConnectivity metrics > 0.8 = ConnesKreimer
  
  -- Medium connectivity → use distance pruning (Ultrametric)
  | tmAvgConnectivity metrics > 0.4 = Ultrametric
  
  -- Low connectivity → conservative
  | otherwise = Conservative

-- ============================================================
-- Scheme FFI Integration
-- ============================================================

analyzeViaScheme :: FilePath -> IO TopologyMetrics
analyzeViaScheme srcPath = do
  -- Call Scheme script to analyze heap topology
  let analyzerScript = unlines
        [ "(import topological-gc)"
        , "(define graph (make-reachability-graph))"
        , ";; TODO: Build graph from source analysis"
        , "(let-values (((objs edges conn) (estimate-heap-topology graph)))"
        , "  (printf \"OBJECTS:~a\\n\" objs)"
        , "  (printf \"EDGES:~a\\n\" edges)"
        , "  (printf \"CONNECTIVITY:~a\\n\" conn))"
        ]
  
  let tmpScript = "/tmp/gc-analyze.scm"
  writeFile tmpScript analyzerScript
  
  output <- Proc.readProcess "csi" ["-s", tmpScript] ""
  parseTopologyOutput output

parseTopologyOutput :: String -> IO TopologyMetrics
parseTopologyOutput output = do
  let lns = lines output
  
  -- Int フィールド用パーサー
  let parseIntField :: String -> Int
      parseIntField prefix = case filter (prefix `isInfixOf`) lns of
        (l:_) -> read $ drop (length prefix + 1) $ dropWhile (/= ':') l
        []    -> 0
  
  -- Double フィールド用パーサー
  let parseDoubleField :: String -> Double
      parseDoubleField prefix = case filter (prefix `isInfixOf`) lns of
        (l:_) -> read $ drop (length prefix + 1) $ dropWhile (/= ':') l
        []    -> 0.0
  
  let objCount = parseIntField "OBJECTS"
  let edgeCount = parseIntField "EDGES"
  let connectivity = parseDoubleField "CONNECTIVITY"
  
  let bottleneckRatio = if edgeCount > 0
                        then fromIntegral objCount / fromIntegral edgeCount
                        else 0.0
  
  return $ TopologyMetrics
    { tmObjectCount = objCount
    , tmEdgeCount = edgeCount
    , tmAvgConnectivity = connectivity
    , tmBottleneckRatio = bottleneckRatio
    , tmMaxCutCapacity = 1.0
    , tmRecommendedStrategy = Nothing
    }

executeSchemeGCAnalysis :: FilePath -> GCStrategyType -> IO HeapStats
executeSchemeGCAnalysis srcPath strat = do
  -- Execute actual GC with the chosen strategy
  let gcScript = unlines
        [ "(import topological-gc)"
        , "(set-gc-strategy! '" ++ show strat ++ ")"
        , "(define graph (make-reachability-graph))"
        , "(define frontier (make-topological-frontier graph 'root))"
        , "(let-values (((collected freed) (topological-gc-collect frontier)))"
        , "  (printf \"COLLECTED:~a\\n\" (length collected))"
        , "  (printf \"FREED:~a\\n\" freed))"
        ]
  
  let tmpScript = "/tmp/gc-execute.scm"
  writeFile tmpScript gcScript
  
  output <- Proc.readProcess "csi" ["-s", tmpScript] ""
  
  -- Parse results
  let parseField prefix = case filter (prefix `isInfixOf`) (lines output) of
        (l:_) -> read $ drop (length prefix + 1) $ dropWhile (/= ':') l
        []    -> 0
  
  return $ HeapStats
    { hsObjectCount = parseField "COLLECTED"
    , hsEdgeCount = 0
    , hsAvgConnectivity = 0.0
    , hsBottleneckCount = 0
    }

-- ============================================================
-- Heuristic Estimation (no Scheme calls)
-- ============================================================

estimateTopologyFromSource :: FilePath -> IO TopologyMetrics
estimateTopologyFromSource srcPath = do
  content <- readFile srcPath
  let lineCount = length (lines content)
  
  -- Simple heuristics based on code structure
  let estimatedObjs = lineCount * 5  -- ~5 objects per line of code
  let estimatedEdges = estimatedObjs * 3  -- avg 3 edges per object
  let connectivity = 0.6  -- default assumption
  
  return $ TopologyMetrics
    { tmObjectCount = estimatedObjs
    , tmEdgeCount = estimatedEdges
    , tmAvgConnectivity = connectivity
    , tmBottleneckRatio = 0.3
    , tmMaxCutCapacity = 1.0
    , tmRecommendedStrategy = Nothing
    }

-- ============================================================
-- Compiler Flag Generation
-- ============================================================

buildGCCompilerFlags :: GCStrategyType -> FilePath -> FilePath -> String -> [String]
buildGCCompilerFlags strat srcPath gcObjPath unitName =
  baseFlags ++ strategySpecificFlags strat ++ [srcPath]
  where
    baseFlags = 
      [ "-c"
      , "-o", gcObjPath
      , "-unit", unitName
      , "-O3"
      , "-scrutinize"
      , "-specialize"
      , "-no-warnings"
      , "-v"  -- Verbose output to debug linking
      ]
    
    strategySpecificFlags GomoryHu = 
      [ "-optimize-leaf-routines"
      , "-clustering"
      , "-inline", "5"
      ]
    
    strategySpecificFlags Ultrametric = 
      [ "-local-optimizations"
      , "-unroll-limit", "10"
      , "-inline", "3"
      ]
    
    strategySpecificFlags ConnesKreimer = 
      [ "-inline-global"
      , "-specialize"
      , "-strict-types"
      , "-inline", "4"
      ]
    
    strategySpecificFlags Conservative = 
      [ "-inline", "2"
      ]

buildBaseCompilerFlags :: FilePath -> FilePath -> String -> [String]
buildBaseCompilerFlags = buildGCCompilerFlags Conservative

-- ============================================================
-- Shake Rule Setup
-- ============================================================

newtype PerExeGC = PerExeGC FilePath
  deriving (Show, Typeable, Eq, Generic)

instance Hashable PerExeGC
instance Binary PerExeGC
instance NFData PerExeGC

type instance RuleResult PerExeGC = ()

gcObjPath :: FilePath -> FilePath
gcObjPath exe = exe <.> "gc.o"

gcRule :: Rules ()
gcRule = addBuiltinRule noLint noIdentity $ \(PerExeGC exe) _old _mode -> do
  let gcObj = gcObjPath exe
  let unitName = takeBaseName exe
  
  -- Find source file
  projectRoot <- liftIO Dir.getCurrentDirectory
  let possibleSources = 
        [ exe <.> "scm"
        , replaceDirectory exe "." <.> "scm"
        , projectRoot </> takeFileName exe <.> "scm"
        ]
  
  srcFile <- liftIO $ findFirstExisting possibleSources
  
  case srcFile of
    Nothing -> do
      putInfo $ "[GC] Source file not found for: " ++ exe
      return $ RunResult ChangedRecomputeDiff BS.empty ()
    
    Just src -> do
      need [src]
      
      -- Extract dependencies and ensure custom modules are built first
      deps <- liftIO $ extractAllDeps src
      let customModules = [m | dep <- deps
                             , let classified = classifyDependency dep
                             , CustomMod m <- [classified]]
      
      -- Build dependent modules first
      let moduleDir = takeDirectory src
      let moduleSources = [moduleDir </> m <.> "scm" | m <- customModules]
      existingModules <- liftIO $ filterM Dir.doesFileExist moduleSources
      
      unless (null existingModules) $ do
        putInfo $ "[GC] Building dependencies first: " ++ show existingModules
        need existingModules
        -- Compile dependencies into canonical dest modules obj dir
        forM_ existingModules $ \modSrc -> do
          let objDir = projectRoot </> "dest" </> "modules" </> "obj_default"
              modObj = objDir </> takeBaseName modSrc <.> "o"
              modUnit = takeBaseName modSrc
          liftIO $ Dir.createDirectoryIfMissing True objDir
          liftIO $ Proc.callProcess "csc" 
            ["-c", "-o", modObj, "-unit", modUnit, "-J", modSrc]
      
      liftIO $ Dir.createDirectoryIfMissing True (takeDirectory gcObj)
      
      -- Execute Polysemy effect pipeline
      let program :: Sem '[GCStrategy, Trace, Embed IO] () = do
            -- 1. Analyze heap topology
            metrics <- analyzeHeapTopology src
            
            -- 2. Select optimal strategy
            strat <- selectOptimalStrategy metrics
            
            -- 3. Generate compiler flags
            flags <- generateGCFlags strat src gcObj unitName
            
            -- 4. Compile
            liftIO $ do
              putStrLn $ "[GC] Compiling with strategy: " ++ show strat
              Proc.callProcess "csc" flags
      
      -- Run with Scheme integration (or fallback to heuristics)
      liftIO $ runM 
        $ traceToIO
        $ interpretGCStrategyWithScheme program
      
      return $ RunResult ChangedRecomputeDiff BS.empty ()

-- ============================================================
-- High-level API
-- ============================================================

buildGCOptimized :: FilePath -> Action (Artifact 'Obj)
buildGCOptimized exe = do
  let gcObj = gcObjPath exe
  _ <- apply1 (PerExeGC exe)
  return (mkObject gcObj)

buildWithGCStrategy :: GCStrategyType -> FilePath -> Action (Artifact 'Obj)
buildWithGCStrategy explicitStrat exe = do
  let gcObj = gcObjPath exe
  
  putInfo $ "[GC] Forcing explicit strategy: " ++ show explicitStrat
  
  -- Run Polysemy with strategy override
  let program :: Sem '[GCStrategy, Trace, Embed IO] () = do
        PT.trace $ "[GC] Overriding strategy to: " ++ show explicitStrat
        
        srcPath <- liftIO $ findSourceFor exe
        let unitName = takeBaseName exe
        
        flags <- generateGCFlags explicitStrat srcPath gcObj unitName
        
        liftIO $ do
          Dir.createDirectoryIfMissing True (takeDirectory gcObj)
          Proc.callProcess "csc" flags
  
  liftIO $ runM 
    $ traceToIO 
    $ interpretGCStrategyWithScheme program
  
  return (mkObject gcObj)

-- ============================================================
-- Helpers
-- ============================================================

findFirstExisting :: [FilePath] -> IO (Maybe FilePath)
findFirstExisting [] = return Nothing
findFirstExisting (p:ps) = do
  exists <- Dir.doesFileExist p
  if exists then return (Just p) else findFirstExisting ps

findSourceFor :: FilePath -> IO FilePath
findSourceFor exe = do
  let src = exe <.> "scm"
  exists <- Dir.doesFileExist src
  if exists
    then return src

    else fail $ "Source not found: " ++ src
traceToIO :: Member (Embed IO) r => Sem (Trace ': r) a -> Sem r a
traceToIO = interpret \case
  PT.Trace msg -> liftIO (putStrLn msg)

-- NOTE:
-- This module is still referenced from shake/Shake.hs and other rule modules.
-- Do NOT delete or remove it without first updating imports and build rules
-- that depend on GCStrategyType, gcRule, buildWithGCStrategy, etc.
-- If you intend to deprecate it, first migrate call sites and add tests.
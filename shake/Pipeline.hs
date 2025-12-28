{- shake/Pipeline.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}

module Pipeline
  ( buildModule
  , testModule
  , gcOptimizedModule
  , gcOptimizedModuleWith
  , Module(..)
  , BuildConfig(..)
  , defaultBuildConfig
  , regularModule
  , specialModule
  , withGCStrategy -- Added export
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, when, forM)
import qualified System.Directory as Dir

import Chicken
import qualified Rules.Compile as Compile
import qualified Rules.Link as Link
import qualified Rules.StandardToplevel as TopLevel
import qualified Rules.GC as GC
import qualified Salmonella

-- ============================================================
-- Configuration
-- ============================================================

data BuildConfig = BuildConfig
  { bcCompileFlags :: String
  , bcBuildDir :: FilePath
  , bcDistDir :: FilePath
  , bcGCStrategy :: Maybe GC.GCStrategyType
  } deriving (Show)

defaultBuildConfig :: BuildConfig
defaultBuildConfig = BuildConfig
  { bcCompileFlags = "-O3 -d0"
  , bcBuildDir = "_build"
  , bcDistDir = "dist"
  , bcGCStrategy = Nothing
  }

withGCStrategy :: GC.GCStrategyType -> BuildConfig -> BuildConfig
withGCStrategy strat cfg = cfg { bcGCStrategy = Just strat }

-- | Module definition
data Module = Module
  { modName :: String
  , modSrc :: FilePath
  , modTest :: FilePath
  , modDeps :: [FilePath]
  , modIsSpecial :: Bool
  } deriving (Show)

-- ============================================================
-- Smart Constructors
-- ============================================================

regularModule :: String -> FilePath -> FilePath -> [FilePath] -> Module
regularModule name src test deps = Module name src test deps False

specialModule :: String -> FilePath -> FilePath -> [FilePath] -> Module
specialModule name src test deps = Module name src test deps True

-- ============================================================
-- Main Build Pipeline
-- ============================================================

buildModule :: Module -> BuildConfig -> Action (Artifact 'Exe)
buildModule m cfg
  | modIsSpecial m = buildSpecialModule m cfg
  | otherwise = buildRegularModule m cfg

testModule :: Module -> BuildConfig -> Action ()
testModule m cfg = do
  exe <- buildModule m cfg
  
  if modIsSpecial m
    then cmd_ [getPath exe]
    else do
      env <- liftIO Link.getChickenEnv
      projectRoot <- liftIO Dir.getCurrentDirectory
      
      let testCfg = Salmonella.defaultTestConfig
            { Salmonella.tcEnv = env
            , Salmonella.tcCompileFlags = words (bcCompileFlags cfg)
            , Salmonella.tcBuildDir = bcBuildDir cfg
            }
      
      result <- Salmonella.runIsolatedModuleTests
        testCfg
        (modName m)
        (projectRoot </> modSrc m)
        (projectRoot </> modTest m)
        (map (projectRoot </>) (modDeps m))
      
      unless (Salmonella.trPassed result) $
        fail $ "Tests failed for " ++ modName m

-- | GC-optimized build with auto strategy selection
gcOptimizedModule :: Module -> BuildConfig -> Action (Artifact 'Exe)
gcOptimizedModule m cfg
  | modIsSpecial m = 
      fail "GC optimization not supported for special modules"
  | otherwise =
      let gcCfg = cfg 
            { bcCompileFlags = "-O3 -d0 -scrutinize -specialize -inline 3"
            , bcGCStrategy = Nothing
            }
      in buildRegularModule m gcCfg

-- | GC-optimized build with explicit strategy
gcOptimizedModuleWith :: GC.GCStrategyType -> Module -> BuildConfig -> Action (Artifact 'Exe)
gcOptimizedModuleWith strat m cfg
  | modIsSpecial m = 
      fail "GC optimization not supported for special modules"
  | otherwise =
      let gcCfg = cfg 
            { bcCompileFlags = "-O3 -d0 -scrutinize -specialize -inline 3"
            , bcGCStrategy = Just strat
            }
      in buildRegularModule m gcCfg

-- ============================================================
-- Implementation
-- ============================================================

buildRegularModule :: Module -> BuildConfig -> Action (Artifact 'Exe)
buildRegularModule m cfg = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  
  let allSrcs = map (projectRoot </>) (modDeps m ++ [modSrc m])
  let outPath = bcDistDir cfg </> modName m ++ "_app" <.> exe
  
  liftIO $ Dir.createDirectoryIfMissing True (bcDistDir cfg)
  
  case bcGCStrategy cfg of
    Nothing -> 
      compileAndLink allSrcs (words (bcCompileFlags cfg)) outPath
    Just strat -> 
      compileAndLinkWithGC strat allSrcs (words (bcCompileFlags cfg)) outPath

buildSpecialModule :: Module -> BuildConfig -> Action (Artifact 'Exe)
buildSpecialModule m cfg = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  
  let allSrcs = map (projectRoot </>) (modDeps m ++ [modSrc m])
  let outPath = bcDistDir cfg </> modName m ++ "_app" <.> exe
  
  liftIO $ Dir.createDirectoryIfMissing True (bcDistDir cfg)
  
  putInfo $ "[Pipeline] Building special module: " ++ modName m
  compileAndLinkSpecial allSrcs (words (bcCompileFlags cfg)) outPath

-- ============================================================
-- Standard Compile-and-Link (now with CompileInfo!)
-- ============================================================

compileAndLink :: [FilePath] -> [String] -> FilePath -> Action (Artifact 'Exe)
compileAndLink srcs flags outPath = do
  liftIO $ putStrLn $ "[Pipeline] Compiling: " ++ show srcs
  
  allDeps <- liftIO $ do
    depsList <- mapM TopLevel.extractAllDeps srcs
    return $ nub (concat depsList)
  
  liftIO $ putStrLn $ "[Pipeline] Dependencies: " ++ show allDeps
  
  -- Compile using CompileInfo (src is now tracked!)
  compileInfos <- forM srcs $ \src -> do
    let flags' = unwords flags
    Compile.compileObject src flags'
  
  -- Extract artifacts from CompileInfo (safe!)
  let objs = map Compile.ciArtifact compileInfos
  
  putInfo $ "[Pipeline] Linking " ++ show (length objs) ++ " objects"
  Link.linkWithDeps objs [] outPath

-- ============================================================
-- GC-Optimized Compile-and-Link
-- ============================================================

compileAndLinkWithGC :: GC.GCStrategyType -> [FilePath] -> [String] -> FilePath -> Action (Artifact 'Exe)
compileAndLinkWithGC strat srcs flags outPath = do
  liftIO $ putStrLn $ "[Pipeline-GC] GC strategy: " ++ show strat
  
  allDeps <- liftIO $ do
    depsList <- mapM TopLevel.extractAllDeps srcs
    return $ nub (concat depsList)
  
  putInfo $ "[Pipeline-GC] Dependencies: " ++ show allDeps
  
  -- Compile with GC optimization
  compileInfos <- forM srcs $ \src -> do
    let flags' = unwords flags
    Compile.compileObject src flags'
  
  let objs = map Compile.ciArtifact compileInfos
  
  putInfo $ "[Pipeline-GC] Building GC object with " ++ show strat
  gcObj <- GC.buildWithGCStrategy strat outPath
  
  putInfo $ "[Pipeline-GC] Linking with GC optimization"
  Link.linkWithDeps objs [] outPath

-- ============================================================
-- Special Module Compile-and-Link
-- ============================================================

compileAndLinkSpecial :: [FilePath] -> [String] -> FilePath -> Action (Artifact 'Exe)
compileAndLinkSpecial srcs flags outPath = do
  liftIO $ putStrLn $ "[Pipeline-Special] Compiling with filtered deps"
  
  allDeps <- liftIO $ do
    depsList <- mapM TopLevel.extractAllDeps srcs
    let deps = nub (concat depsList)
    return $ filter (\d -> d `elem` map (takeBaseName . dropExtension) srcs) deps
  
  liftIO $ putStrLn $ "[Pipeline-Special] Filtered to: " ++ show allDeps
  
  compileInfos <- forM srcs $ \src -> do
    let flags' = unwords flags
    Compile.compileUnit src flags'
  
  -- Convert Artifact Unit to Artifact Obj using getPath and mkObject
  let objs = map (mkObject . getPath . Compile.ciArtifact) compileInfos
  
  putInfo $ "[Pipeline-Special] Linking filtered objects"
  Link.linkWithDeps objs [] outPath

-- ============================================================
-- Helper
-- ============================================================

nub :: Eq a => [a] -> [a]
nub [] = []
nub (x:xs) = x : nub (filter (/= x) xs)
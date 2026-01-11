{- shake/Pipeline.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BlockArguments #-}

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
  , proofBuildConfig
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, when, forM, filterM)
import Control.Exception (catch, SomeException)
import Data.List (isSuffixOf, partition, nub, isPrefixOf, isInfixOf)
import qualified System.Directory as Dir
import qualified System.Process as Proc

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
  , bcProofBuildDir :: FilePath
  , bcProofDistDir :: FilePath
  , bcGCStrategy :: Maybe GC.GCStrategyType
  } deriving (Show)

defaultBuildConfig :: BuildConfig
defaultBuildConfig = BuildConfig
  { bcCompileFlags = "-O3 -d0"
  , bcBuildDir = "_build"
  , bcDistDir = "dest"
  , bcProofBuildDir = "_build_proof"
  , bcProofDistDir = "dest/proofs"
  , bcGCStrategy = Nothing
  }

withGCStrategy :: GC.GCStrategyType -> BuildConfig -> BuildConfig
withGCStrategy strat cfg = cfg { bcGCStrategy = Just strat }

-- | Switch to proof-dedicated output directories while preserving flags.
proofBuildConfig :: BuildConfig -> BuildConfig
proofBuildConfig cfg = cfg
  { bcBuildDir = bcProofBuildDir cfg
  , bcDistDir = bcProofDistDir cfg
  }

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
  let category = getCategoryFromSrc (modSrc m)
  let outDir = bcDistDir cfg </> category
  let outPath = outDir </> modName m ++ "_app" <.> exe
  
  liftIO $ do
    Dir.createDirectoryIfMissing True outDir
  
  case bcGCStrategy cfg of
    Nothing -> 
      compileAndLink cfg allSrcs (words (bcCompileFlags cfg)) outPath
    Just strat -> 
      compileAndLinkWithGC strat cfg allSrcs (words (bcCompileFlags cfg)) outPath

buildSpecialModule :: Module -> BuildConfig -> Action (Artifact 'Exe)
buildSpecialModule m cfg = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  
  let allSrcs = map (projectRoot </>) (modDeps m ++ [modSrc m])
  let category = getCategoryFromSrc (modSrc m)
  let outDir = bcDistDir cfg </> category
  let outPath = outDir </> modName m ++ "_app" <.> exe
  
  liftIO $ do
    Dir.createDirectoryIfMissing True outDir
  
  putInfo $ "[Pipeline] Building special module: " ++ modName m
  compileAndLinkSpecial allSrcs (words (bcCompileFlags cfg)) cfg outPath

-- ============================================================
-- CRITICAL FIX: Compile main files differently
-- ============================================================

getCategoryFromSrc :: FilePath -> String
getCategoryFromSrc src
  | "core/" `isInfixOf` src = "core"
  | "modules/" `isInfixOf` src = "modules"
  | "examples/" `isInfixOf` src = "examples"
  | otherwise = "other"

compileMainFile :: FilePath -> BuildConfig -> String -> Action (Compile.CompileInfo 'Obj)
compileMainFile srcPath cfg flags = do
  let baseName = takeBaseName (dropExtension srcPath)
      category = getCategoryFromSrc srcPath
      objDir = bcDistDir cfg </> category </> "obj_default"
      objPath = objDir </> baseName <.> "o"

  liftIO $ do
    Dir.createDirectoryIfMissing True objDir
    putStrLn $ "[Compile-Main] Entry point: " ++ baseName
    -- NO -unit flag, NO -J flag for main files!
    env <- liftIO Link.getChickenEnv
    let envOpts = map (uncurry AddEnv) env
    cmd_ envOpts ("csc" :: String) (["-c","-o", objPath] ++ words flags ++ [srcPath])

  return $ Compile.CompileInfo
    { Compile.ciSourceFile = srcPath
    , Compile.ciCompileFlags = flags
    , Compile.ciArtifact = mkObject objPath
    }

compileAndLink :: BuildConfig -> [FilePath] -> [String] -> FilePath -> Action (Artifact 'Exe)
compileAndLink cfg srcs flags outPath = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  liftIO $ putStrLn $ "[Pipeline] Compiling: " ++ show srcs

  allDeps <- liftIO $ do
    depsList <- mapM TopLevel.extractAllDeps srcs
    return $ nub (concat depsList)

  liftIO $ putStrLn $ "[Pipeline] Dependencies: " ++ show allDeps

  -- Remove stray SRFI .o files in local modules/dest that could shadow system units
  let modulesObjDir = projectRoot </> "modules"
      destModulesObjDir = projectRoot </> "dest" </> "modules" </> "obj_default"
  liftIO $ do
    existsM <- Dir.doesDirectoryExist modulesObjDir
    when existsM $ do
      ents <- Dir.listDirectory modulesObjDir
      forM_ ents $ \e ->
        when (takeExtension e == ".o" && "srfi-" `isPrefixOf` takeBaseName e) $
          Dir.removeFile (modulesObjDir </> e)
    existsD <- Dir.doesDirectoryExist destModulesObjDir
    when existsD $ do
      ents2 <- Dir.listDirectory destModulesObjDir
      forM_ ents2 $ \e ->
        when (takeExtension e == ".o" && "srfi-" `isPrefixOf` takeBaseName e) $
          Dir.removeFile (destModulesObjDir </> e)

  -- Pre-compile custom modules/SRFIs from dependencies
  precompiledObjs <- compileCustomDeps projectRoot allDeps

  -- Separate library files from main entry-point files
  let isMainFile src = "_main.scm" `isSuffixOf` src
      (libFiles, mainFiles) = partition (not . isMainFile) srcs

  liftIO $ putStrLn $ "[Pipeline] Library files: " ++ show libFiles
  liftIO $ putStrLn $ "[Pipeline] Main files: " ++ show mainFiles

  -- Compile library files as units (with -unit -J flags)
  libraryInfos <- forM libFiles $ \src ->
    Compile.compileObject src (unwords flags)

  -- **FIX**: Compile main files as entry points (no -unit flag)
  mainInfos <- forM mainFiles $ \src ->
    compileMainFile src cfg (unwords flags)

  let libObjs = map Compile.ciArtifact libraryInfos
      mainObjs = map Compile.ciArtifact mainInfos

  -- De-duplicate object files before linking.
  let mainBaseNames = map (takeBaseName . dropExtension) mainFiles
      libObjsFiltered = filter (\o -> takeBaseName (getPath o) `notElem` mainBaseNames) libObjs

      -- Avoid linking precompiled module objects if we already have a compiled object
      -- (prefer dest/<category>/obj_default versions over source-local .o files).
      compiledBaseNames = map (takeBaseName . dropExtension) (map getPath (libObjsFiltered ++ mainObjs))
      isSystemUnitName n = "srfi-" `isPrefixOf` n || "chicken." `isPrefixOf` n || "chicken-" `isPrefixOf` n || n == "scheme"
      extraObjsFiltered = filter (\fp -> let bn = takeBaseName fp in bn `notElem` compiledBaseNames && not (isSystemUnitName bn)) precompiledObjs

  -- When passing main source files to csc, avoid linking their precompiled .o to prevent duplicate symbols
  -- mainの.oファイルのみを渡す。他は-usesで解決させる。
  let mainObjs = case mainObjs of
                    [] -> []
                    xs -> [last xs]  -- 最後がmainの.oである前提

  putInfo $ "[Pipeline] Linking " ++ show (length mainObjs) ++ " main objects for " ++ outPath
  putInfo $ "[Pipeline] Main sources: " ++ show mainFiles
  putInfo $ "[Pipeline] Lib objects: (omitted, now resolved via -uses)"
  let passedMainSrcs = if null mainObjs then mainFiles else []
  putInfo $ "[Pipeline] Invoking Link.linkWithDeps with: mainObjs=" ++ show (length mainObjs) ++ ", mainFiles=" ++ show passedMainSrcs ++ ", deps=" ++ show allDeps

  Link.linkWithDeps mainObjs passedMainSrcs allDeps outPath

-- ============================================================
-- GC-Optimized Compile-and-Link (same fix)
-- ============================================================

compileAndLinkWithGC :: GC.GCStrategyType -> BuildConfig -> [FilePath] -> [String] -> FilePath -> Action (Artifact 'Exe)
compileAndLinkWithGC strat cfg srcs flags outPath = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  liftIO $ putStrLn $ "[Pipeline-GC] GC strategy: " ++ show strat
  
  allDeps <- liftIO $ do
    depsList <- mapM TopLevel.extractAllDeps srcs
    return $ nub (concat depsList)
  
  putInfo $ "[Pipeline-GC] Dependencies: " ++ show allDeps
  
  _ <- compileCustomDeps projectRoot allDeps
  
  -- Separate libraries and mains
  let isMainFile src = "_main.scm" `isSuffixOf` src
      (libFiles, mainFiles) = partition (not . isMainFile) srcs
  
  libraryInfos <- forM libFiles $ \src -> do
    let flags' = unwords flags
    Compile.compileObject src flags'

  let libObjs = map Compile.ciArtifact libraryInfos

  putInfo $ "[Pipeline-GC] Building GC object with " ++ show strat
  gcObj <- GC.buildWithGCStrategy strat outPath

  putInfo $ "[Pipeline-GC] Linking with GC optimization"
  -- mainFilesに対応する.oファイルがlibObjsに含まれていれば除外する
  let mainBaseNames = map (takeBaseName . dropExtension) mainFiles
      libObjsFiltered = filter (\a -> takeBaseName (getPath a) `notElem` mainBaseNames) libObjs
  Link.linkWithDeps libObjsFiltered mainFiles allDeps outPath

-- ============================================================
-- Special Module Compile-and-Link (keep existing logic, apply main fix)
-- ============================================================
 
compileAndLinkSpecial :: [FilePath] -> [String] -> BuildConfig -> FilePath -> Action (Artifact 'Exe)
compileAndLinkSpecial srcs flags cfg outPath = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  liftIO $ putStrLn $ "[Pipeline-Special] Compiling with filtered deps"
  
  allDeps <- liftIO $ do
    depsList <- mapM TopLevel.extractAllDeps srcs
    let deps = nub (concat depsList)
    return $ filter (\d -> d `elem` map (takeBaseName . dropExtension) srcs) deps
  
  liftIO $ putStrLn $ "[Pipeline-Special] Filtered to: " ++ show allDeps
  
  _ <- compileCustomDeps projectRoot allDeps
  
  -- Special modules also need the main fix
  let isMainFile src = "_main.scm" `isSuffixOf` src || "validator-main.scm" `isSuffixOf` src
      (libFiles, mainFiles) = partition (not . isMainFile) srcs
  
  libraryInfos <- forM libFiles $ \src -> do
    let flags' = unwords flags
    Compile.compileObject src flags'

  -- Compile main files as entry points too
  mainInfos <- forM mainFiles $ \src ->
    compileMainFile src cfg (unwords flags)

  let libObjs = map Compile.ciArtifact libraryInfos
      mainObjs = map Compile.ciArtifact mainInfos

  putInfo $ "[Pipeline-Special] Linking filtered objects"
  -- mainFilesに対応する.oファイルがlibObjsに含まれていれば除外する
  let mainBaseNames = map (takeBaseName . dropExtension) mainFiles
      libObjsFiltered = filter (\a -> takeBaseName (getPath a) `notElem` mainBaseNames) libObjs
  Link.linkWithDeps libObjsFiltered mainFiles allDeps outPath

-- ============================================================
-- Helper
-- ============================================================

-- カスタムモジュールを事前コンパイル (-J) して import 可能にする
compileCustomDeps :: FilePath -> [String] -> Action [FilePath]
compileCustomDeps projectRoot deps = do
  putInfo $ "[Pipeline] Pre-compiling custom deps: " ++ show deps
  let isSystemUnitName n = "srfi-" `isPrefixOf` n || "chicken." `isPrefixOf` n || "chicken-" `isPrefixOf` n || n == "scheme"
  let userDeps = filter (not . isSystemUnitName) deps

  compiled <- forM userDeps $ \d -> do
    -- search for a corresponding <d>.scm under projectRoot (core, modules, examples)
    found <- liftIO $ findModuleInDir projectRoot d
    case found of
      (src:_) -> do
        putInfo $ "[Pipeline] Compiling unit for " ++ d ++ " from " ++ src
        ci <- Compile.compileUnit src ""
        return [getPath (Compile.ciArtifact ci)]
      [] -> do
        putInfo $ "[Pipeline] Could not find source for custom dep " ++ d ++ " (skipping)"
        return []
  return $ concat compiled

-- | Recursively search for a file named <modname>.scm under the given directory
findModuleInDir :: FilePath -> String -> IO [FilePath]
findModuleInDir root modName = do
  exists <- Dir.doesDirectoryExist root
  if not exists
    then return []
    else go root
  where
    go dir = do
      entries <- fmap (filter (`notElem` [".",".."])) (Dir.listDirectory dir)
      paths <- forM entries $ \e -> do
        let p = dir </> e
        isDir <- Dir.doesDirectoryExist p
        if isDir
          then go p
          else if takeBaseName p == modName && takeExtension p == ".scm"
                 then return [p]
                 else return []
      return (concat paths)
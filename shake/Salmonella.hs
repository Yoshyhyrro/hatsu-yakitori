{- shake/Salmonella.hs-}
{-# LANGUAGE OverloadedStrings #-}

module Salmonella
  ( -- * Test Configuration
    TestConfig(..)
  , defaultTestConfig
    
    -- * Test Results
  , TestResult(..)
    
    -- * Test Execution (complete black box)
  , runIsolatedModuleTests
  ) where

import Development.Shake
import Development.Shake.FilePath
import System.Process (readCreateProcessWithExitCode, proc, CreateProcess(..))
import System.Exit (ExitCode(..))
import Control.Monad (forM, unless, when)
import qualified System.Environment as Env
import Data.List (nubBy, isInfixOf)
import qualified System.Directory as Dir

-- ============================================================
-- Configuration
-- ============================================================

data TestConfig = TestConfig
    { tcEnv :: [(String, String)]
    , tcCompileFlags :: [String]
    , tcBuildDir :: FilePath
    } deriving (Show, Eq)

defaultTestConfig :: TestConfig
defaultTestConfig = TestConfig
    { tcEnv = []
    , tcCompileFlags = ["-O3", "-d0"]
    , tcBuildDir = "_build"
    }

-- ============================================================
-- Results
-- ============================================================

data TestResult = TestResult
    { trName :: String
    , trPassed :: Bool
    , trStdout :: String
    , trStderr :: String
    } deriving (Show)

-- ============================================================
-- Internal: Environment Merging
-- ============================================================

-- | Merge custom and system environment (custom takes precedence)
mergeEnv :: [(String, String)] -> [(String, String)] -> [(String, String)]
mergeEnv custom system = nubBy (\(k1, _) (k2, _) -> k1 == k2) (custom ++ system)

-- ============================================================
-- Internal: Module Analysis
-- ============================================================

-- | Check if file has module definition
hasModuleDefinition :: FilePath -> IO Bool
hasModuleDefinition srcFile = do
    exists <- Dir.doesFileExist srcFile
    if not exists
        then return False
        else do
            content <- readFile srcFile
            return $ "(module" `isInfixOf` content

-- ============================================================
-- Main Entry Point (Black Box)
-- ============================================================

-- | Run isolated module tests - handles ALL details internally
--
-- This function is self-contained:
--  1. Creates build directories
--  2. Compiles dependencies with proper units
--  3. Handles import libraries
--  4. Links test binary
--  5. Executes and captures results
--
-- The caller just provides config and paths, then receives results.
-- NO further intervention needed.
runIsolatedModuleTests 
    :: TestConfig 
    -> String          -- ^ Module name
    -> FilePath        -- ^ Module source
    -> FilePath        -- ^ Test source
    -> [FilePath]      -- ^ Dependency sources
    -> Action TestResult
runIsolatedModuleTests config modName moduleSource testSource deps = do
    putInfo $ "[Salmonella] Testing module: " ++ modName
    
    let buildDir = tcBuildDir config
    let testsDir = buildDir </> "tests"
    let testBin = testsDir </> "test_" ++ modName <.> exe
    
    -- Setup: Create directories
    liftIO $ do
        Dir.createDirectoryIfMissing True buildDir
        Dir.createDirectoryIfMissing True testsDir
    
    putInfo "[Salmonella] Phase 1: Compiling dependencies"
    
    -- Phase 1: Compile all dependencies
    depObjs <- forM deps $ \src -> do
        let unitName = takeBaseName (dropExtension src)
        let objName = buildDir </> unitName <.> "o"
        
        liftIO $ Dir.createDirectoryIfMissing True (takeDirectory objName)
        
        hasMod <- liftIO $ hasModuleDefinition src
        putInfo $ "  Compiling " ++ unitName ++ 
                  if hasMod then " (has module)" else " (regular)"
        
        -- Determine flags based on whether it's a module
        let unitFlags = ["-unit", unitName]
        let importLibFlags = if hasMod 
                             then ["-emit-import-library", unitName]
                             else []
        
        -- Compile with standard flags
        need [src]
        cmd_ (["csc"] ++ tcCompileFlags config ++ 
              ["-c", src, "-o", objName] ++ 
              unitFlags ++ 
              importLibFlags)
        
        -- Handle generated import library
        when hasMod $ do
            let genImport = unitName <.> "import.scm"
            genExists <- liftIO $ Dir.doesFileExist genImport
            if genExists
                then do
                    liftIO $ Dir.copyFile genImport (buildDir </> genImport)
                    liftIO $ Dir.removeFile genImport
                else do
                    buildImportExists <- liftIO $ Dir.doesFileExist (buildDir </> genImport)
                    unless buildImportExists $
                        putInfo $ "  [Warning] Expected import library: " ++ genImport
        
        return objName
    
    -- Mark all dependencies as needed
    need depObjs
    
    putInfo "[Salmonella] Phase 2: Linking test binary"
    
    -- Phase 2: Link test binary
    need [testSource]
    
    let linkArgs = tcCompileFlags config ++ 
                   ["-o", testBin] ++ 
                   [testSource] ++ 
                   depObjs
    
    cmd_ (["csc"] ++ linkArgs)
    
    putInfo "[Salmonella] Phase 3: Running tests"
    
    -- Phase 3: Execute test binary
    sysEnv <- liftIO Env.getEnvironment
    let runEnv = mergeEnv (tcEnv config) sysEnv
    let cp = (proc testBin []) { env = Just runEnv }
    
    (exitCode, stdout, stderr) <- liftIO $ readCreateProcessWithExitCode cp ""
    
    let passed = case exitCode of
            ExitSuccess -> True
            _           -> False
    
    -- Report results
    if passed
        then putInfo $ "  ✓ " ++ modName ++ " PASSED"
        else do
            putInfo $ "  ✗ " ++ modName ++ " FAILED"
            putInfo "=== Stdout ==="
            putInfo stdout
            putInfo "=== Stderr ==="
            putInfo stderr
    
    return $ TestResult modName passed stdout stderr
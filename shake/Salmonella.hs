{- Salmonella.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Salmonella where

import Development.Shake
import Development.Shake.FilePath
import System.Process (readCreateProcessWithExitCode, proc, CreateProcess(..))
import System.Exit (ExitCode(..))
import Control.Monad (forM, unless, filterM)
import qualified System.Environment as Env
import Data.List (nubBy, isInfixOf)
import qualified System.Directory as Dir
import qualified System.IO as IO
import Control.Monad (forM, unless, filterM, when)

-- | テスト設定
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

data TestResult = TestResult
    { trName   :: String
    , trPassed :: Bool
    , trStdout :: String
    , trStderr :: String
    } deriving (Show)

mergeEnv :: [(String, String)] -> [(String, String)] -> [(String, String)]
mergeEnv custom system = nubBy (\(k1, _) (k2, _) -> k1 == k2) (custom ++ system)

-- | Check if a Scheme file has a proper module definition
hasModuleDefinition :: FilePath -> IO Bool
hasModuleDefinition srcFile = do
    exists <- Dir.doesFileExist srcFile  
    if not exists
        then return False
        else do
            content <- readFile srcFile
            -- Check for (module ...) at top level
            return $ ("(module" `isInfixOf` content)

-- | モジュールテストを独立して構築・実行する
runIsolatedModuleTests :: TestConfig -> String -> FilePath -> FilePath -> [FilePath] -> Action TestResult
runIsolatedModuleTests config modName moduleSource testSource deps = do
    putInfo $ "Building and running tests for: " ++ modName
    
    let buildDir = tcBuildDir config
    let testsDir = buildDir </> "tests"
    
    -- 1. Move definitions to the top so they are in scope
    let testBin = testsDir </> "test_" ++ modName <.> exe
    let includeDirs = nubBy (\a b -> a == b) 
                           (["core", takeDirectory moduleSource, "."] ++ map takeDirectory deps)
    let includeFlags = concatMap (\d -> ["-I", d]) includeDirs

    liftIO $ do
        Dir.createDirectoryIfMissing True buildDir
        Dir.createDirectoryIfMissing True testsDir
    
    -- 2. Compile dependencies and collect object file paths
    depObjs <- forM deps $ \src -> do
        let unitName = takeBaseName src
        let objName = buildDir </> unitName <.> "o"
        liftIO $ Dir.createDirectoryIfMissing True (takeDirectory objName)
        
        hasMod <- liftIO $ hasModuleDefinition src
        putInfo $ "  Compiling " ++ src ++ if hasMod then " (module)" else " (regular)"
        
        -- 修正ポイント: 依存関係は(moduleの有無に関わらず)常にユニットとして扱う
        let unitFlags = [ "-unit", unitName ]
        let importLibFlags = if hasMod 
                             then [ "-emit-import-library", unitName ]
                             else []

        -- 依存ファイルをオブジェクトファイルとしてコンパイル
        cmd_ ("csc" :: String) 
            (tcCompileFlags config 
            ++ ["-I", buildDir] 
            ++ includeFlags 
            ++ ["-c", src, "-o", objName] 
            ++ unitFlags        -- これを常に追加
            ++ importLibFlags)
        
        when hasMod $ do
            let genImport = unitName <.> "import.scm"
            importExists <- liftIO $ Dir.doesFileExist genImport
            if importExists 
                then do
                    liftIO $ Dir.copyFile genImport (buildDir </> genImport)
                    liftIO $ Dir.removeFile genImport
                else do
                    buildImportExists <- liftIO $ Dir.doesFileExist (buildDir </> genImport)
                    unless buildImportExists $
                        putInfo $ "Warning: Expected import library " ++ genImport ++ " was not found."

        return objName
    
    -- 3. Mark dependencies as needed
    need depObjs
    
    -- 4. Now that depObjs is fully built and in scope, link the final binary
    putInfo $ "Linking test binary: " ++ testBin
    cmd_ ("csc" :: String) 
         (tcCompileFlags config 
          ++ ["-I", buildDir] 
          ++ includeFlags 
          ++ ["-o", testBin]
          ++ [testSource]    -- The test runner source
          ++ depObjs)        -- The compiled objects
    
    -- 5. Run the resulting binary
    runModuleTests config modName testBin

-- | 既存のテスト実行（バイナリのみ）
runModuleTests :: TestConfig -> String -> FilePath -> Action TestResult
runModuleTests config modName bin = do
    putInfo $ "Running tests for: " ++ modName
    
    sysEnv <- liftIO Env.getEnvironment
    let runEnv = mergeEnv (tcEnv config) sysEnv
    let cp = (proc bin []) { env = Just runEnv }
    
    (exitCode, out, err) <- liftIO $ readCreateProcessWithExitCode cp ""
    
    let passed = case exitCode of
            ExitSuccess -> True
            _           -> False
            
    if passed
        then putInfo $ "  ✓ " ++ modName ++ " PASSED"
        else do
            putInfo $ "  ✗ " ++ modName ++ " FAILED"
            putInfo "=== Stdout ==="
            putInfo out
            putInfo "=== Stderr ==="
            putInfo err
            
    return $ TestResult modName passed out err
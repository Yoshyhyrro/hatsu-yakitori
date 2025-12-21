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
    
    -- 必要なディレクトリを作成
    let buildDir = tcBuildDir config
    let testsDir = buildDir </> "tests"
    liftIO $ do
        Dir.createDirectoryIfMissing True buildDir
        Dir.createDirectoryIfMissing True testsDir
    
    -- 依存関係をコンパイル（モジュール検出をする）
    depObjs <- forM deps $ \src -> do
        let objName = buildDir </> takeBaseName src <.> "o"
        let unitName = takeBaseName src
        liftIO $ Dir.createDirectoryIfMissing True (takeDirectory objName)
        
        -- Check if file has module definition
        hasMod <- liftIO $ hasModuleDefinition src
        
        putInfo $ "  Compiling " ++ src ++ if hasMod then " (module)" else " (regular)"
        
        -- Only use -emit-import-library and -unit for files with module definitions
        let importLibFlags = if hasMod 
                             then [ "-unit", unitName
                                  , "-emit-import-library", unitName -- ここをパスなしにする
                                  ]
                             else []

        -- 1. コンパイル実行（カレントディレクトリに .import.scm が出る可能性がある）
        cmd_ ("csc" :: String) 
             ([ "-c", "-I", buildDir ] 
              ++ importLibFlags 
              ++ tcCompileFlags config 
              ++ [ src, "-o", objName ])
        
        -- 2. もしモジュールなら、生成された .import.scm を buildDir へ手動で移動
        when hasMod $ do
            let genImport = unitName <.> "import.scm"
            importExists <- liftIO $ Dir.doesFileExist genImport
            if importExists 
                then do
                    -- _build/ に移動（すでにあったら上書き）
                    liftIO $ Dir.copyFile genImport (buildDir </> genImport)
                    liftIO $ Dir.removeFile genImport
                else do
                    -- すでに _build/ 内に生成されているか確認（cscのバージョンによる挙動差対策）
                    buildImportExists <- liftIO $ Dir.doesFileExist (buildDir </> genImport)
                    unless buildImportExists $
                        putInfo $ "Warning: Expected import library " ++ genImport ++ " was not found."

        return objName
    
    -- 依存オブジェクトをビルド済みにマーク（キャッシュ用）
    need depObjs
    
    -- include ディレクトリを用意（重複を除去）
    let includeDirs = nubBy (\a b -> a == b) 
                           (["core", takeDirectory moduleSource, "."] ++ map takeDirectory deps)
    let includeFlags = concatMap (\d -> ["-I", d]) includeDirs
    
    -- テストバイナリを作成
    let testBin = testsDir </> "test_" ++ modName <.> exe
    
    putInfo $ "Linking test binary: " ++ testBin
    cmd_ ("csc" :: String) 
         (tcCompileFlags config 
          ++ ["-I", buildDir] 
          ++ includeFlags 
          ++ ["-o", testBin, testSource] 
          ++ deps)
    
    -- テスト実行
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
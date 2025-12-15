{- Salmonella.hs -}
module Salmonella where

import Development.Shake
import Development.Shake.FilePath
import System.Process (readCreateProcessWithExitCode, proc, CreateProcess(..))
import System.Exit (ExitCode(..))
import Control.Monad (forM, unless)
import qualified System.Environment as Env
import Data.List (nubBy)
import System.Directory (createDirectoryIfMissing)  -- 追加したインポート

-- | テスト設定
data TestConfig = TestConfig
    { tcEnv :: [(String, String)] 
    , tcCompileFlags :: [String]  -- Changed from String to [String]
    , tcBuildDir :: FilePath
    } deriving (Show, Eq)

defaultTestConfig :: TestConfig
defaultTestConfig = TestConfig 
    { tcEnv = []
    , tcCompileFlags = ["-O3", "-d0"]  -- Changed to list
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

-- | モジュールテストを独立して構築・実行する
runIsolatedModuleTests :: TestConfig -> String -> FilePath -> FilePath -> [FilePath] -> Action TestResult
runIsolatedModuleTests config modName moduleSource testSource deps = do
    putInfo $ "Building and running tests for: " ++ modName
    
    -- 必要なディレクトリを作成
    let buildDir = tcBuildDir config
    let testsDir = buildDir </> "tests"
    liftIO $ do
        createDirectoryIfMissing True buildDir
        createDirectoryIfMissing True testsDir
    
    -- 依存関係をコンパイル
    depObjs <- mapM (\src -> do
        let objName = buildDir </> takeBaseName src <.> "o"
        let unitName = takeBaseName src
        -- 依存関係ファイルがあるディレクトリも確認
        liftIO $ createDirectoryIfMissing True (takeDirectory objName)
        cmd_ "csc" (["-c"] ++ tcCompileFlags config ++ ["-unit", unitName, src, "-o", objName])
        return objName
        ) deps
    
    -- 依存オブジェクトをビルドしておく（キャッシュ用）
    need depObjs
    -- include ディレクトリを用意（重複を除去）
    let includeDirs = nubBy (\a b -> a == b) (["core", takeDirectory moduleSource, "."] ++ map takeDirectory deps)
    let includeFlags = concatMap (\d -> ["-I", d]) includeDirs
    -- テストバイナリを作成：テストソースと依存ソースを直接渡してコンパイラが全ての定義を見つけられるようにする
    let testBin = testsDir </> "test_" ++ modName <.> exe
    cmd_ "csc" (tcCompileFlags config ++ includeFlags ++ ["-o", testBin, testSource] ++ deps)
    
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
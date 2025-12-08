module Salmonella where

import Development.Shake
import System.Process (readCreateProcessWithExitCode, proc, CreateProcess(..))
import System.Exit (ExitCode(..))
import Control.Monad (forM, unless)
import qualified System.Environment as Env
import Data.List (nubBy)

-- | テスト設定
data TestConfig = TestConfig
    { tcEnv :: [(String, String)] -- テスト実行時の追加環境変数
    } deriving (Show, Eq)

defaultTestConfig :: TestConfig
defaultTestConfig = TestConfig
    { tcEnv = []
    }

data TestResult = TestResult
    { trName   :: String
    , trPassed :: Bool
    , trStdout :: String
    , trStderr :: String
    } deriving (Show)

-- | 環境変数をマージする (custom が system より優先)
mergeEnv :: [(String, String)] -> [(String, String)] -> [(String, String)]
mergeEnv custom system = nubBy (\(k1, _) (k2, _) -> k1 == k2) (custom ++ system)

-- | 単一モジュールのテストを実行
runModuleTests :: TestConfig -> String -> FilePath -> [FilePath] -> Action TestResult
runModuleTests config modName bin _deps = do
    putInfo $ "Running tests for: " ++ modName
    
    -- 現在の環境変数を取得して、設定された環境変数とマージ
    sysEnv <- liftIO Env.getEnvironment
    let runEnv = mergeEnv (tcEnv config) sysEnv
    
    -- プロセス作成 (env を指定すると完全に置き換わるため、マージが必要)
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

-- | 複数のテストを一括実行
runAllTests :: TestConfig -> [(String, FilePath, [FilePath])] -> Action [TestResult]
runAllTests config tests = do
    results <- forM tests $ \(name, bin, deps) -> do
        runModuleTests config name bin deps
    
    let failures = filter (not . trPassed) results
    unless (null failures) $ do
        fail $ "Tests failed: " ++ unwords (map trName failures)
        
    return results
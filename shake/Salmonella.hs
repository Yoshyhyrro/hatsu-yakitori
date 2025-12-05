{- shake/Salmonella.hs -}
{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving #-}

module Salmonella
    ( -- * Test execution
      runModuleTests
    , runAllTests
    , TestResult(..)
    , TestReport(..)
    
    -- * Configuration
    , TestConfig(..)
    , defaultTestConfig
    ) where

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Development.Shake.Util
import Control.Monad (forM, forM_, when)
import Control.Monad.IO.Class (liftIO)
import Data.List (intercalate)
import Data.Time.Clock (getCurrentTime, diffUTCTime, NominalDiffTime)
import Data.Time.Format (formatTime, defaultTimeLocale)
import System.Exit (ExitCode(..))
import System.Directory (createDirectoryIfMissing)
import Text.Printf (printf)

-- ============================================================================
-- Types
-- ============================================================================

data TestConfig = TestConfig
    { tcLogDir      :: FilePath
    , tcTimeout     :: Maybe Int  -- タイムアウト(秒)
    , tcVerbose     :: Bool
    , tcEnvironment :: [(String, String)]  -- 追加の環境変数
    } deriving (Show, Eq)

defaultTestConfig :: TestConfig
defaultTestConfig = TestConfig
    { tcLogDir = "test-logs"
    , tcTimeout = Just 300  -- 5分
    , tcVerbose = False
    , tcEnvironment = []
    }

data TestResult = TestResult
    { trModule    :: String
    , trPassed    :: Bool
    , trDuration  :: Double  -- 秒
    , trOutput    :: String
    , trErrors    :: [String]
    } deriving (Show, Eq)

data TestReport = TestReport
    { reportTimestamp :: String
    , reportResults   :: [TestResult]
    , reportTotal     :: Int
    , reportPassed    :: Int
    , reportFailed    :: Int
    } deriving (Show, Eq)

-- ============================================================================
-- Test Execution
-- ============================================================================

-- | 単一モジュールのテストを実行
runModuleTests :: TestConfig -> String -> FilePath -> [FilePath] -> Action TestResult
runModuleTests config modName testBinary deps = do
    putInfo $ "Running tests for: " ++ modName
    
    -- ログディレクトリの作成
    liftIO $ createDirectoryIfMissing True (tcLogDir config)
    
    let logFile = tcLogDir config </> modName <.> "log"
    
    -- 依存関係の確認
    need (testBinary : deps)
    
    -- テスト実行
    startTime <- liftIO getCurrentTime
    
    let envVars = defaultEnvVars ++ tcEnvironment config
        cmdOpts = map (\(k, v) -> AddEnv k v) envVars ++ [Shell]
    
    -- テスト実行とエラーハンドリング
    -- cmd関数の正しい使用法: Stdout, Stderr, ExitCodeを明示的に要求
    (Exit exitCode, Stdout stdout', Stderr stderr') <- cmd cmdOpts testBinary
    
    endTime <- liftIO getCurrentTime
    let duration = realToFrac $ diffUTCTime endTime startTime :: Double
    
    -- 結果の判定
    let passed = case exitCode of
                   ExitSuccess -> True
                   _           -> False
        errors = if passed then [] else lines stderr'
        output = stdout'
    
    -- ログファイルに書き込み
    liftIO $ writeFile logFile $ unlines
        [ "=== Test Report for " ++ modName ++ " ==="
        , "Status: " ++ if passed then "PASSED" else "FAILED"
        , "Duration: " ++ printf "%.2f" duration ++ "s"
        , ""
        , "=== Output ==="
        , output
        , ""
        , "=== Errors ==="
        , unlines errors
        ]
    
    when passed $ 
        putInfo $ "✓ Tests passed for " ++ modName ++ printf " (%.2fs)" duration
    
    when (not passed) $
        putInfo $ "✗ Tests FAILED for " ++ modName
    
    return TestResult
        { trModule = modName
        , trPassed = passed
        , trDuration = duration
        , trOutput = output
        , trErrors = errors
        }

-- | 全モジュールのテストを実行
runAllTests :: TestConfig -> [(String, FilePath, [FilePath])] -> Action TestReport
runAllTests config modules = do
    timestamp <- liftIO $ do
        t <- getCurrentTime
        return $ formatTime defaultTimeLocale "%Y-%m-%d %H:%M:%S" t
    
    putInfo "=== Running all module tests ==="
    putInfo ""
    
    results <- forM modules $ \(modName, testBin, deps) -> do
        result <- runModuleTests config modName testBin deps
        putInfo ""
        return result
    
    let total = length results
        passed = length $ filter trPassed results
        failed = total - passed
    
    -- サマリーの表示
    putInfo "=== Test Summary ==="
    putInfo $ "Total:  " ++ show total
    putInfo $ "Passed: " ++ show passed
    putInfo $ "Failed: " ++ show failed
    putInfo ""
    
    -- 失敗したテストの詳細
    when (failed > 0) $ do
        putInfo "Failed tests:"
        forM_ (filter (not . trPassed) results) $ \result -> do
            putInfo $ "  ✗ " ++ trModule result
            forM_ (take 3 $ trErrors result) $ \err ->
                putInfo $ "      " ++ err
    
    -- レポートファイルの作成
    let reportFile = tcLogDir config </> "test-report.txt"
    liftIO $ writeFile reportFile $ formatReport TestReport
        { reportTimestamp = timestamp
        , reportResults = results
        , reportTotal = total
        , reportPassed = passed
        , reportFailed = failed
        }
    
    putInfo $ "Report saved to: " ++ reportFile
    
    -- 失敗があればエラー
    when (failed > 0) $ 
        fail $ show failed ++ " test(s) failed"
    
    return TestReport
        { reportTimestamp = timestamp
        , reportResults = results
        , reportTotal = total
        , reportPassed = passed
        , reportFailed = failed
        }

-- ============================================================================
-- Utilities
-- ============================================================================

-- | デフォルトの環境変数
defaultEnvVars :: [(String, String)]
defaultEnvVars =
    [ ("CHICKEN_INCLUDE_PATH", intercalate ":" ["core", "dist", ".", "_build"])
    , ("CHICKEN_REPOSITORY_PATH", intercalate ":" ["dist", "~/.chicken", "/usr/local/lib/chicken"])
    , ("CHICKEN_INSTALL_REPOSITORY", "dist")
    , ("LD_LIBRARY_PATH", intercalate ":" ["dist", "/usr/local/lib"])
    , ("C_INCLUDE_PATH", intercalate ":" ["/usr/include", "core"])
    ]

-- | レポートのフォーマット
formatReport :: TestReport -> String
formatReport report = unlines
    [ "=== Test Report ==="
    , "Timestamp: " ++ reportTimestamp report
    , ""
    , "Summary:"
    , "  Total:  " ++ show (reportTotal report)
    , "  Passed: " ++ show (reportPassed report)
    , "  Failed: " ++ show (reportFailed report)
    , ""
    , "Results:"
    , unlines $ map formatResult (reportResults report)
    ]
  where
    formatResult r = unlines
        [ "  " ++ trModule r ++ ": " ++ status r
        , "    Duration: " ++ printf "%.2f" (trDuration r) ++ "s"
        ]
    status r = if trPassed r then "PASSED ✓" else "FAILED ✗"
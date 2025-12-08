{-# LANGUAGE OverloadedStrings #-}

module Salmonella
  ( runModuleTests
  , runAllTests
  , TestConfig(..)
  , defaultTestConfig
  , TestResult(..)
  , TestReport(..)
  ) where

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Data.Time.Clock
import Data.Time.Format (formatTime, defaultTimeLocale)
import System.Directory (createDirectoryIfMissing)
import System.Exit (ExitCode(..))
import Control.Monad (when, forM, forM_)
import Text.Printf (printf)

-- ============================================================================
-- Configuration & Types
-- ============================================================================

data TestConfig = TestConfig
  { tcLogDir  :: FilePath
  , tcTimeout :: Maybe Int
  , tcEnv     :: [(String, String)]
  , tcVerbose :: Bool  -- 追加: 失敗時に詳細を表示するかどうか
  }

defaultTestConfig :: TestConfig
defaultTestConfig = TestConfig
  { tcLogDir  = "test-logs"
  , tcTimeout = Just 300
  , tcEnv     = defaultEnvVars
  , tcVerbose = False
  }

data TestResult = TestResult
  { trModule   :: String
  , trPassed   :: Bool
  , trDuration :: Double
  , trStdout   :: String
  , trStderr   :: String
  } deriving (Show, Eq)

data TestReport = TestReport
  { reportTime   :: String
  , reportResult :: [TestResult]
  } deriving (Show, Eq)

-- ============================================================================
-- Test Execution
-- ============================================================================

runModuleTests
  :: TestConfig -> String -> FilePath -> [FilePath]
  -> Action TestResult
runModuleTests cfg name bin deps = do
  -- 1. 依存関係の解決とディレクトリ作成
  need (bin : deps)
  liftIO $ createDirectoryIfMissing True (tcLogDir cfg)
  
  putInfo $ "Running tests for: " ++ name

  -- 2. 計測と実行
  start <- liftIO getCurrentTime
  
  -- AddEnvを使うことで既存の環境変数を維持しつつ追加・上書きします
  (Exit code, Stdout out, Stderr err) <-
    cmd (map (uncurry AddEnv) (tcEnv cfg)) (Cwd ".") bin

  end <- liftIO getCurrentTime

  -- 3. 結果の集計
  let passed = code == ExitSuccess
      dur    = realToFrac (diffUTCTime end start) :: Double
      logFile = tcLogDir cfg </> name <.> "log"

  -- 4. ログファイルへの書き出し (最初のコードの良い点を取り込み)
  let logContent = unlines
        [ "=== Test Report for " ++ name ++ " ==="
        , "Status: " ++ if passed then "PASSED" else "FAILED"
        , "Duration: " ++ printf "%.2fs" dur
        , ""
        , "=== Stdout ==="
        , out
        , "=== Stderr ==="
        , err
        ]
  liftIO $ writeFile logFile logContent

  -- 5. コンソールへのフィードバック
  if passed
    then putInfo $ printf "  ✓ %s passed (%.2fs)" name dur
    else do
      putInfo $ printf "  ✗ %s FAILED" name
      -- verboseならエラーの冒頭を表示
      when (tcVerbose cfg) $
          putInfo $ unlines $ take 5 $ lines err

  pure (TestResult name passed dur out err)

runAllTests
  :: TestConfig -> [(String, FilePath, [FilePath])]
  -> Action TestReport
runAllTests cfg modules = do
  putInfo "=== Starting Test Suite ==="
  
  -- 各モジュールのテスト実行
  results <- forM modules $ \(m, b, d) -> 
    runModuleTests cfg m b d

  timeStr <- liftIO $ formatTime defaultTimeLocale "%Y-%m-%d %H:%M:%S" <$> getCurrentTime
  
  -- サマリーの計算
  let total  = length results
      passed = length $ filter trPassed results
      failed = total - passed

  putInfo ""
  putInfo "=== Test Summary ==="
  putInfo $ printf "Total:  %d" total
  putInfo $ printf "Passed: %d" passed
  putInfo $ printf "Failed: %d" failed

  -- 失敗があればビルド自体を失敗させる (重要)
  when (failed > 0) $ do
    putInfo "Failed modules:"
    forM_ (filter (not . trPassed) results) $ \r ->
        putInfo $ "  - " ++ trModule r
    fail $ show failed ++ " test(s) failed."

  pure (TestReport timeStr results)

-- ============================================================================
-- Default Environment
-- ============================================================================

defaultEnvVars :: [(String, String)]
defaultEnvVars =
  [ ("CHICKEN_INCLUDE_PATH", "core:dist:.:_build")
  -- ~ (チルダ) はシェル展開されないことがあるため、絶対パスか相対パスが安全ですが
  -- 環境変数展開はShakeのcmdがある程度面倒を見てくれる場合もあります。
  -- トラブルを避けるなら $HOME を取得して展開するロジックを入れるのがベストです。
  , ("CHICKEN_REPOSITORY_PATH", "dist:${HOME}/.chicken:/usr/local/lib/chicken")
  , ("CHICKEN_INSTALL_REPOSITORY", "dist")
  ]
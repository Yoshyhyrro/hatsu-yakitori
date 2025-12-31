{- shake/Clean.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Clean
  ( -- * High-level cleanup operations
    cleanAll
  , cleanBuild
  , cleanTests
  , cleanArtifacts
  , cleanCache
  
    -- * Directory management
  , CleanTarget(..)
  , cleanTargets
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (when)
import qualified System.Directory as Dir
import System.FilePath ((</>))

-- | クリーニング対象を表す列挙型
data CleanTarget
    = BuildDir        -- ^ _build ディレクトリ
    | DistDir         -- ^ dist ディレクトリ (コンパイル結果)
    | ProofBuildDir   -- ^ _build_proof ディレクトリ (証明用ビルド)
    | ProofDistDir    -- ^ dist-proof ディレクトリ (証明用成果物)
    | TestLogsDir     -- ^ test-logs ディレクトリ
    | CacheDir        -- ^ キャッシュディレクトリ
    deriving (Show, Eq)

-- | クリーニング対象ディレクトリのマッピング
targetPath :: CleanTarget -> FilePath
targetPath BuildDir    = "_build"
targetPath DistDir     = "dist"
targetPath ProofBuildDir = "_build_proof"
targetPath ProofDistDir  = "dist-proof"
targetPath TestLogsDir = "test-logs"
targetPath CacheDir    = ".salmonella-cache"

-- ====================================================================
--  個別クリーニング関数
-- ====================================================================

-- | ビルド成果物をクリーニング (_build, dist)
cleanBuild :: Action ()
cleanBuild = do
    putInfo "Cleaning build artifacts..."
    removeFilesAfter "_build" ["//*"]
    removeFilesAfter "_build_proof" ["//*"]
    removeFilesAfter "dist" ["//*"]
    removeFilesAfter "dist-proof" ["//*"]
    putInfo "✓ Build artifacts cleaned"

-- | テスト関連をクリーニング (test-logs)
cleanTests :: Action ()
cleanTests = do
    putInfo "Cleaning test artifacts..."
    removeFilesAfter "test-logs" ["//*"]
    putInfo "✓ Test artifacts cleaned"

-- | コンパイル成果物のみクリーニング (dist)
cleanArtifacts :: Action ()
cleanArtifacts = do
    putInfo "Cleaning compiled artifacts..."
    removeFilesAfter "dist" ["//*"]
    removeFilesAfter "dist-proof" ["//*"]
    putInfo "✓ Compiled artifacts cleaned"

-- | キャッシュをクリーニング
cleanCache :: Action ()
cleanCache = do
    putInfo "Cleaning cache..."
    let cachePath = targetPath CacheDir
    exists <- liftIO $ Dir.doesDirectoryExist cachePath
    when exists $ do
        removeFilesAfter cachePath ["//*"]
    putInfo "✓ Cache cleaned"

-- ====================================================================
--  統合クリーニング
-- ====================================================================

-- | 全てをクリーニング
cleanAll :: Action ()
cleanAll = do
    putInfo "=== Cleaning all build artifacts ==="
    cleanBuild
    cleanTests
    cleanCache
    putInfo "=== Cleanup complete ==="

-- | 指定されたターゲットをクリーニング
cleanTargets :: [CleanTarget] -> Action ()
cleanTargets targets = do
    putInfo $ "Cleaning targets: " ++ show targets
    mapM_ cleanTarget targets

  where
    cleanTarget BuildDir = do
        putInfo "Cleaning _build..."
        removeFilesAfter "_build" ["//*"]
        removeFilesAfter "_build_proof" ["//*"]

    cleanTarget DistDir = do
        putInfo "Cleaning dist..."
        removeFilesAfter "dist" ["//*"]

    cleanTarget ProofBuildDir = do
        putInfo "Cleaning _build_proof..."
        removeFilesAfter "_build_proof" ["//*"]

    cleanTarget ProofDistDir = do
        putInfo "Cleaning dist-proof..."
        removeFilesAfter "dist-proof" ["//*"]

    cleanTarget TestLogsDir = do
        putInfo "Cleaning test-logs..."
        removeFilesAfter "test-logs" ["//*"]

    cleanTarget CacheDir = do
        putInfo "Cleaning cache..."
        let cachePath = targetPath CacheDir
        exists <- liftIO $ Dir.doesDirectoryExist cachePath
        when exists $ removeFilesAfter cachePath ["//*"]
    
        putInfo "✓ Cleanup complete"


-- ====================================================================
--  ディレクトリ確認・初期化
-- ====================================================================

-- | ビルド用ディレクトリが存在するかを確認
ensureBuildDirs :: IO ()
ensureBuildDirs = do
    Dir.createDirectoryIfMissing True "_build"
    Dir.createDirectoryIfMissing True "dist"
    Dir.createDirectoryIfMissing True "test-logs"

-- | Salmonella用キャッシュディレクトリを初期化
initializeSalmonellaCache :: IO ()
initializeSalmonellaCache = do
    let cachePath = targetPath CacheDir
    Dir.createDirectoryIfMissing True cachePath
#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath --package process

{- Shake.hs -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, when, unless)  -- unless を追加
import qualified System.Directory as Dir

-- 自作モジュールのインポート
import Chicken
import Rules
import qualified Salmonella

-- モジュール定義
data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath] -- 依存するソースファイル
    } deriving (Show)

modules :: [Module]
modules =
    [ Module "boids" "modules/boids/boids_main.scm" "tests/boids_tests.scm" coreFiles
    , Module "fmm"   "modules/fmm/fmm_main.scm"     "tests/fmm_tests.scm"   coreFiles
    -- 必要に応じて追加
    ]
  where
    coreFiles = [ "kak_decomposition.scm","core/cartan_utils.scm","core/machine_constants.scm", "core/golay_frontier.scm" ]

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    
    -- 1. ルールの初期化
    setupRules

    -- コンパイラフラグ (Oracle化も可能だが簡略化)
    let cflags = "-O3 -d0"

    -- 2. 各モジュールのビルドターゲット定義
    forM_ modules $ \m -> do
        let mName = modName m
        
        -- アプリケーションのビルド
        phony ("build-" ++ mName) $ do
            -- 依存関係のコンパイル (Source -> Unit)
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
            
            -- メインプログラムのリンク
            -- UnitのArtifactをObjのArtifactに変換する必要がある
            let objArtifacts = map toObjArtifact deps
            let exePath = "dist" </> mName ++ "_app" <.> exe
            _ <- buildArtifact $ LinkExe objArtifacts 
                                         (source $ modSrc m) 
                                         cflags 
                                         exePath
            return ()

        -- テストの実行
        phony ("test-" ++ mName) $ do
            need ["build-" ++ mName]
            
            -- テスト用バイナリのビルド
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
            let objArtifacts = map toObjArtifact deps
            let testBinPath = "_build/tests/test_" ++ mName <.> exe
            
            -- テストバイナリのリンク
            _ <- buildArtifact $ LinkExe objArtifacts
                                         (source $ modTest m)
                                         cflags
                                         testBinPath
            
            -- テスト実行
            env <- liftIO getChickenEnv
            let config = Salmonella.defaultTestConfig { Salmonella.tcEnv = env }
            result <- Salmonella.runModuleTests config mName testBinPath
            
            unless (Salmonella.trPassed result) $
                fail $ "Tests failed for " ++ mName

    -- 3. 便利コマンド
    phony "clean" $ do
        removeFilesAfter "_build" ["//*"]
        removeFilesAfter "dist" ["//*"]

    phony "test-all" $ do
        need ["test-" ++ modName m | m <- modules]

-- Helper function to convert Unit artifacts to Obj artifacts
-- This is a type-level conversion: both are represented as .o files
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath --package process --package sbv

{- Shake.hs -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, when, unless)
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

-- コア依存ファイル（全モジュールが使用）
coreFiles :: [FilePath]
coreFiles = 
    [ "core/kak_decomposition.scm"
    , "core/cartan_utils.scm"
    , "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    ]

-- コアインポートファイル（コンパイル時に必要）
coreImports :: [FilePath]
coreImports =
    [ "core/kak_decomposition.import.scm"
    , "core/cartan_utils.import.scm"
    , "core/machine_constants.import.scm"
    , "core/golay_frontier.import.scm"
    ]

modules :: [Module]
modules =
    [ Module "boids" 
             "modules/boids/boids_main.scm" 
             "tests/boids_tests.scm" 
             (coreFiles ++ coreImports)
    
    , Module "fmm" 
             "modules/fmm/fmm_on_goppa_grid.scm"     
             "tests/fmm_tests.scm"   
             (coreFiles ++ coreImports)
    
    , Module "sssp" 
             "modules/sssp/sssp_main.scm" 
             "tests/sssp_tests.scm" 
             (coreFiles ++ coreImports)
    
    , Module "sssp_geometry" 
             "modules/sssp_geometry/sssp_geo_main.scm" 
             "tests/sssp_geometry_tests.scm" 
             (coreFiles ++ coreImports)
    
    , Module "kak_decomposition" 
             "modules/kak_decomposition/kak_main.scm" 
             "tests/kak_tests.scm" 
             (coreFiles ++ coreImports)
    
    , Module "golay24-tool" 
             "tools/golay24-tool/golay24_main.scm" 
             "tests/golay24_tests.scm" 
             (coreFiles ++ coreImports ++ ["tools/golay24-tool/setup.scm"])
    ]

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    
    -- 1. ルールの初期化
    setupRules

    -- コンパイラフラグ
    let cflags = "-O3 -d0"

    -- 2. 各モジュールのビルドターゲット定義
    forM_ modules $ \m -> do
        let mName = modName m
        
        -- アプリケーションのビルド
        phony ("build-" ++ mName) $ do
            -- 依存ファイルが存在することを確認
            need (modDeps m)
            
            -- 依存関係をコンパイル (Source -> Unit)
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
            
            -- メインプログラムをコンパイル
            mainUnit <- buildArtifact $ CompileUnit (source $ modSrc m) cflags
            
            -- すべてのユニットをオブジェクトに変換してリンク
            let objArtifacts = map toObjArtifact (deps ++ [mainUnit])
            let exePath = "dist" </> mName ++ "_app" <.> exe
            
            _ <- buildArtifact $ LinkExe objArtifacts 
                                         (source $ modSrc m) 
                                         cflags 
                                         exePath
            return ()

        -- テストの実行
        phony ("test-" ++ mName) $ do
            need ["build-" ++ mName]
            
            -- テスト用バイナリをビルド
            need (modDeps m)
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
            testUnit <- buildArtifact $ CompileUnit (source $ modTest m) cflags
            let objArtifacts = map toObjArtifact (deps ++ [testUnit])
            let testBinPath = "_build/tests/test_" ++ mName <.> exe
            
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

        -- モジュール名のショートカット: "make golay24-tool" → "build-golay24-tool"
        phony mName $ do
            need ["build-" ++ mName]

    -- 3. 便利コマンド
    phony "clean" $ do
        removeFilesAfter "_build" ["//*"]
        removeFilesAfter "dist" ["//*"]

    phony "build" $ do
        need ["build-" ++ modName m | m <- modules]

    phony "test-all" $ do
        need ["test-" ++ modName m | m <- modules]

    -- 個別モジュール用の "test-MODULE" ショートカット
    phony "test" $ do
        need ["test-all"]

-- Helper function to convert Unit artifacts to Obj artifacts
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless)

-- 自作モジュール
import Chicken
import Rules
import qualified Salmonella

-- ====================================================================
--  設定・データ定義
-- ====================================================================

data Module = Module
    { modName :: String
    , modSrc  :: FilePath -- メインソース
    , modTest :: FilePath -- テストソース
    , modDeps :: [FilePath] -- 依存ファイル（フルパス）
    } deriving (Show)

-- コア依存ファイル（全モジュールが使用）
-- ※ Rules.hs の検索ロジックが強力になったため、フルパス推奨ですが
--   ファイル名だけでも検索ヒットするようになっています。
coreFiles :: [FilePath]
coreFiles = 
    [ "core/kak_decomposition.scm"
    , "core/cartan_utils.scm"
    , "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    ]

modules :: [Module]
modules =
    [ Module "boids" 
             "modules/boids/boids_main.scm" 
             "tests/boids_tests.scm" 
             coreFiles
    
    , Module "fmm" 
             "modules/fmm/fmm_on_goppa_grid.scm"     
             "tests/fmm_tests.scm"   
             coreFiles
    
    , Module "sssp" 
             "modules/sssp/sssp_main.scm" 
             "tests/sssp_tests.scm" 
             coreFiles
    
    , Module "sssp_geometry" 
             "modules/sssp_geometry/sssp_geo_main.scm" 
             "tests/sssp_geometry_tests.scm" 
             coreFiles
    
    , Module "kak_decomposition" 
             "modules/kak_decomposition/kak_main.scm" 
             "tests/kak_tests.scm" 
             coreFiles
    
    , Module "golay24-tool" 
             "tools/golay24-tool/golay24_main.scm" 
             "tests/golay24_tests.scm" 
             (coreFiles ++ ["tools/golay24-tool/setup.scm"])
    ]

-- ====================================================================
--  Main Loop
-- ====================================================================

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    
    -- 1. ルールの初期化 (Rules.hs で定義されたアクションが登録される)
    setupRules

    -- コンパイラフラグ
    let cflags = "-O3 -d0"

    -- 2. 各モジュールのビルドターゲット定義
    forM_ modules $ \m -> do
        let mName = modName m
        
        -- アプリケーションのビルド
        phony ("build-" ++ mName) $ do
            need (modDeps m)
            
            -- 依存関係(Core等)をユニットとしてコンパイル
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
            
            -- メインプログラムをユニットとしてコンパイル
            mainUnit <- buildArtifact $ CompileUnit (source $ modSrc m) cflags
            
            -- リンクして実行ファイルを生成
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
            
            -- テスト用の依存関係ビルド
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
            testUnit <- buildArtifact $ CompileUnit (source $ modTest m) cflags
            
            let objArtifacts = map toObjArtifact (deps ++ [testUnit])
            let testBinPath = "_build/tests/test_" ++ mName <.> exe
            
            _ <- buildArtifact $ LinkExe objArtifacts
                                         (source $ modTest m)
                                         cflags
                                         testBinPath
            
            -- Salmonellaでテスト実行
            env <- liftIO getChickenEnv
            let config = Salmonella.defaultTestConfig { Salmonella.tcEnv = env }
            result <- Salmonella.runModuleTests config mName testBinPath
            
            unless (Salmonella.trPassed result) $
                fail $ "Tests failed for " ++ mName

        -- ショートカット
        phony mName $ need ["build-" ++ mName]

    -- 3. 便利コマンド
    phony "clean" $ do
        removeFilesAfter "_build" ["//*"]
        removeFilesAfter "dist" ["//*"]
        removeFilesAfter "test-logs" ["//*"]

    phony "build" $ need ["build-" ++ modName m | m <- modules]
    phony "test-all" $ need ["test-" ++ modName m | m <- modules]
    phony "test" $ need ["test-all"]

-- Helper
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
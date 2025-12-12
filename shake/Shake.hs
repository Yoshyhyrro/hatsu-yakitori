{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, when)
import System.Process (readCreateProcessWithExitCode, proc)
import System.Exit (ExitCode(..))
import System.Environment (lookupEnv)
import Control.Monad.IO.Class (liftIO)

-- 自作モジュール
import Chicken
import Rules
import qualified Rules.GC as GC
import qualified Salmonella
import qualified Clean

-- ============================================================
-- Configuration & Metadata
-- ============================================================

data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath]
    , modUseGC :: Bool
    } deriving (Show)

coreFiles :: [FilePath]
coreFiles = 
    [ "core/kak_decomposition.scm"
    , "core/cartan_utils.scm"
    , "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    ]

modules :: [Module]
modules =
    [ Module "boids" "modules/boids/boids_main.scm" "tests/boids_tests.scm" coreFiles True
    , Module "fmm" "modules/fmm/fmm_on_goppa_grid.scm" "tests/fmm_tests.scm" coreFiles True
    , Module "sssp" "modules/sssp/sssp_main.scm" "tests/sssp_tests.scm" coreFiles False
    , Module "sssp_geometry" "modules/sssp_geometry/sssp_geo_main.scm" "tests/sssp_geometry_tests.scm" coreFiles True
    , Module "golay24-tool" "tools/golay24-tool/golay24_main.scm" "tests/golay24_tests.scm" (coreFiles ++ ["tools/golay24-tool/setup.scm"]) False
    ]

data BuildConfig = BuildConfig
    { cfgEnableGC :: Bool
    , cfgOptLevel :: String
    , cfgVerbose  :: Bool
    } deriving (Show)

defaultBuildConfig :: BuildConfig
defaultBuildConfig = BuildConfig
    { cfgEnableGC = False
    , cfgOptLevel = "-O3"
    , cfgVerbose = False
    }

-- ============================================================
-- Main Entry Point
-- ============================================================

main :: IO ()
main = do
    -- 環境変数からGC設定を読み込み
    gcEnv <- lookupEnv "ENABLE_GC_OPT"
    let enableGC = case gcEnv of
            Just "1" -> True
            Just "true" -> True
            _ -> False
    
    let config = defaultBuildConfig { cfgEnableGC = enableGC }
    
    shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
        
        -- 1. ルール初期化
        -- Rules.hs の setupRules 内で GC.gcRule も呼ばれているのでここはこれだけでOK
        setupRules
        
        let cflags = cfgOptLevel config ++ " -d0"
        
        -- 2. 各モジュールのビルドターゲット定義
        forM_ modules $ \m -> do
            let mName = modName m
            -- グローバル設定とモジュール個別設定のANDを取る
            let useGC = cfgEnableGC config && modUseGC m
            
            phony ("build-" ++ mName) $ do
                need (modDeps m)
                
                -- 依存ファイルのコンパイル (Unit)
                deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) 
                             (modDeps m)
                
                -- メインファイルのコンパイル (Unit)
                -- ここでの useGC は "Link時にGCオブジェクトを作るかどうか" なので
                -- コンパイル自体は通常の buildArtifact で行っても良いが、一貫性のため WithGC を使用
                mainUnit <- buildArtifact $ CompileUnit (source $ modSrc m) cflags
                
                let objArtifacts = map toObjArtifact (deps ++ [mainUnit])
                let exePath = "dist" </> mName ++ "_app" <.> exe
                
                -- リンク実行 (+ GCが有効ならGC用オブジェクトも生成)
                -- Rules.hs の buildArtifactWithGC が LinkExe に対して GC.buildGCObj を呼んでくれる
                _ <- buildArtifactWithGC useGC $ LinkExe objArtifacts 
                                             (source $ modSrc m) 
                                             cflags 
                                             exePath
                return ()
            
            -- テスト用ターゲット
            phony ("test-" ++ mName) $ do
                need ["build-" ++ mName]
                
                -- テストはGCビルド不要なので通常の buildArtifact
                deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) (modDeps m)
                testUnit <- buildArtifact $ CompileUnit (source $ modTest m) cflags
                
                let objArtifacts = map toObjArtifact (deps ++ [testUnit])
                let testBinPath = "_build/tests/test_" ++ mName <.> exe
                
                _ <- buildArtifact $ LinkExe objArtifacts (source $ modTest m) cflags testBinPath
                
                -- Salmonella 実行
                env <- liftIO getChickenEnv
                let tcfg = Salmonella.defaultTestConfig { Salmonella.tcEnv = env }
                result <- Salmonella.runModuleTests tcfg mName testBinPath
                unless (Salmonella.trPassed result) $ fail $ "Tests failed for " ++ mName
            
            -- ショートカット
            phony mName $ need ["build-" ++ mName]

        -- 3. その他のPhonyターゲット
        
        phony "salmonella" $ do
            liftIO $ do
                (exitCode, stdout, stderr) <- readCreateProcessWithExitCode (proc "salmonella" []) ""
                case exitCode of
                    ExitSuccess -> putStrLn "✓ Salmonella tests passed"
                    _ -> do
                        putStrLn "✗ Salmonella tests failed"
                        putStrLn stdout
                        putStrLn stderr
                        fail "Salmonella tests failed"
        
        phony "clean" $ Clean.cleanAll
        phony "clean-build" $ Clean.cleanBuild
        phony "clean-tests" $ Clean.cleanTests
        phony "clean-artifacts" $ Clean.cleanArtifacts
        phony "clean-cache" $ Clean.cleanCache
        phony "distclean" $ do
            Clean.cleanAll
            putInfo "Removed all generated files and caches"
            
        phony "build" $ need ["build-" ++ modName m | m <- modules]
        phony "test-all" $ need ["test-" ++ modName m | m <- modules]
        phony "test" $ need ["test-all"]
        
        phony "gc-stats" $ liftIO $ do
            putStrLn "=== GC Configuration ==="
            putStrLn $ "Global GC enabled: " ++ show (cfgEnableGC config)
            putStrLn ""
            putStrLn "Per-module GC settings:"
            forM_ modules $ \m -> do
                let status = if modUseGC m then "✓ enabled" else "✗ disabled"
                putStrLn $ "  " ++ modName m ++ ": " ++ status

-- Helper for converting Artifact types
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
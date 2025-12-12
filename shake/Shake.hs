{- shake/Shake.hs (GC-integrated) -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, when)
import System.Process (readCreateProcessWithExitCode, proc)
import System.Exit (ExitCode(..))
import System.Environment (lookupEnv)

-- 自作モジュール
import Chicken
import Rules
import qualified Rules.GC as GC
import qualified Salmonella
import qualified Clean

-- ====================================================================
--  設定・データ定義
-- ====================================================================

data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath]
    , modUseGC :: Bool  -- ^ Enable GC compilation for this module
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
    [ Module "boids" 
             "modules/boids/boids_main.scm" 
             "tests/boids_tests.scm" 
             coreFiles
             True  -- Enable GC for boids (high allocation)
    
    , Module "fmm" 
             "modules/fmm/fmm_on_goppa_grid.scm"     
             "tests/fmm_tests.scm"   
             coreFiles
             True  -- Enable GC for FMM (spatial locality matters)
    
    , Module "sssp" 
             "modules/sssp/sssp_main.scm" 
             "tests/sssp_tests.scm" 
             coreFiles
             False  -- SSSP: moderate allocation
    
    , Module "sssp_geometry" 
             "modules/sssp_geometry/sssp_geo_main.scm" 
             "tests/sssp_geometry_tests.scm" 
             coreFiles
             True  -- Enable GC for geometric variant (memory-intensive)
             
    , Module "golay24-tool" 
             "tools/golay24-tool/golay24_main.scm" 
             "tests/golay24_tests.scm" 
             (coreFiles ++ ["tools/golay24-tool/setup.scm"])
             False  -- GC not needed for small tool
    ]

-- ====================================================================
--  Build Configuration
-- ====================================================================

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

-- ====================================================================
--  Main
-- ====================================================================

main :: IO ()
main = do
    -- Check environment for GC flag
    gcEnv <- lookupEnv "ENABLE_GC_OPT"
    let enableGC = case gcEnv of
            Just "1" -> True
            Just "true" -> True
            _ -> False
    
    let config = defaultBuildConfig { cfgEnableGC = enableGC }
    
    shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
        
        -- 1. ルール初期化（GC含む）
        setupRules
        
        -- コンパイラフラグ
        let cflags = cfgOptLevel config ++ " -d0"
        
        -- 2. 各モジュールのビルドターゲット
        forM_ modules $ \m -> do
            let mName = modName m
            let useGC = cfgEnableGC config && modUseGC m
            
            -- メインアプリケーション
            phony ("build-" ++ mName) $ do
                need (modDeps m)
                
                -- 依存コンパイル
                deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) 
                             (modDeps m)
                
                -- メイン単位
                mainUnit <- if useGC
                    then buildArtifactWithGC True $ CompileUnit (source $ modSrc m) cflags
                    else buildArtifact $ CompileUnit (source $ modSrc m) cflags
                
                let objArtifacts = map toObjArtifact (deps ++ [mainUnit])
                let exePath = "dist" </> mName ++ "_app" <.> exe
                
                _ <- buildArtifact $ LinkExe objArtifacts 
                                             (source $ modSrc m) 
                                             cflags 
                                             exePath
                
                -- GC-optimized compilation if enabled
                when useGC $ do
                    putInfo $ "[GC] Building GC-optimized version for " ++ mName
                    gcObj <- GC.buildGCObj exePath
                    putInfo $ "[GC] Created: " ++ getPath gcObj
                
                return ()
            
            -- テスト実行
            phony ("test-" ++ mName) $ do
                need ["build-" ++ mName]
                
                deps <- mapM (\src -> buildArtifact $ CompileUnit (source src) cflags) 
                             (modDeps m)
                testUnit <- buildArtifact $ CompileUnit (source $ modTest m) cflags
                
                let objArtifacts = map toObjArtifact (deps ++ [testUnit])
                let testBinPath = "_build/tests/test_" ++ mName <.> exe
                
                _ <- buildArtifact $ LinkExe objArtifacts
                                             (source $ modTest m)
                                             cflags
                                             testBinPath
                
                env <- liftIO getChickenEnv
                let tcfg = Salmonella.defaultTestConfig { Salmonella.tcEnv = env }
                result <- Salmonella.runModuleTests tcfg mName testBinPath
                
                unless (Salmonella.trPassed result) $
                    fail $ "Tests failed for " ++ mName
            
            -- ショートカット
            phony mName $ need ["build-" ++ mName]
        
        -- 3. Salmonella
        phony "salmonella" $ do
            liftIO $ do
                (exitCode, stdout, stderr) <- readCreateProcessWithExitCode (proc "salmonella" []) ""
                case exitCode of
                    ExitSuccess -> putStrLn "✓ Salmonella tests passed"
                    _ -> do
                        putStrLn "✗ Salmonella tests failed"
                        putStrLn "=== Stdout ==="
                        putStrLn stdout
                        putStrLn "=== Stderr ==="
                        putStrLn stderr
                        fail "Salmonella tests failed"
        
        -- 4. クリーニング
        phony "clean" $ Clean.cleanAll
        phony "clean-build" $ Clean.cleanBuild
        phony "clean-tests" $ Clean.cleanTests
        phony "clean-artifacts" $ Clean.cleanArtifacts
        phony "clean-cache" $ Clean.cleanCache
        phony "distclean" $ do
            Clean.cleanAll
            putInfo "Removed all generated files and caches"
        
        -- 5. 便利コマンド
        phony "build" $ need ["build-" ++ modName m | m <- modules]
        phony "test-all" $ need ["test-" ++ modName m | m <- modules]
        phony "test" $ need ["test-all"]
        
        -- GC統計
        phony "gc-stats" $ liftIO $ do
            putStrLn "=== GC Configuration ==="
            putStrLn $ "Global GC enabled: " ++ show (cfgEnableGC config)
            putStrLn ""
            putStrLn "Per-module GC settings:"
            forM_ modules $ \m -> do
                let status = if modUseGC m then "✓ enabled" else "✗ disabled"
                putStrLn $ "  " ++ modName m ++ ": " ++ status

-- ============================================================
-- Helpers
-- ============================================================

toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
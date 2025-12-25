{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, forM, when)
import System.Process (readCreateProcessWithExitCode, proc)
import qualified System.Directory as Dir
import System.Exit (ExitCode(..))
import Data.List (words)


-- 自作モジュール
import Chicken
import Rules
import qualified Rules.GC as GC
import qualified Salmonella
import qualified Clean
import qualified Rules.MEEP as MEEP

-- ====================================================================
--  設定・データ定義
-- ====================================================================

data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath]
    } deriving (Show)

-- コア依存ファイル(依存関係の順序が重要)
-- 1. 基本ユーティリティ
-- 2. 物理コア (他のモジュールに依存されない)
-- 3. 最適化 (物理コアの後)
-- 4. Quiver安全性 (最適化と物理コアに依存)
coreFiles :: [FilePath]
coreFiles = 
    [ "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    , "core/witt_foundation.scm"           -- FOUNDATION (必須)
    , "core/witt_symmetry_explicit.scm"    -- Witt検証
    , "core/kak_decomposition.scm"
    , "core/cartan_utils.scm"
    , "modules/kak_physics_core.scm"       -- 物理コア
    , "modules/kak_optimization.scm"       -- 最適化
    , "modules/kak_quiver_safety.scm"      -- Quiver安全性
    , "modules/topological-gc.scm"         -- GC
    ]

-- Witt Foundation System (スタンドアロン検証用)
wittSystem :: [Module]
wittSystem =
    [ Module "witt-validator"
             "core/cross_validation.scm"   -- Main entry point
             "tests/test_system.scm"
             [ "core/machine_constants.scm"
             , "core/golay_frontier.scm"
             , "core/witt_foundation.scm"
             , "core/witt_symmetry_explicit.scm"
             , "core/kak_decomposition.scm"
             , "core/cross_validation.scm"
             ]
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
             
    , Module "golay24-tool" 
         "tools/golay24-tool/golay24_main.scm" 
         "tests/golay24_tests.scm" 
         (coreFiles ++ 
          [ "tools/golay24-tool/setup.scm"
          , "modules/sssp_geometry/sssp_geo_main.scm"
          ])
    ] ++ wittSystem  -- Add Witt system to modules

-- In the main :: IO () function, update the build rules:

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    
    -- 1. ルールの初期化
    setupRules
    GC.gcRule
    MEEP.meepRules

    -- コンパイラフラグ
    let cflags = "-O3 -d0"
    let wittflags = "-O2 -d0"  -- Slightly less aggressive for Witt system

    -- 2. 各モジュールのビルドターゲット定義
    forM_ modules $ \m -> do
        let mName = modName m
        let isWittSystem = mName == "witt-validator"
        let flags = if isWittSystem then wittflags else cflags
        
        -- アプリケーションのビルド
        phony ("build-" ++ mName) $ do
            need (modDeps m)
            projectRoot <- liftIO Dir.getCurrentDirectory
            let absPath p = projectRoot </> p
            
            if isWittSystem
                then do
                    -- Witt system: Compile all modules as units, then link with test
                    putInfo $ "[Witt] Building validator with module linking..."

                    let unitNames = map (takeBaseName . dropExtension) (modDeps m)
                    let objPaths = [ "_build" </> u <.> "o" | u <- unitNames ]

                    -- Step 1: Compile each dependency as a compilation unit
                    forM_ (zip (modDeps m) objPaths) $ \(src, objPath) -> do
                        let unitName = takeBaseName (dropExtension src)
                        need [absPath src]
                        liftIO $ Dir.createDirectoryIfMissing True "_build"
                        cmd_ (["csc"] ++ words wittflags ++ ["-c",
                              absPath src, "-o", objPath,
                              "-unit", unitName,
                              "-emit-import-library", unitName])

                    -- Step 2: Compile test file as a program
                    let testFile = absPath (modTest m)
                    let exePath = "dist" </> mName ++ "_app" <.> exe

                    need [testFile]
                    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory exePath)

                    -- Link: compile test with all unit dependencies
                    let usesFlags = concatMap (\u -> ["-uses", u]) unitNames
                    let linkFlags = words wittflags ++ ["-o", exePath, "-I", "_build"] ++ usesFlags ++ objPaths ++ [testFile]
                    cmd_ (["csc"] ++ linkFlags)
                    putInfo $ "Linked: " ++ exePath
                    
                else do
                    -- Original build path for other modules
                    deps <- mapM (\src -> buildArtifact $ CompileUnit (source $ absPath src) flags) (modDeps m)
                    mainUnit <- buildArtifact $ CompileUnit (source $ absPath $ modSrc m) flags
                    let objArtifacts = map toObjArtifact (deps ++ [mainUnit])
                    let exePath = "dist" </> mName ++ "_app" <.> exe
                    _ <- buildArtifact $ LinkExe objArtifacts
                                                 (source $ (projectRoot </> modSrc m))
                                                 flags
                                                 exePath
                    return ()

        -- テストの実行
        phony ("test-" ++ mName) $ do
            if isWittSystem
                then do
                    need ["build-" ++ mName] -- ファイルパスではなくphonyターゲットを要求する
                    let exePath = "dist" </> mName ++ "_app" <.> exe
                    cmd_ [exePath]
                    putInfo $ "[WITT] Validation complete"
                else do
                    env <- liftIO getChickenEnv
                    projectRoot <- liftIO Dir.getCurrentDirectory
                    let config = Salmonella.defaultTestConfig
                            { Salmonella.tcEnv = env
                            , Salmonella.tcCompileFlags = words flags
                            }
                    result <- Salmonella.runIsolatedModuleTests config
                                                                 mName
                                                                 (projectRoot </> modSrc m)
                                                                 (projectRoot </> modTest m)
                                                                 (map (projectRoot </>) (modDeps m))
                    unless (Salmonella.trPassed result) $
                        fail $ "Tests failed for " ++ mName

        -- ショートカット
        phony mName $ need ["build-" ++ mName]

        -- GC コンパイル (Wittシステムは除外)
        unless isWittSystem $
            phony ("gc-" ++ mName) $ do
                need (modDeps m)
                projectRoot <- liftIO Dir.getCurrentDirectory
                let absPath p = projectRoot </> p
                let gcFlags = "-O3 -d0 -scrutinize -specialize -inline 3"
                deps <- mapM (\src -> buildArtifact $ CompileUnit (source $ absPath src) gcFlags) (modDeps m)
                mainUnit <- buildArtifact $ CompileUnit (source $ absPath $ modSrc m) gcFlags
                let exePath = "dist" </> mName ++ "_app_gc" <.> exe
                gcObj <- GC.buildGCObj exePath
                let objArtifacts = map toObjArtifact (deps ++ [mainUnit]) ++ [gcObj]
                _ <- buildArtifact $ LinkExe objArtifacts
                                             (source $ (projectRoot </> modSrc m))
                                             gcFlags
                                             exePath
                return ()

    -- 3. Witt validation target
    phony "witt" $ need ["build-witt-validator"]
    phony "test-witt" $ need ["test-witt-validator"]

    -- 4. クリーニングコマンド
    phony "clean" $ Clean.cleanAll
    phony "clean-build" $ Clean.cleanBuild
    phony "clean-tests" $ Clean.cleanTests
    phony "clean-artifacts" $ Clean.cleanArtifacts
    phony "clean-cache" $ Clean.cleanCache
    
    phony "distclean" $ do
        Clean.cleanAll
        putInfo "Removed all generated files and caches"

    -- 6. 便利コマンド
    phony "build" $ need ["build-" ++ modName m | m <- modules]
    phony "test-all" $ need ["test-" ++ modName m | m <- modules]
    phony "test" $ need ["test-all"]
    phony "gc-all" $ need ["gc-" ++ modName m | m <- modules, modName m /= "witt-validator"]

-- Helper
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
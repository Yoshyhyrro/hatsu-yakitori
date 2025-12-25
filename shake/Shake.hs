{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM, forM_, unless, when)
import qualified System.Directory as Dir
import Data.List (nub, isPrefixOf)

import Chicken
import Rules
import qualified Rules.Link as Link
import qualified Rules.StandardToplevel as TopLevel
import qualified Rules.GC as GC
import qualified Clean
import qualified Salmonella

-- ====================================================================
-- Helper Functions
-- ====================================================================

-- | Convert Unit artifact to Obj artifact (phantom type cast)
unitToObj :: Artifact 'Unit -> Artifact 'Obj
unitToObj (Artifact path) = Artifact path

-- ====================================================================
-- Module Definition
-- ====================================================================

data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath]
    } deriving (Show)

coreFiles :: [FilePath]
coreFiles = 
    [ "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    , "core/witt_foundation.scm"
    , "core/witt_symmetry_explicit.scm"
    , "core/kak_decomposition.scm"
    , "core/cartan_utils.scm"
    , "modules/kak_physics_core.scm"
    , "modules/kak_optimization.scm"
    , "modules/kak_quiver_safety.scm"
    , "modules/topological-gc.scm"
    ]

wittSystem :: [Module]
wittSystem =
    [ Module "witt-validator"
             "core/cross_validation.scm"
             "tests/test_system.scm"
             coreFiles
    ]

modules :: [Module]
modules =
    [ Module "boids" "modules/boids/boids_main.scm" "tests/boids_tests.scm" coreFiles
    , Module "fmm" "modules/fmm/fmm_on_goppa_grid.scm" "tests/fmm_tests.scm" coreFiles
    , Module "sssp" "modules/sssp/sssp_main.scm" "tests/sssp_tests.scm" coreFiles
    , Module "sssp_geometry" "modules/sssp_geometry/sssp_geo_main.scm" "tests/sssp_geometry_tests.scm" coreFiles
    , Module "golay24-tool" "tools/golay24-tool/golay24_main.scm" "tests/golay24_tests.scm" 
             (coreFiles ++ ["tools/golay24-tool/setup.scm", "modules/sssp_geometry/sssp_geo_main.scm"])
    ] ++ wittSystem

-- ====================================================================
-- Main
-- ====================================================================

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    setupRules
    GC.gcRule

    let cflags = "-O3 -d0"
    let wittflags = "-O2 -d0"

    forM_ modules $ \m -> do
        let mName = modName m
        let isWitt = mName == "witt-validator"
        let flags = if isWitt then wittflags else cflags

        phony ("build-" ++ mName) $ buildModule m flags isWitt
        phony ("test-" ++ mName) $ testModule m flags isWitt
        phony mName $ need ["build-" ++ mName]
        
        unless isWitt $
            phony ("gc-" ++ mName) $ buildGCModule m flags

    phony "witt" $ need ["build-witt-validator"]
    phony "test-witt" $ need ["test-witt-validator"]
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
    phony "gc-all" $ need ["gc-" ++ modName m | m <- modules, modName m /= "witt-validator"]

-- ====================================================================
-- Build Functions
-- ====================================================================

buildModule :: Module -> String -> Bool -> Action ()
buildModule m flags isWitt = do
    let mName = modName m
    projectRoot <- liftIO Dir.getCurrentDirectory
    let absPath p = projectRoot </> p
    
    if isWitt
        then buildWittValidator m flags
        else buildRegularModule m flags absPath

buildWittValidator :: Module -> String -> Action ()
buildWittValidator m flags = do
    putInfo "[Witt] Building validator..."
    
    let mName = modName m
    projectRoot <- liftIO Dir.getCurrentDirectory
    let absPath p = projectRoot </> p
    
    -- StandardToplevel で依存を自動抽出
    let allSrcs = map absPath (modDeps m ++ [modTest m])
    allDepsPerFile <- liftIO $ mapM TopLevel.extractAllDeps allSrcs
    let allDeps = nub $ concat allDepsPerFile
    putInfo $ "[Witt] Dependencies: " ++ show allDeps
    
    let unitNames = map (takeBaseName . dropExtension) (modDeps m)
    let objPaths = ["_build" </> u <.> "o" | u <- unitNames]
    
    -- コンパイル
    forM_ (zip (modDeps m) objPaths) $ \(src, objPath) -> do
        let unitName = takeBaseName (dropExtension src)
        need [absPath src]
        liftIO $ Dir.createDirectoryIfMissing True "_build"
        putInfo $ "[Witt] Unit: " ++ unitName
        cmd_ (["csc"] ++ words flags ++ 
              ["-c", absPath src, "-o", objPath,
               "-unit", unitName, "-emit-import-library", unitName])
    
    -- リンク
    let testFile = absPath (modTest m)
    let exePath = "dist" </> mName ++ "_app" <.> exe
    need [testFile]
    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory exePath)
    
    let usesOwn = concatMap (\u -> ["-uses", u]) unitNames
    let usesExt = concatMap (\d -> ["-uses", d]) allDeps
    let linkArgs = words flags ++ ["-o", exePath, "-I", "_build"] ++ usesOwn ++ usesExt ++ objPaths ++ [testFile]
    
    putInfo $ "[Witt] Linking..."
    cmd_ (["csc"] ++ linkArgs)
    putInfo $ "[Witt] Built: " ++ exePath

buildRegularModule :: Module -> String -> (FilePath -> FilePath) -> Action ()
buildRegularModule m flags absPath = do
    let deps = modDeps m
    let src = modSrc m
    let exePath = "dist" </> modName m ++ "_app" <.> exe
    
    need (map absPath deps ++ [absPath src])
    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory exePath)
    
    -- compile each dependency and main source
    depObjs <- forM deps $ \dep -> do
        let srcArtifact = Artifact (absPath dep)
        unitToObj <$> compileUnit (getPath srcArtifact) flags
    
    srcUnit <- compileUnit (absPath src) flags
    let srcArtifact = unitToObj srcUnit
    
    -- link all objects
    let allObjs = depObjs ++ [srcArtifact]
    _ <- linkWithDeps allObjs [] exePath
    return ()

buildGCModule :: Module -> String -> Action ()
buildGCModule m flags = do
    let mName = modName m
    let gcFlags = "-O3 -d0 -scrutinize -specialize -inline 3"
    projectRoot <- liftIO Dir.getCurrentDirectory
    let absPath p = projectRoot </> p
    
    let deps = modDeps m
    let src = modSrc m
    let exePath = "dist" </> mName ++ "_app_gc" <.> exe
    
    need (map absPath deps ++ [absPath src])
    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory exePath)
    
    -- compile each dependency and main source
    depObjs <- forM deps $ \dep -> do
        let srcArtifact = Artifact (absPath dep)
        unitToObj <$> compileUnit (getPath srcArtifact) gcFlags
    
    srcUnit <- compileUnit (absPath src) gcFlags
    let srcArtifact = unitToObj srcUnit
    
    -- GC object は別処理なので、通常のリンクだけで良い
    let allObjs = depObjs ++ [srcArtifact]
    _ <- linkWithDeps allObjs [] exePath
    return ()

testModule :: Module -> String -> Bool -> Action ()
testModule m flags isWitt = do
    if isWitt
        then do
            need ["build-" ++ modName m]
            let exePath = "dist" </> modName m ++ "_app" <.> exe
            cmd_ [exePath]
            putInfo "[Witt] Validation complete"
        else do
            env <- liftIO Link.getChickenEnv
            projectRoot <- liftIO Dir.getCurrentDirectory
            let config = Salmonella.defaultTestConfig
                    { Salmonella.tcEnv = env
                    , Salmonella.tcCompileFlags = words flags
                    }
            result <- Salmonella.runIsolatedModuleTests config
                                                       (modName m)
                                                       (projectRoot </> modSrc m)
                                                       (projectRoot </> modTest m)
                                                       (map (projectRoot </>) (modDeps m))
            unless (Salmonella.trPassed result) $
                fail $ "Tests failed for " ++ modName m
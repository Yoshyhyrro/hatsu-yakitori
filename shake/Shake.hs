{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, when)
import qualified System.Directory as Dir

import Pipeline
import qualified Clean
import qualified Rules.GC as GC
import qualified Rules.Proof.Main as Proof
import qualified Rules.SBVModules as SBV
import qualified Rules.ModuleLinking as ModuleLinking

-- ============================================================
-- Module Definitions
-- ============================================================

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

allModules :: [Module]
allModules =
    [ regularModule "boids" 
                    "modules/boids/boids_main.scm" 
                    "tests/boids_tests.scm" 
                    (coreFiles ++ ["modules/fmm/fmm_on_goppa_grid.scm"])
    
    , regularModule "fmm" 
                    "modules/fmm/fmm_on_goppa_grid.scm" 
                    "tests/fmm_tests.scm" 
                    coreFiles
    
    , regularModule "sssp" 
                    "modules/sssp/sssp_main.scm" 
                    "tests/sssp_tests.scm" 
                    coreFiles
    
    , regularModule "sssp_geometry" 
                    "modules/sssp_geometry/sssp_geo_main.scm" 
                    "tests/sssp_geometry_tests.scm" 
                    coreFiles
    
    , regularModule "golay24-tool" 
                    "tools/golay24-tool/golay24_main.scm" 
                    "tests/golay24_tests.scm" 
                    (coreFiles ++ 
                      [ "tools/golay24-tool/setup.scm"
                      , "modules/sssp_geometry/sssp_geo_main.scm"
                      ])
    
    , specialModule "witt-validator"
                "tools/witt-validator/witt-validator-main.scm"
                "tests/test_system.scm"
                (coreFiles ++ ["core/cross_validation.scm"])
    ]

-- ============================================================
-- Build Configurations
-- ============================================================

defaultCfg :: BuildConfig
defaultCfg = defaultBuildConfig
    { bcCompileFlags = "-O3 -d0"
    , bcBuildDir = "_build"
    , bcDistDir = "dest"
    , bcGCStrategy = Nothing
    }

wittCfg :: BuildConfig
wittCfg = defaultCfg { bcCompileFlags = "-O2 -d0" }

-- GC strategy variants
gcGomoryHuCfg :: BuildConfig
gcGomoryHuCfg = withGCStrategy GC.GomoryHu defaultCfg

gcUltrametricCfg :: BuildConfig
gcUltrametricCfg = withGCStrategy GC.Ultrametric defaultCfg

gcConnesKreimer :: BuildConfig
gcConnesKreimer = withGCStrategy GC.ConnesKreimer defaultCfg

-- ============================================================
-- Main
-- ============================================================

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    GC.gcRule
 
    -- SBV module rules
    SBV.sbvRules
 
    -- Proof phony targets and rules
    Proof.setupProofPhonies
    
    -- ============================================================
    -- Verification-first build pipeline
    -- ============================================================
    
    phony "build-verified-gc" $ do
      putInfo "[Build] Running formal verification first..."
      result <- SBV.verifyTopologicalGC
      case result of
        SBV.Verified{} -> 
          putInfo "[Build] ✓ Verification passed, proceeding with build"
        SBV.VerificationFailed{} -> 
          fail "[Build] ✗ Verification failed - aborting build"
        SBV.VerificationError{} -> 
          fail "[Build] ✗ Verification error - aborting build"
      -- Example: build modules known to depend on topological-gc
      need ["gc-gomory-fmm", "gc-gomory-boids"]
    
    phony "watch-verify" $ do
      putInfo "[Watch] Monitoring topological-gc.scm for changes..."
      need ["verify-topological-gc"]

    forM_ allModules $ \m -> do
        let mName = modName m
        let cfg = if mName == "witt-validator" then wittCfg else defaultCfg
        
        -- Standard build
        phony ("build-" ++ mName) $ 
            buildModule m cfg >> return ()
        
        -- Test
        phony ("test-" ++ mName) $ 
            Pipeline.testModule m cfg
        
        -- Alias
        phony mName $ need ["build-" ++ mName]
        
        -- GC variants (not for special modules)
        unless (modIsSpecial m) $ do
            
            -- Verified build: verify GC before building (if relevant)
            phony ("build-verified-" ++ mName) $ do
              when (usesTopologicalGC m) $ do
                putInfo $ "[Build] Verifying GC before building " ++ mName
                res <- SBV.verifyTopologicalGC
                case res of
                  SBV.Verified{} -> putInfo "[Build] ✓ Verified"
                  _ -> fail "[Build] ✗ Verification required"
              buildModule m cfg >> return ()
            
            -- GC auto-select
            phony ("gc-" ++ mName) $ 
                gcOptimizedModule m cfg >> return ()
            
            -- GC with specific strategies
            phony ("gc-gomory-" ++ mName) $ 
                gcOptimizedModuleWith GC.GomoryHu m cfg >> return ()
            
            phony ("gc-ultrametric-" ++ mName) $ 
                gcOptimizedModuleWith GC.Ultrametric m cfg >> return ()
            
            phony ("gc-connes-" ++ mName) $ 
                gcOptimizedModuleWith GC.ConnesKreimer m cfg >> return ()
    
    -- ============================================================
    -- Meta-targets
    -- ============================================================
    
    phony "witt" $ need ["build-witt-validator"]
    phony "test-witt" $ need ["test-witt-validator"]
    
    phony "build" $ need ["build-" ++ modName m | m <- allModules]
    phony "test-all" $ need ["test-" ++ modName m | m <- allModules]
    phony "test" $ need ["test-all"]
    
    -- NEW: Verified builds
    phony "build-all-verified" $ 
        need ["build-verified-" ++ modName m 
             | m <- allModules, not (modIsSpecial m)]
    
    phony "verify-then-build" $ do
        need ["verify-all-sbv"]
        need ["build"]
    
    -- GC variants
    phony "gc-all" $ 
        need ["gc-" ++ modName m | m <- allModules, not (modIsSpecial m)]
    
    phony "gc-gomory-all" $ 
        need ["gc-gomory-" ++ modName m | m <- allModules, not (modIsSpecial m)]
    
    phony "gc-ultrametric-all" $ 
        need ["gc-ultrametric-" ++ modName m | m <- allModules, not (modIsSpecial m)]
    
    phony "gc-connes-all" $ 
        need ["gc-connes-" ++ modName m | m <- allModules, not (modIsSpecial m)]
    
    -- ============================================================
    -- Cleanup
    -- ============================================================
    
    phony "clean" $ Clean.cleanAll
    phony "clean-build" $ Clean.cleanBuild
    phony "clean-tests" $ Clean.cleanTests
    phony "clean-artifacts" $ Clean.cleanArtifacts
    phony "clean-cache" $ Clean.cleanCache
    phony "distclean" $ do
        Clean.cleanAll
        putInfo "Removed all generated files and caches"
    
    -- Utility: list Scheme modules for manual reference checks
    phony "find-unused-scm" $ do
      putInfo "[Check] Listing all .scm files (manually inspect references)"
      files <- getDirectoryFiles "" ["**/*.scm"]
      forM_ files $ \f -> putInfo $ "  " ++ f ++ "  (run: grep -R \"" ++ f ++ "\" .)"
    
    -- Helper for build-time checks
    where
      -- Check if module uses topological-gc
      usesTopologicalGC :: Module -> Bool
      usesTopologicalGC m = "modules/topological-gc.scm" `elem` modDeps m
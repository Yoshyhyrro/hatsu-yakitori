{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless)
import qualified System.Directory as Dir

import Pipeline
import qualified Clean
import qualified Rules.GC as GC
import qualified Rules.DebFMM as DebFMM
import qualified Rules.Proof.Main as Proof
import qualified Rules.Proof.LLVM_IR as ProofLLVM
import qualified Rules.Proof.SBV_Bridge as SBV
import qualified Rules.Quadcopter as Quadcopter
import qualified Rules.Wasm as Wasm
import qualified Rules.HDF5 as HDF5
import System.Environment (getArgs, withArgs)
import System.IO (hSetEncoding, stdout, stderr, utf8)
import qualified Diag

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
                    coreFiles
    
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

    , regularModule "quadcopter"
                    "examples/Berkovich_Flow_Codes/quadcopter/main.scm"
                    "tests/quadcopter_tests.scm"
                    coreFiles
    
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
    , bcDistDir = "dist"
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
main = do
    -- Windows の stdout/stderr を UTF-8 に固定 (Shake が出力する文字のため)
    hSetEncoding stdout utf8
    hSetEncoding stderr utf8

    -- --hdf5 FILE を先に抜き出し、残りを Shake に渡す
    -- 使用例:
    --   stack exec shake -- --hdf5 examples/fmm/plasma_landau_mock.h5 sbv-so-fmm
    --   stack exec shake -- hdf5-scan
    allArgs <- getArgs
    let (hdf5Opt, shakeArgsList) = case allArgs of
          ("--hdf5":fp:xs) -> (Just fp, xs)
          _                -> (Nothing, allArgs)

    -- HDF5 診断 (Warning/Note は続行、Error のみ halt)
    diags <- Diag.checkHdf5 hdf5Opt
    Diag.summarize diags

    withArgs shakeArgsList $ shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
        GC.gcRule

        Proof.setupProofPhonies hdf5Opt

        phony "verify-examples" $ do
            let paths = ProofLLVM.defaultProofBuildPaths
            res <- ProofLLVM.verifyExampleModules paths
            putNormal $ "verify-examples completed: " ++ show (map fst res)

        phony "sbv-check-env" $ do
            env <- SBV.checkSBVEnvironment
            putNormal "SBV Environment:"
            forM_ env $ \(n,ok) ->
                putNormal $ "  " ++ n ++ ": " ++ (if ok then "found" else "missing")

        Quadcopter.quadcopterRules defaultCfg
        HDF5.hdf5Rules defaultCfg
        DebFMM.debFmmRules defaultCfg coreFiles

        forM_ allModules $ \m -> do
            let mName = modName m
            let cfg   = if mName == "witt-validator" then wittCfg else defaultCfg

            phony ("build-" ++ mName) $ buildModule m cfg >> return ()
            phony ("test-"  ++ mName) $ Pipeline.testModule m cfg
            phony ("wasm-"  ++ mName) $ Wasm.buildWasm m cfg
            phony mName               $ need ["build-" ++ mName]

            unless (modIsSpecial m) $ do
                phony ("gc-"            ++ mName) $ gcOptimizedModule           m cfg >> return ()
                phony ("gc-gomory-"     ++ mName) $ gcOptimizedModuleWith GC.GomoryHu    m cfg >> return ()
                phony ("gc-ultrametric-"++ mName) $ gcOptimizedModuleWith GC.Ultrametric m cfg >> return ()
                phony ("gc-connes-"     ++ mName) $ gcOptimizedModuleWith GC.ConnesKreimer m cfg >> return ()

        -- Meta-targets
        phony "witt"     $ need ["build-witt-validator"]
        phony "test-witt"$ need ["test-witt-validator"]
        phony "build"    $ need ["build-" ++ modName m | m <- allModules]
        phony "test-all" $ need ["test-"  ++ modName m | m <- allModules]
        phony "test"     $ need ["test-all"]

        phony "gc-all"            $ need ["gc-"             ++ modName m | m <- allModules, not (modIsSpecial m)]
        phony "gc-gomory-all"     $ need ["gc-gomory-"      ++ modName m | m <- allModules, not (modIsSpecial m)]
        phony "gc-ultrametric-all"$ need ["gc-ultrametric-" ++ modName m | m <- allModules, not (modIsSpecial m)]
        phony "gc-connes-all"     $ need ["gc-connes-"      ++ modName m | m <- allModules, not (modIsSpecial m)]

        -- Cleanup
        phony "clean"         $ Clean.cleanAll
        phony "clean-build"   $ Clean.cleanBuild
        phony "clean-tests"   $ Clean.cleanTests
        phony "clean-artifacts"$ Clean.cleanArtifacts
        phony "clean-cache"   $ Clean.cleanCache
        phony "distclean"     $ do
            Clean.cleanAll
            putInfo "Removed all generated files and caches"
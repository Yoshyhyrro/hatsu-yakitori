{- shake/Rules/Quadcopter.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Quadcopter
  ( quadcopterRules
  ) where

import Development.Shake
import Development.Shake.Command
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)

import Chicken (getPath)
import Pipeline (BuildConfig, regularModule, buildModule)

-- | Register quadcopter-related phony rules.
--
-- This keeps example-specific orchestration out of `Pipeline`.
quadcopterRules :: BuildConfig -> Rules ()
quadcopterRules cfg = do
  phony "quadcopter:build" $ do
    let m = regularModule
              "quadcopter"
              "examples/Berkovich_Flow_Codes/quadcopter/main.scm"
              "tests/quadcopter_tests.scm"
              [ "core/machine_constants.scm"
              , "core/golay_frontier.scm"
              , "core/witt_foundation.scm"
              , "core/witt_symmetry_explicit.scm"
              , "core/kak_decomposition.scm"
              , "core/cartan_utils.scm"
              , "modules/kak_physics_core.scm"
              , "modules/kak_optimization.scm"
              , "modules/kak_quiver_safety.scm"
              , "modules/topological-gc.scm" ]
    exe <- buildModule m cfg
    putNormal $ "quadcopter built: " ++ (getPath exe)

  phony "quadcopter:run" $ do
    let m = regularModule
              "quadcopter"
              "examples/Berkovich_Flow_Codes/quadcopter/main.scm"
              "tests/quadcopter_tests.scm"
              [ "core/machine_constants.scm"
              , "core/golay_frontier.scm"
              , "core/witt_foundation.scm"
              , "core/witt_symmetry_explicit.scm"
              , "core/kak_decomposition.scm"
              , "core/cartan_utils.scm"
              , "modules/kak_physics_core.scm"
              , "modules/kak_optimization.scm"
              , "modules/kak_quiver_safety.scm"
              , "modules/topological-gc.scm" ]
    exe <- buildModule m cfg
    putNormal $ "running: " ++ (getPath exe)
    cmd_ (getPath exe)

  phony "quadcopter:demo" $ do
    need ["quadcopter:run"]

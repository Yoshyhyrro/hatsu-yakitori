{-# LANGUAGE OverloadedStrings #-}

module Rules.Wasm
  ( buildWasm
  ) where

import Development.Shake
import Pipeline (Module, BuildConfig)

-- | Minimal stub for wasm build. Replace with real implementation if needed.
buildWasm :: Module -> BuildConfig -> Action ()
buildWasm _ _ = putNormal "[Wasm] buildWasm: stub (no-op)"

{- shake/Rules/HDF5.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.HDF5
  ( hdf5Rules
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import System.Process (readProcessWithExitCode)
import System.Exit (ExitCode(..))
import qualified System.Directory as Dir

import Pipeline (BuildConfig)

-- | Minimal HDF5 support: produce a simple header dump from `.h5` files
-- into `build/hdf5/<name>.json` (plain text for now). This uses the
-- external `h5dump` tool if available; it's a lightweight first step to
-- accept HDF5 inputs from the Shake build graph.
--
-- Notes:
-- * Dependency: the rule calls the external `h5dump` program (provided
--   by the `hdf5-tools` package on Debian/Ubuntu; headers available from
--   `libhdf5-dev`). Install these on CI or developer machines if you
--   plan to use `hdf5-scan` or pass `--hdf5 FILE` to Shake.
-- * Output: for an input `data/<name>.h5` the rule produces
--   `build/hdf5/<name>.json` containing the `h5dump -H` output. This is a
--   lightweight, human-readable representation used by proof/SBV flows.
-- * Failure mode: if `h5dump` is not available or returns a non-zero
--   exit code the rule prints stderr and fails the build so the user can
--   install the required system package.
hdf5Rules :: BuildConfig -> Rules ()
hdf5Rules _cfg = do
  -- Convert HDF5 input files under `data/` to an artifact under build/hdf5
  ("build/hdf5/*.json") %> \out -> do
    let name = takeBaseName out
    let inFile = "data" </> name <.> "h5"
    need [inFile]
    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)

    -- Try running h5dump as a pragmatic first implementation.
    (exitCode, stdout, stderr) <- liftIO $ readProcessWithExitCode "h5dump" ["-H", inFile] ""
    case exitCode of
      ExitSuccess -> writeFileChanged out ("# h5dump -H output for: " ++ inFile ++ "\n\n" ++ stdout)
      _ -> do
        -- If h5dump is missing or failed, surface the stderr for debugging.
        liftIO $ putStrLn ("h5dump failed: " ++ stderr)
        fail $ "Failed to extract HDF5 header from " ++ inFile

  -- Convenience phony to scan all `data/*.h5` files and ensure JSON outputs
  phony "hdf5-scan" $ do
    files <- getDirectoryFiles "data" ["*.h5"]
    let outs = map ("build/hdf5/" </>) $ map (<.> "json") $ map dropExtension files
    need outs

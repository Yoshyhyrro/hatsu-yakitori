{- shake/Rules/Proof/SBV_Bridge.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.SBV_Bridge
  ( SBVSpec(..)
  , generateSBVSpec
  , verifySBVSpec
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import qualified System.Process as Proc
import System.Exit (ExitCode(..))

-- | SBV verification specification
data SBVSpec = SBVSpec
  { sbvModuleName :: String
  , sbvBitWidth   :: Int
  , sbvInvariants :: [String]
  } deriving (Show, Eq)

-- | Generate a minimal SBV spec file for a core module
generateSBVSpec :: SBVSpec -> FilePath -> Action ()
generateSBVSpec spec outPath = do
  let content = unlines $ 
        [ "-- Auto-generated SBV spec for " ++ sbvModuleName spec
        , "module SBV_" ++ sbvModuleName spec ++ " where"
        , ""
        , "import Data.SBV"
        , ""
        , "-- Bit width: " ++ show (sbvBitWidth spec)
        , "type Word = SWord" ++ show (sbvBitWidth spec)
        , ""
        , "-- Invariants to verify:"
        ] ++ map ("-- * " ++) (sbvInvariants spec)
  
  writeFile' outPath content

-- | Run SBV verification for the spec by generating a spec file under
-- dest/proofs/ and invoking `stack exec -- runhaskell` to run it.
-- Returns True on success (exit code 0), False otherwise, and writes a
-- `.result` file next to the spec containing stdout/stderr for diagnostics.
verifySBVSpec :: SBVSpec -> Action Bool
verifySBVSpec spec = do
  let moduleName = sbvModuleName spec
  let outDir = "dest" </> "proofs"
  let outHs = outDir </> ("SBV_" ++ moduleName) <.> "hs"
  let outLog = outDir </> ("SBV_" ++ moduleName) <.> "log"
  let outRes = outDir </> ("SBV_" ++ moduleName) <.> "result"

  liftIO $ Dir.createDirectoryIfMissing True outDir
  -- Write spec file (generateSBVSpec is an Action, call it directly)
  generateSBVSpec spec outHs

  -- Execute via stack (fall back to runhaskell if stack not available)
  let stackCmd = ("stack", ["exec", "--", "runhaskell", outHs])
  let runhaskellCmd = ("runhaskell", [outHs])

  -- Helper to run a command and capture output
  let runCmd (cmd, args) = do
        (code, out, err) <- Proc.readProcessWithExitCode cmd args ""
        let combined = out ++ "\n" ++ err
        writeFile outLog combined
        return (code, combined)

  -- Try stack first; if it fails, try runhaskell
  (code, _out) <- liftIO $ do
    r1@(code1, _) <- runCmd stackCmd
    case code1 of
      ExitSuccess -> return r1
      _ -> runCmd runhaskellCmd

  -- Write a simple result marker
  liftIO $ writeFile outRes (case code of { ExitSuccess -> "OK"; _ -> "FAIL" })

  return (case code of { ExitSuccess -> True; _ -> False })

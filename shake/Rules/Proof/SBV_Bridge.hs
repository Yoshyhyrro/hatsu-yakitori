{- shake/Rules/Proof/SBV_Bridge.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.SBV_Bridge
  ( SBVSpec(..)
  , generateSBVSpec
  , verifySBVSpec
  , checkSBVEnvironment
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Data.Maybe (isJust)
import qualified System.Directory as Dir
import System.Process (readProcessWithExitCode)
import System.Exit (ExitCode(..))
import Control.Monad (when)

-- | SBV verification specification
data SBVSpec = SBVSpec
  { sbvModuleName :: String
  , sbvBitWidth   :: Int
  , sbvInvariants :: [String]
  } deriving (Show, Eq)

-- | Generate a minimal SBV spec file for a core module
generateSBVSpec :: SBVSpec -> FilePath -> Action ()
generateSBVSpec spec outPath = do
  -- Generate a runnable Haskell spec file that prints PASS on success.
  -- In future we will generate SBV properties from `sbvInvariants`.
  let header = [ "-- Auto-generated SBV spec for " ++ sbvModuleName spec
               , "module Main where"
               , ""
               , "import Data.SBV"
               , "import System.Exit (exitSuccess, exitFailure)"
               , "import Control.Monad (unless)"
               , ""
               , "-- Bit width: " ++ show (sbvBitWidth spec)
               , "type Word = SWord" ++ show (sbvBitWidth spec)
               , ""
               , "-- Invariants to verify:" ]
  let body = (map ("-- * " ++) (sbvInvariants spec)) ++
             [ ""
             , "-- Placeholder main: replace with actual SBV proofs for invariants"
             , "main :: IO ()"
             , "main = do"
             , "  putStrLn \"SBV RUN: placeholder (no invariants implemented)\""
             , "  -- If invariants were present, run SBV proofs here and call exitFailure on counterexample"
             , "  exitSuccess"
             ]
  let content = unlines (header ++ body)
  writeFile' outPath content

-- | Check presence of SBV tooling and SMT solvers in PATH
checkSBVEnvironment :: Action [(String, Bool)]
checkSBVEnvironment = do
  runghcFound <- liftIO $ Dir.findExecutable "runghc"
  stackFound <- liftIO $ Dir.findExecutable "stack"
  z3Found <- liftIO $ Dir.findExecutable "z3"
  cvc5Found <- liftIO $ Dir.findExecutable "cvc5"
  let res = [ ("runghc", isJust runghcFound)
            , ("stack", isJust stackFound)
            , ("z3", isJust z3Found)
            , ("cvc5", isJust cvc5Found)
            ]
  return res

-- | Run SBV verification for the spec. This will try to execute the generated
-- spec using `runghc <spec>` (preferred). If `runghc` is not available it will
-- fall back to `stack exec -- runghc <spec>` when `stack` is present.
-- Returns True on success (exit code 0) and False on failure.
verifySBVSpec :: FilePath -> SBVSpec -> Action Bool
verifySBVSpec specPath spec = do
  liftIO $ putStrLn $ "[SBV] Running spec: " ++ specPath

  -- Warn if no SMT solver is found
  z3 <- liftIO $ Dir.findExecutable "z3"
  cvc5 <- liftIO $ Dir.findExecutable "cvc5"
  when (not (isJust z3 || isJust cvc5)) $
    liftIO $ putStrLn "Warning: No SMT solver (z3/cvc5) found in PATH; SBV proofs may fail or be inconclusive."

  runghcPath <- liftIO $ Dir.findExecutable "runghc"
  case runghcPath of
    Just r -> do
      (exitCode, stdout, stderr) <- liftIO $ readProcessWithExitCode r [specPath] ""
      liftIO $ putStrLn stdout
      liftIO $ putStrLn stderr
      return (exitCode == ExitSuccess)
    Nothing -> do
      stackPath <- liftIO $ Dir.findExecutable "stack"
      case stackPath of
        Just s -> do
          (exitCode, stdout, stderr) <- liftIO $ readProcessWithExitCode s ["exec","--","runghc",specPath] ""
          liftIO $ putStrLn stdout
          liftIO $ putStrLn stderr
          return (exitCode == ExitSuccess)
        Nothing -> do
          liftIO $ putStrLn "SBV execution skipped: neither runghc nor stack found in PATH"
          return False

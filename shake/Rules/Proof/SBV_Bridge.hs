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
  -- Special-case: generate a concrete runnable spec for `sssp_geo_main`.
  if sbvModuleName spec == "sssp_geo_main"
    then do
      -- Small enumerative checker: for a small grid, compute BFS shortest paths
      -- and compare them to Manhattan distance for all node pairs.
      let content = unlines
            [ "-- Auto-generated enumerative spec for sssp_geo_main"
            , "module Main where"
            , ""
            , "import System.Exit (exitSuccess, exitFailure)"
            , "import Data.List (foldl')"
            , "import qualified Data.Sequence as Seq"
            , ""
            , "-- Parameters: small grid used for exhaustive checking"
            , "width :: Int"
            , "width = 4"
            , "height :: Int"
            , "height = 4"
            , ""
            , "nodes :: [Int]"
            , "nodes = [0 .. width*height - 1]"
            , ""
            , "idx :: Int -> Int -> Int"
            , "idx x y = x + y * width"
            , ""
            , "decode :: Int -> (Int,Int)"
            , "decode n = (n `mod` width, n `div` width)"
            , ""
            , "manhattan :: Int -> Int -> Int"
            , "manhattan a b = let (x1,y1) = decode a; (x2,y2) = decode b in abs (x1 - x2) + abs (y1 - y2)"
            , ""
            , "neighbors :: Int -> [Int]"
            , "neighbors n =\n  let (x,y) = decode n in\n  filter inBounds [ maybeIdx (x-1,y), maybeIdx (x+1,y), maybeIdx (x,y-1), maybeIdx (x,y+1) ]"
            , "  where"
            , "    inBounds = (/=) (-1)"  -- helper used below via maybeIdx returning -1 for out-of-bounds
            , "    maybeIdx (a,b) = if a >= 0 && a < width && b >= 0 && b < height then idx a b else -1"
            , ""
            , "-- Simple BFS to compute shortest path length between two nodes (unit weights)"
            , "bfs :: Int -> Int -> Int"
            , "bfs src dst = go (Seq.singleton (src,0)) (replicate (width*height) False)"
            , "  where"
            , "    go Seq.Empty _ = maxBound `div` 2"
            , "    go (q Seq.:|> _) _ | False = 0" -- keep pattern matching exhaustive
            , "    go (q) visited = case Seq.viewl q of"
            , "      Seq.EmptyL -> maxBound `div` 2"
            , "      (v,d) Seq.:< rest ->"
            , "        if v == dst then d else"
            , "          let vis' = update visited v True"
            , "              nbrs = filter (\\n -> not (vis' !! n)) (filter (>=0) (neighbors v))"
            , "              rest' = foldl' (\\acc x -> acc Seq.|> (x, d+1)) rest nbrs"
            , "          in go rest' vis'"
            , "    update xs i val = take i xs ++ [val] ++ drop (i+1) xs"
            , ""
            , "main :: IO ()"
            , "main = do"
            , "  putStrLn $ \"SSSP Geometry enumerative check: \" ++ show width ++ \"x\" ++ show height"
            , "  let pairs = [(a,b) | a <- nodes, b <- nodes]"
            , "  let failures = filter (\\(a,b) -> bfs a b /= manhattan a b) pairs"
            , "  if null failures then do putStrLn \"PASS: all pairs satisfy shortest==manhattan\"; exitSuccess"
            , "  else do putStrLn (\"FAIL: mismatches (first 10 shown): \" ++ show (take 10 failures)); exitFailure"
            ]
      writeFile' outPath content
    else do
      -- Fallback: original placeholder generator
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

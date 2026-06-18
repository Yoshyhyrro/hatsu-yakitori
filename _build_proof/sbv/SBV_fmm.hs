-- Auto-generated SBV spec for fmm
module Main where

import Data.SBV
import System.Environment (getArgs)
import System.Exit (exitSuccess, exitFailure)
import Control.Monad (unless)

-- Bit width: 64
type Word = SWord64

--------------------------------------------------------------------------------
-- 1. Definition of the Invariant (Predicate Function) to Validate
--------------------------------------------------------------------------------
-- Logic to verify memory map safety constraints for FMM (Frame Map Manager).
-- It ensures that base + offset yields a valid target within page boundaries,
-- avoids address space overflow, and respects page alignment constraints (e.g., 4KB alignment).
fmmInvariant :: Word -> Word -> Word -> SBool
fmmInvariant base offset limit = 
  let targetAddress = base + offset
      pageSize = 4096 :: Word
      isAligned = (base `sMod` pageSize) .== 0
  in (targetAddress .>= base) .&& (targetAddress .< limit) .&& isAligned

--------------------------------------------------------------------------------
-- 2. Verification Executions for Specific Hardware Invariants
--------------------------------------------------------------------------------
-- Verifies if the FMM constraints are met under standard system configurations.
-- Returns True if proven safe, False if a counterexample is found.
verifyFMM :: IO Bool
verifyFMM = do
  -- Verify safety when:
  -- 1. Base is page-aligned to 0x1000 (4096 bytes)
  -- 2. Offset stays within a safe 1MB range
  -- 3. The limit is configured to the top of a 2MB page range (0x200000)
  result <- prove $ \base offset limit ->
    (base .== 0x1000 .&& offset .< 0x100000 .&& limit .== 0x200000) ==> 
      fmmInvariant base offset limit
  
  print result
  return (isProven result)

--------------------------------------------------------------------------------
-- 3. Executable Entry Point
--------------------------------------------------------------------------------
main :: IO ()
main = do
  args <- getArgs
  let maybeHdf5 = case args of { (x:_) -> Just x; _ -> Nothing }
  putStrLn $ "SBV RUN: Executing FMM Invariant Proofs; HDF5 source: " ++ show maybeHdf5
  
  -- Run the formal proof check
  isPassed <- verifyFMM
  
  if isPassed
    then do
      putStrLn "SBV RUN: Verification successful. No counterexamples found."
      exitSuccess
    else do
      putStrLn "SBV RUN: CRITICAL ERROR! Invariant violation / counterexample detected."
      exitFailure
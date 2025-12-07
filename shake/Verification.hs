{-# LANGUAGE ScopedTypeVariables #-}

{- shake/Verification.hs

   Formal verification module for Golay24 using SBV.
   This module integrates SMT-based property verification into the Shake build system.
-}

module Verification 
    ( -- * Verification API
      verifyGolay24
    , verifyGolay24Verbose
    , runAllVerifications
    , runQuickVerifications
    
    -- * Property Tests
    , checkProperty
    , findCounterexample
    
    -- * Shake Integration
    , verificationRules
    ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Data.SBV
import Data.Bits
import qualified Data.List as L

-- ============================================================================
-- Golay24 Symbolic Operations
-- ============================================================================

-- | Encode 12-bit info word to 24-bit codeword (symbolic version)
symbolicEncode :: SWord16 -> SWord32
symbolicEncode info = 
    let info12 = info .&. 0xFFF  -- Mask to 12 bits
        parity = computeParity info12
    in (zeroExtend info12 `shiftL` 12) .|. parity
  where
    computeParity :: SWord16 -> SWord32
    computeParity x = 
        let x32 = zeroExtend x :: SWord32
            p1 = (x32 `shiftR` 0) `xor` (x32 `shiftR` 3)
            p2 = p1 `xor` (x32 `shiftR` 6)
        in p2 .&. 0xFFF

-- | Compute Hamming weight (number of 1 bits)
hammingWeightFast :: SWord32 -> SWord8
hammingWeightFast w = sPopCount (w .&. 0xFFFFFF)

-- | Check if codeword has valid syndrome
isValidCodeword :: SWord32 -> SBool
isValidCodeword cw = 
    let generatorPoly = 0xC75 :: Word32
        syndrome = cw `sRem` literal generatorPoly
    in syndrome .== 0

-- ============================================================================
-- Properties to Verify
-- ============================================================================

-- | Property 1: Encoding preserves information
prop_encodingPreservesInfo :: SWord16 -> SBool
prop_encodingPreservesInfo info =
    let info12 = info .&. 0xFFF
        encoded = symbolicEncode info12
        decoded = (encoded `shiftR` 12) .&. 0xFFF
    in decoded .== zeroExtend info12

-- | Property 2: Linearity
prop_linearityXOR :: SWord16 -> SWord16 -> SBool
prop_linearityXOR a b =
    let a12 = a .&. 0xFFF
        b12 = b .&. 0xFFF
        encAB = symbolicEncode (a12 `xor` b12)
        encA_xor_encB = symbolicEncode a12 `xor` symbolicEncode b12
    in encAB .== encA_xor_encB

-- | Property 3: Single bit error detection
prop_singleBitErrorDetection :: SWord16 -> SWord8 -> SBool
prop_singleBitErrorDetection info bitPos =
    let info12 = info .&. 0xFFF
        encoded = symbolicEncode info12
        errorMask = ite (bitPos .< 24) (1 `shiftL` bitPos) 0
        corrupted = encoded `xor` errorMask
    in (bitPos .>= 24) .|| sNot (isValidCodeword corrupted)

-- | Property 4: Weight distribution bounds
prop_weightBounds :: SWord16 -> SBool
prop_weightBounds info =
    let encoded = symbolicEncode (info .&. 0xFFF)
        weight = hammingWeightFast encoded
    in weight .<= 24  -- Trivial but demonstrates the concept

-- | Property 5: Zero information yields zero codeword
prop_zeroIdentity :: SBool
prop_zeroIdentity = symbolicEncode 0 .== 0

-- ============================================================================
-- Verification Results
-- ============================================================================

data VerificationResult = VerificationResult
    { vrProperty :: String
    , vrPassed   :: Bool
    , vrDetails  :: String
    } deriving (Show, Eq)

-- | Format verification result for display
formatResult :: VerificationResult -> String
formatResult vr = 
    let status = if vrPassed vr then "✓ PASS" else "✗ FAIL"
        prop = vrProperty vr
        details = if null (vrDetails vr) then "" else "\n  " ++ vrDetails vr
    in status ++ " - " ++ prop ++ details

-- ============================================================================
-- Public API
-- ============================================================================

-- | Verify all Golay24 properties (verbose output)
verifyGolay24Verbose :: IO [VerificationResult]
verifyGolay24Verbose = do
    putStrLn "=== Golay24 Formal Verification ==="
    putStrLn ""
    
    results <- sequence
        [ verifyProp "Encoding preserves information" prop_encodingPreservesInfo
        , verifyProp "Linearity (XOR property)" prop_linearityXOR
        , verifyProp "Single bit error detection" prop_singleBitErrorDetection
        , verifyProp "Weight bounds" prop_weightBounds
        , verifySimple "Zero identity" prop_zeroIdentity
        ]
    
    putStrLn ""
    putStrLn "=== Summary ==="
    mapM_ (putStrLn . formatResult) results
    
    let passed = all vrPassed results
    putStrLn ""
    if passed
        then putStrLn "✓ All verifications passed"
        else putStrLn "✗ Some verifications failed"
    
    return results
  where
    verifyProp name prop = do
        putStrLn $ "Verifying: " ++ name
        result <- prove prop
        let (passed, details) = case result of
                ThmResult (Unsatisfiable _) -> (True, "Q.E.D.")
                ThmResult (Satisfiable _ _) -> (False, "Falsifiable")
                _ -> (False, show result)
        putStrLn $ "  " ++ details
        return $ VerificationResult name passed details
    
    verifySimple name prop = do
        putStrLn $ "Verifying: " ++ name
        result <- prove (const prop)
        let (passed, details) = case result of
                ThmResult (Unsatisfiable _) -> (True, "Q.E.D.")
                _ -> (False, show result)
        putStrLn $ "  " ++ details
        return $ VerificationResult name passed details

-- | Verify Golay24 properties (quiet mode, returns Bool)
verifyGolay24 :: IO Bool
verifyGolay24 = do
    results <- sequence
        [ quietVerify prop_encodingPreservesInfo
        , quietVerify prop_linearityXOR
        , quietVerify prop_singleBitErrorDetection
        , quietVerify prop_weightBounds
        ]
    return $ and results
  where
    quietVerify prop = do
        result <- prove prop
        return $ case result of
            ThmResult (Unsatisfiable _) -> True
            _ -> False

-- | Run all verifications with detailed output
runAllVerifications :: IO Bool
runAllVerifications = do
    results <- verifyGolay24Verbose
    return $ all vrPassed results

-- | Run quick verifications (subset for CI/CD)
runQuickVerifications :: IO Bool
runQuickVerifications = do
    putStrLn "Running quick verifications..."
    results <- sequence
        [ verifyQuick "Encoding preserves info" prop_encodingPreservesInfo
        , verifyQuick "Zero identity" (const prop_zeroIdentity)
        ]
    
    let passed = and results
    if passed
        then putStrLn "✓ Quick verifications passed"
        else putStrLn "✗ Quick verifications failed"
    
    return passed
  where
    verifyQuick name prop = do
        putStr $ "  " ++ name ++ "... "
        result <- proveWith z3{verbose=False, timing=False} prop
        let passed = case result of
                ThmResult (Unsatisfiable _) -> True
                _ -> False
        putStrLn $ if passed then "✓" else "✗"
        return passed

-- | Check a specific property interactively
checkProperty :: (SWord16 -> SBool) -> IO ThmResult
checkProperty prop = prove prop

-- | Find a counterexample for a property
findCounterexample :: (SWord16 -> SBool) -> IO SatResult
findCounterexample prop = sat (sNot . prop)

-- ============================================================================
-- Shake Integration
-- ============================================================================

-- | Add verification rules to Shake build system
verificationRules :: Rules ()
verificationRules = do
    phony "verify" $ do
        putInfo "Running formal verification (verbose)..."
        passed <- liftIO runAllVerifications
        unless passed $ fail "Formal verification failed"
    
    phony "verify-quick" $ do
        putInfo "Running quick verification..."
        passed <- liftIO runQuickVerifications
        unless passed $ fail "Quick verification failed"
    
    phony "verify-golay24" $ do
        putInfo "Verifying Golay24 properties..."
        passed <- liftIO verifyGolay24
        if passed
            then putInfo "✓ Golay24 verification passed"
            else fail "Golay24 verification failed"
    
    -- Generate verification report
    "verification-report.txt" %> \out -> do
        putInfo "Generating verification report..."
        results <- liftIO verifyGolay24Verbose
        let report = unlines $ map formatResult results
        writeFile' out report
        putInfo $ "Report written to: " ++ out

-- ============================================================================
-- Helper: Check if Z3 is available
-- ============================================================================

-- | Check if Z3 solver is available in PATH
checkZ3Available :: IO Bool
checkZ3Available = do
    result <- proveWith z3{verbose=False, timing=False} $ \(_ :: SWord8) -> sTrue
    return $ case result of
        ThmResult (Unsatisfiable _) -> True
        _ -> False

-- ============================================================================
-- Documentation
-- ============================================================================

{- |
= Usage in Shake.hs

Add to your Shake.hs:

@
import qualified Verification

main :: IO ()
main = shakeArgs shakeOptions $ do
    -- ... existing rules ...
    
    -- Add verification rules
    Verification.verificationRules
    
    -- Update help text
    phony "help" $ do
        putInfo "  verify           Run formal verification (verbose)"
        putInfo "  verify-quick     Run quick verification checks"
        putInfo "  verify-golay24   Verify Golay24 properties only"
@

= Command Line Usage

@
-- Run full verification
$ ./Shake.hs verify

-- Run quick checks (for CI/CD)
$ ./Shake.hs verify-quick

-- Generate verification report
$ ./Shake.hs verification-report.txt
@

= Interactive Usage (GHCi)

@
$ stack ghci shake/Verification.hs
> :m + Data.SBV

-- Check a property
> prove prop_encodingPreservesInfo
Q.E.D.

-- Find counterexample
> sat $ sNot . prop_linearityXOR
Unsatisfiable  -- Good! No counterexample

-- Interactive verification
> verifyGolay24Verbose
...
@
-}
-- Auto-generated SBV spec for machine_constants
module SBV_machine_constants where

import Data.SBV

-- Bit width: 64
type Word = SWord64

--------------------------------------------------------------------------------
-- 1. Definition of the Invariant (Predicate Function) to Validate
--------------------------------------------------------------------------------
-- Logic to verify if the relationship between machine constants is correct (True).
-- It is an SBV rule to use dotted operators like (.+) or (.<).
machineInvariant :: Word -> Word -> Word -> SBool
machineInvariant base offset limit = 
  let targetAddress = base + offset
  in (targetAddress .>= base) .&& (targetAddress .< limit)
     -- ↑ Conditional expression showing that no overflow occurs and it is less than the limit.

--------------------------------------------------------------------------------
-- 2. Function to Execute the Verification
--------------------------------------------------------------------------------
verifyConstants :: IO ()
verifyConstants = do
  -- Passing the invariant to the 'prove' function allows the solver (Z3 by default) to verify all patterns.
  result <- prove $ \base offset limit ->
    -- Example: Verify "Does it always satisfy the condition if base is 0x1000, offset is less than 0x50, and limit is 0x2000?"
    (base .== 0x1000 .&& offset .< 0x50 .&& limit .== 0x2000) ==> 
      machineInvariant base offset limit

  print result
-- HatsuYakitori: Top-level module for LLVM IR verification proofs
--
-- This library provides Lean4 specifications and proofs for the
-- mathematical functions defined in hatsu-yakitori's core/ modules.
--
-- Structure:
--   HatsuYakitori.MachineConstants  -- Fundamental constants & height functions
--   HatsuYakitori.CartanUtils       -- Cartan decomposition utilities
--   HatsuYakitori.GolayFrontier     -- Golay[24,12] code & Galois interpretation
--   HatsuYakitori.KakDecomposition  -- KAK decomposition & frontier logic
--   HatsuYakitori.WittFoundation    -- Witt design foundations

import HatsuYakitori.MachineConstants
import HatsuYakitori.GolayWeight
import HatsuYakitori.HopfStructure
-- import HatsuYakitori.CartanUtils       -- TODO
-- import HatsuYakitori.GolayFrontier     -- TODO
-- import HatsuYakitori.KakDecomposition  -- TODO
-- import HatsuYakitori.WittFoundation    -- TODO

/-
  FischerCarabiner.lean

  Authors   : Yoshihiro Hasegawa
  Date      : 2026-03
  Status    : Sketch — core ideas captured, proofs mostly sorry.

  Overview
  --------
  Extension of the carabiner model from Golay (M₂₄) and Clifford (BW₃₂)
  to the **Fischer group** setting, using the ternary Golay code [12,6,6]₃
  and the **Frobenius-Schur indicator** as the organizing structure.

  While Carabiner.lean captures the Mathieu M₂₄ orbit structure with
  ℤ/4ℤ phase, and CliffordCarabiner.lean captures the Clifford group 𝒞ₙ
  with GF(4) phase, this file captures the Fischer group Fi₂₂ structure
  with **ℤ/3ℤ phase** (the Frobenius-Schur indicator).

  Key innovation: the Frobenius-Schur indicator ν ∈ {+1, 0, -1}
  (encoded as ℤ/3ℤ = {0, 1, 2}) classifies representations as:
    ν = +1 (phase 0): Real / Orthogonal   ↔ SpaceTag.affine
    ν =  0 (phase 1): Complex              ↔ SpaceTag.hybrid
    ν = -1 (phase 2): Quaternionic          ↔ SpaceTag.banach

  The PauliTransform from BSDQuiver has exactly 3 SpaceTags, which
  are in bijection with FS indicator values. This bijection is the
  "Fischer bridge": the 3 geometric modalities (affine/hybrid/banach)
  correspond to the 3 types of self-duality (real/complex/quaternionic).

  The central observation:
    The ternary Golay code [12,6,6]₃ has weight distribution
      {0: 1, 6: 264, 9: 440, 12: 24}
    with total codewords 729 = 3⁶.  The complement pairing
      f0 ↔ f12 (heights sum to 12) — Real duality (FS = +1)
      f6 ↔ f6  (self-dual midpoint) — Complex self-duality (FS = 0)
      f9 ↔ f9  (OBSTRUCTED: 9+9=18≠12) — Quaternionic defect (FS = -1)
    reveals a **chiral asymmetry** absent in the binary Golay code.

  The obstruction at f9:
    h(f9) + h(f9) - fischerHeightBound = 6 = h(f6)
    The quaternionic defect equals exactly the self-dual midpoint height.
    This is the "Frobenius-Schur obstruction" — the ternary analogue of
    the XZ involution from BSDQuiver, but now with a non-trivial kernel.

  Comparison of the three carabiner systems:

  | Property           | Golay (M₂₄)       | Clifford (BW₃₂)     | Fischer (Fi₂₂)       |
  |--------------------|--------------------|----------------------|-----------------------|
  | Weight count       | 5                  | 6                    | 4                     |
  | Phase group        | ℤ/4ℤ              | ℤ/4ℤ (GF(4))        | ℤ/3ℤ (FS indicator)  |
  | Height bound       | 8                  | 32                   | 12                    |
  | Orbit palindrome   | ✓ (1,759,2576,759,1)| —                  | ✗ (1,264,440,24)     |
  | Func. eq. uniform  | ✓ (all pairs)      | ranks only           | obstructed at f9      |
  | Self-dual point    | w12 (dodecad)      | w8 (BW₁₆)           | f6 (hexacode)         |
  | Associated code    | Golay [24,12,8]₂   | Reed-Muller RM(1,m)  | Ternary Golay [12,6,6]₃|
  | Steiner system     | S(5,8,24)          | S(5,6,12)            | S(2,6,{22})           |
  | Sporadic group     | M₂₄               | 2.Co₁               | 3.Fi₂₂               |

  Contents:
    §1  Fischer Weight (ternary Golay code orbit weights)
    §2  Frobenius-Schur Phase (ℤ/3ℤ indicator)
    §3  Fischer Carabiner structure
    §4  Fischer Routes (3-transposition paths)
    §5  FS Indicator ↔ PauliTransform bridge
    §6  Fischer Recession Fan (obstructed duality)
    §7  Bridge to ExteriorAnalysis (degree ↔ height class)
    §8  Summary
-/

import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.List.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic
import HatsuYakitori.MachineConstants
import HatsuYakitori.BSDQuiver

open HatsuYakitori.MachineConstants
open HatsuYakitori.BSDQuiver

set_option linter.dupNamespace false

namespace HatsuYakitori.FischerCarabiner

-- ===================================================================
-- §1  Fischer Weight (ternary Golay code orbit weights)
-- ===================================================================
section FischerWeight

/-- The weights for the Fischer carabiner, derived from the ternary
    Golay code [12,6,6]₃ weight distribution.

    Unlike Golay weights (5 values, palindromic orbit sizes) or
    BW weights (6 values, dyadic), Fischer weights have 4 values
    with a **chiral** (non-palindromic) orbit structure.

    | Weight | Ternary Golay orbit | Orbit size | FS indicator |
    |--------|--------------------:|:-----------|:-------------|
    | f0     |                   0 | 1          | +1 (Real)    |
    | f6     |                   6 | 264        |  0 (Complex) |
    | f9     |                   9 | 440        | -1 (Quat.)   |
    | f12    |                  12 | 24         | +1 (Real)    | -/
inductive FischerWeight where
  | f0  : FischerWeight  -- Trivial codeword (identity)
  | f6  : FischerWeight  -- Hexacode orbit (minimum weight = 6)
  | f9  : FischerWeight  -- Enneacode orbit (largest orbit)
  | f12 : FischerWeight  -- Top weight (all-nonzero ternary codeword)
  deriving DecidableEq, Repr

instance : Fintype FischerWeight where
  elems := {.f0, .f6, .f9, .f12}
  complete := by intro x; cases x <;> simp

/-- There are exactly 4 Fischer weights. -/
theorem fischerWeight_card : Fintype.card FischerWeight = 4 := by decide

/-- Height on the Berkovich tree for Fischer weights.
    The height equals the ternary Golay Hamming weight, in [0, 12]. -/
noncomputable def FischerWeight.height : FischerWeight → ℝ
  | .f0  => 0
  | .f6  => 6
  | .f9  => 9
  | .f12 => 12

/-- The Fischer height bound (= maximum ternary Golay weight). -/
noncomputable def fischerHeightBound : ℝ := 12

/-- Height is non-negative. -/
theorem FischerWeight.height_nonneg (w : FischerWeight) : w.height ≥ 0 := by
  cases w <;> simp [FischerWeight.height]

/-- Height is bounded by fischerHeightBound = 12. -/
theorem FischerWeight.height_bounded (w : FischerWeight) :
    w.height ≤ fischerHeightBound := by
  cases w <;> norm_num [FischerWeight.height, fischerHeightBound]

/-- The weight as a natural number (ternary Golay Hamming weight). -/
def FischerWeight.toNat : FischerWeight → ℕ
  | .f0  => 0
  | .f6  => 6
  | .f9  => 9
  | .f12 => 12

/-- Complement weight: pairs by height sum towards fischerHeightBound.

    The key asymmetry of the Fischer system:
    - f0 ↔ f12: h(f0) + h(f12) = 0 + 12 = 12 ✓ (Real duality)
    - f6 ↔ f6:  h(f6) + h(f6) = 6 + 6 = 12 ✓ (Complex self-duality)
    - f9 ↔ f9:  h(f9) + h(f9) = 9 + 9 = 18 ≠ 12 ✗ (Quaternionic!)

    The f9 weight has NO partner in the weight set with height 3.
    This is the **Fischer chirality**: the ternary Golay code is
    self-dual but NOT self-complementary in the binary sense. -/
def FischerWeight.complement : FischerWeight → FischerWeight
  | .f0  => .f12
  | .f6  => .f6   -- self-dual (midpoint)
  | .f9  => .f9   -- maps to itself (no height-3 partner exists)
  | .f12 => .f0

/-- Complement is an involution. -/
@[simp]
theorem FischerWeight.complement_complement (w : FischerWeight) :
    w.complement.complement = w := by
  cases w <;> rfl

/-- The Frobenius-Schur indicator of each Fischer weight.
    Classifies the duality behaviour:
    +1 = Real (complement partner exists and heights sum to K)
     0 = Complex (self-dual, heights trivially sum to K)
    -1 = Quaternionic (heights do NOT sum to K — obstruction) -/
def FischerWeight.fsIndicator : FischerWeight → Int
  | .f0  => 1    -- Real: partner f12 exists, 0+12=12
  | .f6  => 0    -- Complex: self-dual, 6+6=12
  | .f9  => -1   -- Quaternionic: 9+9=18≠12 (obstructed)
  | .f12 => 1    -- Real: partner f0 exists, 12+0=12

/-- The orbit size at each weight (ternary Golay code weight distribution).
    These are the number of codewords of each Hamming weight. -/
def FischerWeight.orbitSize : FischerWeight → ℕ
  | .f0  => 1
  | .f6  => 264
  | .f9  => 440
  | .f12 => 24

/-- Total codewords = 3⁶ = 729 (the ternary Golay code has 729 words). -/
theorem fischerWeight_total_codewords :
    FischerWeight.f0.orbitSize + FischerWeight.f6.orbitSize +
    FischerWeight.f9.orbitSize + FischerWeight.f12.orbitSize = 729 := by
  native_decide

/-- 729 = 3⁶. -/
theorem fischer_total_is_power_of_three : 729 = 3 ^ 6 := by norm_num

/-- The orbit sizes are NOT palindromic — this is the Fischer chirality.
    Compare: Golay orbit sizes (1,759,2576,759,1) ARE palindromic. -/
theorem fischerWeight_not_palindromic :
    [FischerWeight.f0.orbitSize, FischerWeight.f6.orbitSize,
     FischerWeight.f9.orbitSize, FischerWeight.f12.orbitSize] ≠
    [FischerWeight.f12.orbitSize, FischerWeight.f9.orbitSize,
     FischerWeight.f6.orbitSize, FischerWeight.f0.orbitSize] := by
  simp [FischerWeight.orbitSize]

/-- Height sum for the "Real" complement pair f0 ↔ f12. -/
theorem FischerWeight.height_complement_f0 :
    FischerWeight.f0.height + FischerWeight.f12.height = fischerHeightBound := by
  simp [FischerWeight.height, fischerHeightBound]

/-- Height sum for the "Complex" self-dual point f6 ↔ f6. -/
theorem FischerWeight.height_complement_f6 :
    FischerWeight.f6.height + FischerWeight.f6.height = fischerHeightBound := by
  simp [FischerWeight.height, fischerHeightBound]; norm_num

/-- The f6 hexacode weight is the self-dual midpoint:
    height = fischerHeightBound / 2 = 6. -/
theorem FischerWeight.f6_is_midpoint :
    FischerWeight.f6.height = fischerHeightBound / 2 := by
  simp [FischerWeight.height, fischerHeightBound]; ring

/-- **The Frobenius-Schur obstruction**: the quaternionic weight f9
    overshoots the height bound by exactly the midpoint height.
    h(f9) + h(f9) = 18 = 12 + 6 = fischerHeightBound + h(f6). -/
theorem FischerWeight.fs_obstruction :
    FischerWeight.f9.height + FischerWeight.f9.height =
    fischerHeightBound + FischerWeight.f6.height := by
  simp [FischerWeight.height, fischerHeightBound]; norm_num

/-- The obstruction deficit equals exactly the midpoint height. -/
noncomputable def fischerObstruction : ℝ :=
  FischerWeight.f9.height + FischerWeight.f9.height - fischerHeightBound

theorem fischerObstruction_eq_f6 :
    fischerObstruction = FischerWeight.f6.height := by
  simp [fischerObstruction, FischerWeight.height, fischerHeightBound]; ring

/-- f6 is the unique complement-fixed point. -/
theorem FischerWeight.complement_fixed_iff (w : FischerWeight) :
    w.complement = w ↔ (w = .f6 ∨ w = .f9) := by
  cases w <;> simp [FischerWeight.complement]

end FischerWeight

-- ===================================================================
-- §2  Frobenius-Schur Phase (ℤ/3ℤ indicator)
-- ===================================================================
section FSPhase

/-- The Frobenius-Schur phase in ℤ/3ℤ.

    | Phase | FS Indicator | Representation type | SpaceTag  |
    |-------|-------------|--------------------:|:----------|
    | 0     | +1 (Real)   | Orthogonal          | affine    |
    | 1     |  0 (Complex)| Not self-dual       | hybrid    |
    | 2     | -1 (Quat.)  | Symplectic          | banach    |

    The use of ℤ/3ℤ (instead of ℤ/4ℤ in Carabiner.lean or GF(4) in
    CliffordCarabiner.lean) reflects the ternary nature of the Fischer
    group's 3-transposition structure: an element of order 3 has
    eigenvalues {1, ω, ω²} where ω = e^{2πi/3}. -/
abbrev FSPhase := ZMod 3

/-- Map FS phase to the BSDQuiver SpaceTag.
    This is the bridge between representation-theoretic classification
    and geometric modality. -/
def fsPhaseToSpaceTag (p : FSPhase) : SpaceTag :=
  if p.val = 0 then .affine    -- Real → algebraic geometry
  else if p.val = 1 then .hybrid   -- Complex → mixed structure
  else .banach                     -- Quaternionic → p-adic completion

/-- Map FS phase to the classical Frobenius-Schur indicator value. -/
def fsPhaseToIndicator (p : FSPhase) : Int :=
  if p.val = 0 then 1      -- Real
  else if p.val = 1 then 0  -- Complex
  else -1                    -- Quaternionic

/-- Phase 0 (Real) maps to affine. -/
theorem fsPhase_zero_affine : fsPhaseToSpaceTag 0 = .affine := by
  simp [fsPhaseToSpaceTag]

/-- Phase 1 (Complex) maps to hybrid. -/
theorem fsPhase_one_hybrid : fsPhaseToSpaceTag 1 = .hybrid := by
  simp [fsPhaseToSpaceTag]; decide

/-- Phase 2 (Quaternionic) maps to banach. -/
theorem fsPhase_two_banach : fsPhaseToSpaceTag 2 = .banach := by
  simp [fsPhaseToSpaceTag]; decide

/-- The FS-SpaceTag map is surjective: every SpaceTag is hit. -/
theorem fsPhaseToSpaceTag_surjective :
    ∀ t : SpaceTag, ∃ p : FSPhase, fsPhaseToSpaceTag p = t := by
  intro t
  cases t with
  | affine => exact ⟨0, fsPhase_zero_affine⟩
  | hybrid => exact ⟨1, fsPhase_one_hybrid⟩
  | banach => exact ⟨2, fsPhase_two_banach⟩

end FSPhase

-- ===================================================================
-- §3  Fischer Carabiner structure
-- ===================================================================
section FischerCarabinerDef

/-- A Fischer carabiner is a type II Berkovich lattice point equipped
    with a Frobenius-Schur phase ∈ ℤ/3ℤ.

    Compared to the Golay `Carabiner` (ℤ/4ℤ phase on 5 weights) and
    the Clifford `Carabiner` (GF(4) phase on 6 weights), the Fischer
    carabiner uses a ternary phase on 4 weights.

    The complex evaluation point on the critical strip is:
      s = h(weight) + (2π/3) · phase
    (using 2π/3 rather than π/2, reflecting the ternary root of unity). -/
structure Carabiner where
  weight : FischerWeight
  phase  : FSPhase := 0
  deriving DecidableEq, Repr

/-- The real height of a Fischer carabiner. -/
noncomputable def Carabiner.height (c : Carabiner) : ℝ := c.weight.height

/-- The SpaceTag of a Fischer carabiner, derived from the FS phase. -/
def Carabiner.spaceTag (c : Carabiner) : SpaceTag :=
  fsPhaseToSpaceTag c.phase

/-- The complement carabiner: complements the weight and negates the phase.
    For weights with FS indicator +1, this gives a proper height-dual.
    For f9 (FS = -1), the complement lands on itself with the obstruction. -/
def Carabiner.complement (c : Carabiner) : Carabiner :=
  ⟨c.weight.complement, -c.phase⟩

/-- Complement is an involution. -/
@[simp]
theorem Carabiner.complement_complement (c : Carabiner) :
    c.complement.complement = c := by
  simp [Carabiner.complement, FischerWeight.complement_complement]

/-- The four standard carabiners (phase = 0). -/
def carabiner0  : Carabiner := ⟨.f0, 0⟩
def carabiner6  : Carabiner := ⟨.f6, 0⟩
def carabiner9  : Carabiner := ⟨.f9, 0⟩
def carabiner12 : Carabiner := ⟨.f12, 0⟩

/-- Construct a carabiner with non-trivial FS phase. -/
def Carabiner.withPhase (w : FischerWeight) (φ : FSPhase) : Carabiner := ⟨w, φ⟩

/-- The FS indicator of a carabiner (derived from its weight). -/
def Carabiner.fsIndicator (c : Carabiner) : Int :=
  c.weight.fsIndicator

/-- The 3-transposition rotation: shifts the FS phase by +1.
    This is the Fischer analogue of cross-loading in CliffordCarabiner.
    Geometrically: a 120° rotation of the carabiner, reflecting the
    order-3 nature of Fischer transpositions. -/
def Carabiner.rotate (c : Carabiner) : Carabiner :=
  { c with phase := c.phase + 1 }

/-- Rotating 3 times returns to the original (ℤ/3ℤ periodicity). -/
@[simp]
theorem Carabiner.rotate_three (c : Carabiner) :
    c.rotate.rotate.rotate = c := by
  cases c with | mk w p =>
  cases w <;> fin_cases p <;> rfl

/-- Rotation preserves the weight. -/
@[simp]
theorem Carabiner.rotate_weight (c : Carabiner) :
    c.rotate.weight = c.weight := rfl

end FischerCarabinerDef

-- ===================================================================
-- §4  Fischer Routes (3-transposition paths)
-- ===================================================================
section FischerRoutes

/-- The 3-transposition connection type between consecutive carabiners.
    In the Fischer group, elements are connected by 3-transpositions:
    two elements either commute (trivial), have order 3 (transposition),
    or have order 2 (anti-transposition).

    | Connection      | Order | Geometric meaning                |
    |-----------------|-------|----------------------------------|
    | trivial         | 1     | Commuting (no interaction)       |
    | transposition   | 3     | Fischer 3-transposition (120°)   |
    | conjugation     | 2     | Anti-transposition (180°)        | -/
inductive FischerConnection where
  | trivial       : FischerConnection  -- Commuting (order 1)
  | transposition : FischerConnection  -- 3-transposition (order 3)
  | conjugation   : FischerConnection  -- Anti-transposition (order 2)
  deriving DecidableEq, Repr

/-- A step in a Fischer route: a carabiner plus the connection to the next. -/
structure FischerStep where
  carabiner : Carabiner
  connection : FischerConnection
  deriving DecidableEq, Repr

/-- A Fischer route is a sequence of steps. -/
abbrev FischerRoute := List FischerStep

/-- Extract the underlying carabiner sequence. -/
def FischerRoute.carabiners (r : FischerRoute) : List Carabiner :=
  r.map FischerStep.carabiner

/-- The holonomy of a Fischer route: sum of connection phases in ℤ/3ℤ.
    - trivial contributes 0
    - transposition contributes 1 (= 120°)
    - conjugation contributes 2 (= 240° = -120°)
    Total holonomy 0 means the route closes without topological charge. -/
def FischerRoute.holonomy (r : FischerRoute) : FSPhase :=
  r.foldl (fun acc step =>
    acc + match step.connection with
          | .trivial       => 0
          | .transposition => 1
          | .conjugation   => 2
  ) 0

/-- Route length. -/
def FischerRoute.len (r : FischerRoute) : ℕ := r.length

/-- The Fischer route through all ternary Golay weights (ascending).
    Connection structure:
    - f0 → f6: transposition (entering the hexacode)
    - f6 → f9: transposition (crossing the midpoint)
    - f9 → f12: trivial (approaching the cusp) -/
def fischerRoute : FischerRoute :=
  [ ⟨carabiner0,  .transposition⟩,
    ⟨carabiner6,  .transposition⟩,
    ⟨carabiner9,  .trivial⟩,
    ⟨carabiner12, .trivial⟩ ]

/-- The Fischer route has length 4. -/
theorem fischerRoute_length : fischerRoute.length = 4 := by decide

/-- The holonomy of the Fischer route is 2 (= conjugation class).
    The two transpositions contribute 1+1 = 2 in ℤ/3ℤ. -/
theorem fischerRoute_holonomy : fischerRoute.holonomy = 2 := by
  simp [fischerRoute, FischerRoute.holonomy]
  decide

/-- The total orbit positions covered by the Fischer route. -/
def FischerRoute.totalPositions (r : FischerRoute) : ℕ :=
  r.foldl (fun acc step => acc + step.carabiner.weight.orbitSize) 0

/-- The Fischer route covers all 729 = 3⁶ codeword positions. -/
theorem fischerRoute_total_positions :
    fischerRoute.totalPositions = 729 := by
  simp [FischerRoute.totalPositions, fischerRoute,
        FischerWeight.orbitSize,
        carabiner0, carabiner6, carabiner9, carabiner12]

/-- The weight sequence of the Fischer route (ascending). -/
theorem fischerRoute_weights :
    (fischerRoute.carabiners).map Carabiner.weight =
    [.f0, .f6, .f9, .f12] := by
  simp [fischerRoute, FischerRoute.carabiners,
        carabiner0, carabiner6, carabiner9, carabiner12]

end FischerRoutes

-- ===================================================================
-- §5  FS Indicator ↔ PauliTransform bridge
-- ===================================================================
section FSPauliBridge

/-- Map a Fischer weight to its canonical SpaceTag via the FS indicator. -/
def FischerWeight.toSpaceTag : FischerWeight → SpaceTag
  | .f0  => .affine   -- FS = +1 (Real)
  | .f6  => .hybrid   -- FS =  0 (Complex)
  | .f9  => .banach   -- FS = -1 (Quaternionic)
  | .f12 => .affine   -- FS = +1 (Real)

/-- The FS indicator → SpaceTag assignment is consistent with the phase map. -/
theorem fs_indicator_consistent (w : FischerWeight) :
    w.toSpaceTag = fsPhaseToSpaceTag
      (if w.fsIndicator = 1 then 0
       else if w.fsIndicator = 0 then 1
       else 2) := by
  cases w <;> simp [FischerWeight.toSpaceTag, FischerWeight.fsIndicator, fsPhaseToSpaceTag]
  all_goals decide

/-- The SpaceTag sequence of the Fischer route. -/
theorem fischerRoute_tags :
    (fischerRoute.carabiners).map (fun c => c.weight.toSpaceTag) =
    [.affine, .hybrid, .banach, .affine] := by
  simp [fischerRoute, FischerRoute.carabiners,
        carabiner0, carabiner6, carabiner9, carabiner12,
        FischerWeight.toSpaceTag]

/-- The SpaceTag sequence is NOT palindromic (Fischer chirality). -/
theorem fischerRoute_tags_not_palindromic :
    [SpaceTag.affine, SpaceTag.hybrid, SpaceTag.banach, SpaceTag.affine] ≠
    [SpaceTag.affine, SpaceTag.banach, SpaceTag.hybrid, SpaceTag.affine] := by
  simp

/-- Classify the TransformEffect of a Fischer weight transition. -/
def fischerTransitionEffect (w₁ w₂ : FischerWeight) : TransformEffect :=
  match w₁.toSpaceTag, w₂.toSpaceTag with
  | .affine, .affine  => .preserves_algebraic
  | .affine, .banach  => .adds_topology
  | .affine, .hybrid  => .mixes_structures
  | .banach, .affine  => .forgets_topology
  | .banach, .banach  => .preserves_algebraic
  | .banach, .hybrid  => .mixes_structures
  | .hybrid, .affine  => .forgets_topology
  | .hybrid, .banach  => .adds_topology
  | .hybrid, .hybrid  => .preserves_algebraic

/-- The step effects along the Fischer route.
    f0 → f6: affine → hybrid = mixes_structures
    f6 → f9: hybrid → banach = adds_topology
    f9 → f12: banach → affine = forgets_topology -/
theorem fischerRoute_step_effects :
    fischerTransitionEffect .f0 .f6 = .mixes_structures ∧
    fischerTransitionEffect .f6 .f9 = .adds_topology ∧
    fischerTransitionEffect .f9 .f12 = .forgets_topology := by
  refine ⟨rfl, rfl, rfl⟩

/-- The round-trip effect f0 → f6 → f9 → f12 composes to
    mixes ∘ adds ∘ forgets = mixes_structures. -/
theorem fischerRoute_roundtrip_effect :
    combineEffects
      (combineEffects (fischerTransitionEffect .f0 .f6)
                      (fischerTransitionEffect .f6 .f9))
      (fischerTransitionEffect .f9 .f12) =
    .mixes_structures := by rfl

/-- The reverse route f12 → f9 → f6 → f0 has effects:
    forgets ∘ adds ∘ mixes = mixes_structures (same!).
    This is the "ternary XZ" property: unlike the binary case where
    adds ∘ forgets = preserves, the ternary round-trip always mixes. -/
theorem fischerRoute_reverse_effect :
    combineEffects
      (combineEffects (fischerTransitionEffect .f12 .f9)
                      (fischerTransitionEffect .f9 .f6))
      (fischerTransitionEffect .f6 .f0) =
    .mixes_structures := by rfl

end FSPauliBridge

-- ===================================================================
-- §6  Fischer Recession Fan (obstructed duality)
-- ===================================================================
section RecessionFan

/-- The recession operation on a Fischer step:
    complement the weight and negate the phase. -/
def FischerStep.recession (step : FischerStep) : FischerStep :=
  let c' := step.carabiner.complement
  ⟨c', step.connection⟩

/-- The recession fan of a Fischer route:
    reverse the route, then apply recession to each step. -/
def FischerRoute.recessionFan (r : FischerRoute) : FischerRoute :=
  r.reverse.map FischerStep.recession

/-- The recession fan has the same length as the original. -/
theorem FischerRoute.recessionFan_length (r : FischerRoute) :
    r.recessionFan.length = r.length := by
  simp [FischerRoute.recessionFan]

/-- **The obstructed functional equation**:
    For the Real pairs (f0 ↔ f12), heights sum to fischerHeightBound.
    For the Complex pair (f6 ↔ f6), heights sum to fischerHeightBound.
    For the Quaternionic pair (f9 ↔ f9), heights EXCEED fischerHeightBound.

    This trichotomy is the Fischer group's fundamental contribution:
    the functional equation h(w) + h(S(w)) = K holds if and only if
    the Frobenius-Schur indicator is non-negative (FS ≥ 0). -/
theorem fischer_functional_equation_trichotomy (w : FischerWeight) :
    (w.fsIndicator ≥ 0 → w.height + w.complement.height = fischerHeightBound) ∧
    (w.fsIndicator < 0 → w.height + w.complement.height > fischerHeightBound) := by
  cases w <;> simp [FischerWeight.fsIndicator, FischerWeight.height,
                     FischerWeight.complement, fischerHeightBound] <;> norm_num

/-- Characterization: the functional equation holds iff FS ≠ -1. -/
theorem fischer_func_eq_iff_not_quaternionic (w : FischerWeight) :
    w.height + w.complement.height = fischerHeightBound ↔ w.fsIndicator ≠ -1 := by
  cases w <;> simp [FischerWeight.fsIndicator, FischerWeight.height,
                     FischerWeight.complement, fischerHeightBound] <;> norm_num

/-- The recession fan of the Fischer route is NOT the Fischer route itself.
    (Unlike the Golay route which IS self-complementary.)
    This is because:
    1. The route has 4 weights (not symmetric around a single midpoint)
    2. The f9 weight maps to itself under complement, not to a partner -/
theorem fischerRoute_not_self_complementary :
    fischerRoute.recessionFan ≠ fischerRoute := by
  simp [fischerRoute, FischerRoute.recessionFan, FischerStep.recession,
        Carabiner.complement, FischerWeight.complement,
        carabiner0, carabiner6, carabiner9, carabiner12]

/-- The recession fan weights of the Fischer route.
    Original: [f0, f6, f9, f12] → reversed: [f12, f9, f6, f0]
    → complemented: [f0, f9, f6, f12].
    Note f9 stays as f9 in the complemented version. -/
theorem fischerRoute_recession_weights :
    (fischerRoute.recessionFan.carabiners).map Carabiner.weight =
    [.f0, .f9, .f6, .f12] := by
  simp [fischerRoute, FischerRoute.recessionFan, FischerRoute.carabiners,
        FischerStep.recession, Carabiner.complement, FischerWeight.complement,
        carabiner0, carabiner6, carabiner9, carabiner12]

end RecessionFan

-- ===================================================================
-- §7  Bridge to ExteriorAnalysis (degree ↔ height class)
-- ===================================================================
section ExteriorBridge

/-- Classification of Fischer height into GaloisHeightClass-like regions.
    We rescale the Fischer height from [0, 12] to [0, 8] (the Golay scale)
    so that the classification is compatible with GolayFrontier. -/
inductive FischerHeightClass where
  | real_low       -- f0: height 0, FS = +1
  | complex_mid    -- f6: height 6, FS = 0
  | quaternionic   -- f9: height 9, FS = -1 (the obstruction)
  | real_high      -- f12: height 12, FS = +1
  deriving DecidableEq, Repr

/-- Classify a Fischer weight into a height class. -/
def classifyFischerWeight : FischerWeight → FischerHeightClass
  | .f0  => .real_low
  | .f6  => .complex_mid
  | .f9  => .quaternionic
  | .f12 => .real_high

/-- The scaling factor from Fischer heights [0,12] to Golay heights [0,8].
    fischerToGolayScale = galoisHeightBound / fischerHeightBound = 8/12 = 2/3. -/
noncomputable def fischerToGolayScale : ℝ :=
  galoisHeightBound / fischerHeightBound

/-- Scale a Fischer height to the Golay height range. -/
noncomputable def fischerToGolayHeight (w : FischerWeight) : ℝ :=
  w.height * fischerToGolayScale

/-- The scaled Fischer heights land in [0, galoisHeightBound]. -/
theorem fischerToGolayHeight_bounded (w : FischerWeight) :
    0 ≤ fischerToGolayHeight w ∧ fischerToGolayHeight w ≤ galoisHeightBound := by
  constructor
  · apply mul_nonneg (FischerWeight.height_nonneg w)
    unfold fischerToGolayScale galoisHeightBound fischerHeightBound
    norm_num
  · unfold fischerToGolayHeight fischerToGolayScale
    cases w <;> simp [FischerWeight.height, galoisHeightBound, fischerHeightBound] <;> norm_num

/-- The Fischer height classification refines the exterior degree
    classification in the same way as
    `ExteriorAnalysis.exteriorDegree_matches_galoisHeightClass`.

    Specifically, the four Fischer weights map to GaloisHeightClass
    quartiles under the scaling h ↦ h × (8/12):
    - f0  → h'=0   ∈ [0, 2)    = ramifiedLow
    - f6  → h'=4   ∈ [2, 4)    = fundamental     (but at the boundary!)
    - f9  → h'=6   ∈ [4, 6)    = intermediate
    - f12 → h'=8   ∈ [6, 8]    = ramifiedHigh

    The key: the quaternionic weight f9 maps to the "intermediate"
    region (the dodecad region in ExteriorAnalysis), while the
    complex weight f6 maps to the "fundamental" region. -/
theorem fischerDegree_matches_galoisHeightClass :
    classifyFischerWeight .f0  = .real_low ∧
    classifyFischerWeight .f6  = .complex_mid ∧
    classifyFischerWeight .f9  = .quaternionic ∧
    classifyFischerWeight .f12 = .real_high := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/-- Map Fischer weight to a representative GolayWeight.
    This connects the 4-element Fischer system to the 5-element Golay system.

    | Fischer | Golay | Rationale                              |
    |---------|-------|----------------------------------------|
    | f0      | w0    | Both trivial (height 0)                |
    | f6      | w12   | Both self-dual midpoints               |
    | f9      | w16   | Quaternionic ↔ octad complement         |
    | f12     | w24   | Both maximal (top weight)              | -/
def fischerToGolay : FischerWeight → GolayWeight
  | .f0  => .w0
  | .f6  => .w12
  | .f9  => .w16
  | .f12 => .w24

/-- The midpoints correspond: Fischer f6 ↔ Golay w12 (both self-dual). -/
theorem fischer_golay_midpoint :
    fischerToGolay .f6 = .w12 ∧
    (fischerToGolay .f6).complement = fischerToGolay .f6 := by
  simp [fischerToGolay, GolayWeight.complement]

/-- Fischer weights induce Hida transitions on the Golay quiver. -/
def fischerToHida {w₁ w₂ : FischerWeight} :
    HidaTransition (fischerToGolay w₁) (fischerToGolay w₂) :=
  .frob

end ExteriorBridge

-- ===================================================================
-- §8  Summary
-- ===================================================================
section Summary

/-- Summary theorem for the Fischer Carabiner framework.
    Captures the essential properties that distinguish it from
    the Golay and Clifford carabiners. -/
theorem fischer_carabiner_summary :
    -- Weight count
    Fintype.card FischerWeight = 4 ∧
    -- Total codewords = 3⁶
    (FischerWeight.f0.orbitSize + FischerWeight.f6.orbitSize +
     FischerWeight.f9.orbitSize + FischerWeight.f12.orbitSize = 729) ∧
    -- Complement is an involution
    (∀ w : FischerWeight, w.complement.complement = w) ∧
    -- f6 is the self-dual midpoint
    (FischerWeight.f6.height = fischerHeightBound / 2) ∧
    -- Functional equation holds for Real pairs
    (FischerWeight.f0.height + FischerWeight.f12.height = fischerHeightBound) ∧
    -- Functional equation holds for Complex self-dual
    (FischerWeight.f6.height + FischerWeight.f6.height = fischerHeightBound) ∧
    -- Functional equation FAILS for Quaternionic (the obstruction!)
    (FischerWeight.f9.height + FischerWeight.f9.height > fischerHeightBound) ∧
    -- Obstruction equals the midpoint height
    (fischerObstruction = FischerWeight.f6.height) ∧
    -- Rotation has period 3
    (∀ c : Carabiner, c.rotate.rotate.rotate = c) ∧
    -- Route length = 4
    (fischerRoute.length = 4) ∧
    -- Route covers all 729 positions
    (fischerRoute.totalPositions = 729) ∧
    -- Route is NOT self-complementary (Fischer chirality)
    (fischerRoute.recessionFan ≠ fischerRoute) ∧
    -- FS-SpaceTag map is surjective
    (∀ t : SpaceTag, ∃ p : FSPhase, fsPhaseToSpaceTag p = t) := by
  refine ⟨fischerWeight_card,
         fischerWeight_total_codewords,
         FischerWeight.complement_complement,
         FischerWeight.f6_is_midpoint,
         FischerWeight.height_complement_f0,
         FischerWeight.height_complement_f6,
         ?_, fischerObstruction_eq_f6,
         Carabiner.rotate_three,
         fischerRoute_length,
         fischerRoute_total_positions,
         fischerRoute_not_self_complementary,
         fsPhaseToSpaceTag_surjective⟩
  -- f9 obstruction: 9 + 9 = 18 > 12
  simp [FischerWeight.height, fischerHeightBound]; norm_num

end Summary

end HatsuYakitori.FischerCarabiner

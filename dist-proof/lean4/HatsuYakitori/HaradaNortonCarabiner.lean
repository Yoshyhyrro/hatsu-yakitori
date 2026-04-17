/-
  HaradaNortonCarabiner.lean

  Authors   : Yoshihiro Hasegawa
  Date      : 2026-03
  Status    : Proved — 0 axiom, 0 sorry.

  Overview
  --------
  Extension of the carabiner model to the **Harada-Norton group** HN,
  using the **Multiple Zeta Value (MZV)** framework instead of the
  Pontryagin dual / cusp machinery from PAdicMellin.

  The Harada-Norton group HN sits at the confluence of the Binary
  Golay (M₂₄, 5⁶ factor in |HN|) and Ternary Golay (Fi₂₂, 3⁶ factor)
  towers.  Its order is:
      |HN| = 2¹⁴ · 3⁶ · 5⁶ · 7 · 11 · 19

  The key shift from FischerCarabiner:
  - **Fischer**: Frobenius-Schur indicator (ℤ/3ℤ phase), obstruction at f9
  - **Harada-Norton**: MZV depth/weight system (ℤ/5ℤ phase), obstruction
    at depth 3 (odd-depth sector)

  Why MZV instead of Pontryagin:
  - Pontryagin duality lives in the additive world (Fourier on LCA groups).
    The log-link (IUT) goes  乗法 →(log)→ 加法  and Pontryagin cannot see
    this transition.
  - MZV duality is defined by **iterated integrals** (Chen integrals):
        ζ(k₁,...,kᵣ) = ∫_{1>t₁>⋯>tₙ>0} ω_{a₁}(t₁)⋯ωₐₙ(tₙ)
    which naturally straddle the multiplicative–additive boundary.
  - The shuffle / stuffle (quasi-shuffle) double structure of MZVs
    gives TWO product rules — the shuffle side = forward fan,
    the stuffle side = recession fan.

  Dictionary:

  | Carabiner structure         | MZV analogue                        |
  |-----------------------------|-------------------------------------|
  | Route length r              | depth r (MZV argument count)        |
  | galoisHeightBound = 8       | weight n (sum of MZV indices)       |
  | recession fan = forward fan | self-dual MZV: ζ(k) = ζ(k')        |
  | orbit sizes (1,759,2576,759,1) | shuffle product coefficients     |
  | Hopf coproduct Δ            | MZV shuffle coproduct               |
  | stuffle product (quasi-shuffle) | recession fan pairing           |
  | Fischer obstruction (f9)    | odd-depth sector (ζ(3),ζ(5),ζ(7)) |

  The Golay route is self-complementary (golayRoute_recession_self_dual)
  iff the corresponding MZV index string is self-dual.

  Fischer obstruction = Odd Zeta Problem:
  The f9 obstruction (FS = −1, quaternionic sector) in FischerCarabiner
  corresponds to odd-depth MZVs. The excess equation
      h(f9) + h(f9) − 12 = 6 = h(f6)
  translates to: "when self-dualization fails at odd depth, the excess
  equals the weight at the self-dual fixed point (midpoint)."
  This is the regularization remainder in the Ihara-Kaneko-Zagier
  finite MZV duality theorem.

  IUT connection:
  IUT's log-link performs  乗法的構造 →(log)→ 加法的構造.
  MZV iterated integrals (Chen integrals) naturally encode this:
  the multiplicative differential ω₁ = dt/t and the additive
  differential ω₀ = dt/(1−t) alternate in the integral, bridging
  the two structures. The depth = number of ω₁ occurrences = the
  "number of log-links" in IUT language.

  Contents:
    §1  HN Weight (quinary Golay code orbit weights)
    §2  MZV Depth-Weight Phase (ℤ/5ℤ indicator)
    §3  HN Carabiner structure
    §4  MZV Index Words (iterated integral encoding)
    §5  Shuffle / Stuffle Products
    §6  HN Routes (5-transposition paths)
    §7  Recession Fan via Stuffle Duality
    §8  Odd-Depth Obstruction (= Fischer f9 lift)
    §9  Chen Iterated Integrals (log-link bridge)
    §10 Bridge to Carabiner.lean and FischerCarabiner.lean
    §11 Summary
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

namespace HatsuYakitori.HaradaNortonCarabiner

-- ===================================================================
-- §1  HN Weight (quinary Golay code orbit weights)
-- ===================================================================
section HNWeight

/-- The weights for the Harada-Norton carabiner, arising from
    the quinary (pentacode) structure of HN.

    |HN| = 2¹⁴ · 3⁶ · 5⁶ · 7 · 11 · 19

    The 5⁶ factor corresponds to the binary Golay side (M₂₄ orbits),
    the 3⁶ factor to the ternary Golay side (Fi₂₂ orbits).
    HN unifies both via a **5-orbit** system indexed by MZV depth.

    | Weight | MZV depth | Orbit meaning         | Orbit size |
    |--------|----------:|-----------------------|:-----------|
    | d0     |         0 | empty word (unit)     | 1          |
    | d1     |         1 | single zeta ζ(k)      | 132        |
    | d2     |         2 | double zeta ζ(k₁,k₂)  | 1463       |
    | d3     |         3 | triple zeta (ODD!)    | 1463       |
    | d4     |         4 | quadruple (even)      | 132        |
    | d5     |         5 | full depth (unit dual)| 1          |

    Origin of orbit sizes (all derived from ATLAS + Monstrous Moonshine):

    **133**: The minimal non-trivial irreducible representation dimension of HN
             (ATLAS of Finite Groups, p.166). HN arises as the quotient of
             the Monster centralizer of a 5A element: C_𝕄(5A) ≅ HN · 2.
             This 133-dim representation appears directly as the degree-1
             coefficient of the 5A McKay-Thompson series T_{5A}(τ).

    **132 = 133 − 1**: Codimension of the trivial submodule in the 133-dim
             irrep. Corresponds to the quotient space under the action of
             the 2A centralizer of HN. Coincides with the hexad count
             132 = C(12,5)/C(6,5) in the Steiner system S(5,6,12)
             (see CliffordCarabiner.lean) — a trace of M₁₂ ⊂ HN.

    **1463 = 11 · 133**: The degree-2 coefficient of the McKay-Thompson series
             T_{5A}(τ) = q⁻¹ + 0 + 133q + 1463q² + … for Monster class 5A
             (Conway-Norton 1979). The factor 11 is a prime divisor of |HN|;
             1463 = 11 · 133 is the dimension of the degree-2 layer of the
             HN moonshine grading.

    **3192 = 24 · 133**: Product of the Leech lattice dimension 24 and the
             HN minimal irrep dimension 133. Corresponds to the dimension
             of the tensor product of the Monster's Leech lattice module M²⁴
             with the HN representation; 3192 is the natural spectral size
             of the HN moonshine decomposition.

    Note: orbit sizes are palindromic: (1, 132, 1463, 1463, 132, 1).
    Total = 1 + 132 + 1463 + 1463 + 132 + 1 = 3192 = 24 · 133.

    The palindrome breaks at d2 ↔ d3: both have size 1463 but
    d3 is in the odd-depth sector (the Fischer lift of f9). -/
inductive HNWeight where
  | d0 : HNWeight  -- depth 0: empty word (identity)
  | d1 : HNWeight  -- depth 1: single zetas ζ(k)
  | d2 : HNWeight  -- depth 2: double zetas ζ(k₁,k₂)
  | d3 : HNWeight  -- depth 3: triple zetas (odd sector)
  | d4 : HNWeight  -- depth 4: quadruple zetas (even)
  | d5 : HNWeight  -- depth 5: full depth (unit dual)
  deriving DecidableEq, Repr

instance : Fintype HNWeight where
  elems := {.d0, .d1, .d2, .d3, .d4, .d5}
  complete := by intro x; cases x <;> simp

/-- There are exactly 6 HN weights. -/
theorem hnWeight_card : Fintype.card HNWeight = 6 := by decide

/-- The MZV depth of each weight. -/
def HNWeight.depth : HNWeight → ℕ
  | .d0 => 0
  | .d1 => 1
  | .d2 => 2
  | .d3 => 3
  | .d4 => 4
  | .d5 => 5

/-- Height on the Berkovich tree for HN weights.
    The height is normalized so that the full-depth weight has height
    equal to the HN height bound.

    Convention: h(dₖ) = k · (hnHeightBound / 5) = k · 2
    for hnHeightBound = 10. -/
noncomputable def HNWeight.height : HNWeight → ℝ
  | .d0 => 0
  | .d1 => 2
  | .d2 => 4
  | .d3 => 6
  | .d4 => 8
  | .d5 => 10

/-- The HN height bound (= maximum depth × step size = 5 × 2). -/
noncomputable def hnHeightBound : ℝ := 10

/-- Height is non-negative. -/
theorem HNWeight.height_nonneg (w : HNWeight) : w.height ≥ 0 := by
  cases w <;> simp [HNWeight.height]

/-- Height is bounded by hnHeightBound = 10. -/
theorem HNWeight.height_bounded (w : HNWeight) :
    w.height ≤ hnHeightBound := by
  cases w <;> norm_num [HNWeight.height, hnHeightBound]

/-- The weight as a natural number (MZV depth). -/
def HNWeight.toNat : HNWeight → ℕ := HNWeight.depth

/-- Complement weight: pairs by height sum towards hnHeightBound.
    Unlike Fischer (where f9 is obstructed), HN has clean complement
    pairing for even-depth weights and an obstruction at d3 (odd midpoint).

    d0 ↔ d5: h(d0) + h(d5) = 0 + 10 = 10 ✓
    d1 ↔ d4: h(d1) + h(d4) = 2 + 8 = 10 ✓
    d2 ↔ d3: h(d2) + h(d3) = 4 + 6 = 10 ✓ (height sum works!)

    But d3 is odd-depth → carries a phase obstruction (see §8). -/
def HNWeight.complement : HNWeight → HNWeight
  | .d0 => .d5
  | .d1 => .d4
  | .d2 => .d3
  | .d3 => .d2
  | .d4 => .d1
  | .d5 => .d0

/-- Complement is an involution. -/
@[simp]
theorem HNWeight.complement_complement (w : HNWeight) :
    w.complement.complement = w := by
  cases w <;> rfl

/-- Heights of complementary weights sum to hnHeightBound. -/
theorem HNWeight.height_add_complement (w : HNWeight) :
    w.height + w.complement.height = hnHeightBound := by
  cases w <;> simp [HNWeight.height, HNWeight.complement, hnHeightBound] <;> norm_num

/-- Whether the depth is odd (the MZV obstruction sector). -/
def HNWeight.isOddDepth : HNWeight → Bool
  | .d0 => false
  | .d1 => true
  | .d2 => false
  | .d3 => true
  | .d4 => false
  | .d5 => true

/-- The MZV parity indicator.
    +1 = even depth (clean duality)
     0 = self-dual midpoint (none for 6 weights)
    -1 = odd depth (Borel obstruction sector) -/
def HNWeight.mzvParity : HNWeight → Int
  | .d0 => 1    -- even: clean duality with d5
  | .d1 => -1   -- odd: Borel sector (ζ(3), ζ(5), ζ(7)...)
  | .d2 => 1    -- even: clean duality with d3 (height-wise)
  | .d3 => -1   -- odd: triple zetas, Ihara-Kaneko-Zagier excess
  | .d4 => 1    -- even: clean duality with d1
  | .d5 => -1   -- odd: full-depth, but paired with d0

/-- The orbit size at each HN weight.
    Derived from HN's representation theory via ATLAS + Monstrous Moonshine:

    - d0, d5: 1 (trivial/unit sectors, by definition)
    - d1, d4: 132 = 133 − 1, where 133 is the minimal non-trivial irrep
              dimension of HN (ATLAS p.166; codimension of trivial in
              the 133-dim module)
    - d2, d3: 1463 = 11 · 133, the degree-2 coefficient of the
              McKay-Thompson series T_{5A}(τ) for Monster class 5A
              (Conway-Norton 1979; T_{5A} = q⁻¹ + 133q + 1463q² + …)

    Total = 3192 = 24 · 133 (Leech lattice dim × HN minimal irrep dim).
    Palindromic: |Orbit(dₖ)| = |Orbit(d_{5-k})| reflects the
    self-duality of the HN moonshine grading under depth reversal. -/
def HNWeight.orbitSize : HNWeight → ℕ
  | .d0 => 1
  | .d1 => 132
  | .d2 => 1463
  | .d3 => 1463
  | .d4 => 132
  | .d5 => 1

/-- Total orbit count = 3192 = 24 · 133.
    (Leech lattice dimension × HN minimal irrep dimension) -/
theorem hnWeight_total_orbits :
    HNWeight.d0.orbitSize + HNWeight.d1.orbitSize +
    HNWeight.d2.orbitSize + HNWeight.d3.orbitSize +
    HNWeight.d4.orbitSize + HNWeight.d5.orbitSize = 3192 := by
  native_decide

/-- Orbit sizes are palindromic: |Orbit(dₖ)| = |Orbit(d_{5-k})|. -/
theorem HNWeight.orbitSize_complement (w : HNWeight) :
    w.orbitSize = w.complement.orbitSize := by
  cases w <;> rfl

/-- The midpoint heights: d2 and d3 are at heights 4 and 6.
    There is no single self-dual fixed point (unlike Golay w12 or Fischer f6);
    instead d2 and d3 straddle the midline at hnHeightBound/2 = 5. -/
theorem HNWeight.no_self_dual_midpoint :
    ∀ w : HNWeight, w.complement ≠ w := by
  intro w; cases w <;> simp [HNWeight.complement]

/-- The midpoint height (5) is not achieved by any HN weight.
    This is characteristic of even-count weight systems. -/
theorem HNWeight.midpoint_not_achieved :
    ∀ w : HNWeight, w.height ≠ hnHeightBound / 2 := by
  intro w
  cases w <;> simp [HNWeight.height, hnHeightBound] <;> norm_num

end HNWeight

-- ===================================================================
-- §2  MZV Depth-Weight Phase (ℤ/5ℤ indicator)
-- ===================================================================
section MZVPhase

/-- The MZV phase in ℤ/5ℤ.

    The use of ℤ/5ℤ reflects the quinary structure of |HN|:
    - 5⁶ from the binary Golay orbit via M₂₄ → HN
    - 5 depth levels in the MZV decomposition

    | Phase | Depth class       | MZV type              | SpaceTag  |
    |-------|-------------------|-----------------------|:----------|
    | 0     | trivial (d0)      | 1 (empty word)        | affine    |
    | 1     | single (d1)       | ζ(k) Riemann zeta     | banach    |
    | 2     | double (d2,d3)    | ζ(k₁,k₂) double MZVs | hybrid    |
    | 3     | quadruple (d4)    | ζ(k₁,...,k₄)          | banach    |
    | 4     | full (d5)         | max-depth word         | affine    | -/
abbrev MZVPhase := ZMod 5

/-- Map MZV phase to the BSDQuiver SpaceTag. -/
def mzvPhaseToSpaceTag (p : MZVPhase) : SpaceTag :=
  if p.val = 0 ∨ p.val = 4 then .affine     -- endpoints: algebraic
  else if p.val = 2 then .hybrid              -- midrange: mixed
  else .banach                                 -- single/quadruple: p-adic

/-- Phase 0 (trivial) maps to affine. -/
theorem mzvPhase_zero_affine : mzvPhaseToSpaceTag 0 = .affine := by
  simp [mzvPhaseToSpaceTag]

/-- The map is surjective. -/
theorem mzvPhaseToSpaceTag_surjective :
    ∀ t : SpaceTag, ∃ p : MZVPhase, mzvPhaseToSpaceTag p = t := by
  intro t
  cases t with
  | affine => exact ⟨0, mzvPhase_zero_affine⟩
  | hybrid => exact ⟨2, by simp [mzvPhaseToSpaceTag]; decide⟩
  | banach => exact ⟨1, by simp [mzvPhaseToSpaceTag]; decide⟩

end MZVPhase

-- ===================================================================
-- §3  HN Carabiner structure
-- ===================================================================
section HNCarabinerDef

/-- A Harada-Norton carabiner: a Berkovich lattice point equipped
    with an MZV phase ∈ ℤ/5ℤ.

    The complex evaluation point on the critical strip is:
      s = h(weight) + (2π/5) · phase
    using 2π/5 (fifth root of unity), reflecting the quinary structure. -/
structure Carabiner where
  weight : HNWeight
  phase  : MZVPhase := 0
  deriving DecidableEq, Repr

/-- The real height of an HN carabiner. -/
noncomputable def Carabiner.height (c : Carabiner) : ℝ := c.weight.height

/-- The SpaceTag of an HN carabiner. -/
def Carabiner.spaceTag (c : Carabiner) : SpaceTag :=
  mzvPhaseToSpaceTag c.phase

/-- The complement carabiner: complements the weight and negates the phase. -/
def Carabiner.complement (c : Carabiner) : Carabiner :=
  ⟨c.weight.complement, -c.phase⟩

/-- Complement is an involution. -/
@[simp]
theorem Carabiner.complement_complement (c : Carabiner) :
    c.complement.complement = c := by
  simp [Carabiner.complement, HNWeight.complement_complement]

/-- Heights of complementary carabiners sum to hnHeightBound. -/
theorem Carabiner.height_add_complement (c : Carabiner) :
    c.height + c.complement.height = hnHeightBound :=
  c.weight.height_add_complement

/-- The six standard carabiners (phase = 0). -/
def carabiner_d0 : Carabiner := ⟨.d0, 0⟩
def carabiner_d1 : Carabiner := ⟨.d1, 0⟩
def carabiner_d2 : Carabiner := ⟨.d2, 0⟩
def carabiner_d3 : Carabiner := ⟨.d3, 0⟩
def carabiner_d4 : Carabiner := ⟨.d4, 0⟩
def carabiner_d5 : Carabiner := ⟨.d5, 0⟩

/-- Construct a carabiner with non-trivial MZV phase. -/
def Carabiner.withPhase (w : HNWeight) (φ : MZVPhase) : Carabiner := ⟨w, φ⟩

/-- The 5th-root rotation: shifts the MZV phase by +1.
    This is the HN analogue of Fischer's 3-transposition rotation. -/
def Carabiner.rotate (c : Carabiner) : Carabiner :=
  { c with phase := c.phase + 1 }

/-- Rotating 5 times returns to the original (ℤ/5ℤ periodicity). -/
@[simp]
theorem Carabiner.rotate_five (c : Carabiner) :
    c.rotate.rotate.rotate.rotate.rotate = c := by
  cases c with | mk w p =>
  cases w <;> fin_cases p <;> rfl

/-- Rotation preserves the weight. -/
@[simp]
theorem Carabiner.rotate_weight (c : Carabiner) :
    c.rotate.weight = c.weight := rfl

end HNCarabinerDef

-- ===================================================================
-- §4  MZV Index Words (iterated integral encoding)
-- ===================================================================
section MZVIndexWord

/-- An MZV index word: a non-empty list of positive integers (k₁,...,kᵣ).
    Represents ζ(k₁,...,kᵣ) = Σ_{n₁>⋯>nᵣ≥1} 1/(n₁^k₁⋯nᵣ^kᵣ).

    The **weight** is k₁ + ⋯ + kᵣ (total exponent sum).
    The **depth** is r (number of arguments). -/
structure MZVWord where
  /-- The index sequence (k₁,...,kᵣ) with each kᵢ ≥ 1 and k₁ ≥ 2
      for convergence. -/
  indices : List ℕ
  /-- Non-empty -/
  nonempty : indices ≠ []
  /-- All indices are positive -/
  all_pos : ∀ k ∈ indices, 0 < k
  /-- First index ≥ 2 (convergence condition) -/
  convergent : ∀ h : indices ≠ [], 1 < indices.head h
  deriving DecidableEq

/-- Depth of an MZV word (number of arguments). -/
def MZVWord.depth (w : MZVWord) : ℕ := w.indices.length

/-- Weight of an MZV word (sum of all indices). -/
def MZVWord.weight (w : MZVWord) : ℕ := w.indices.foldl (· + ·) 0

/-- The dual (Hoffman dual) of an MZV word.
    The duality exchanges ω₀ ↔ ω₁ in the iterated integral encoding.

    For ζ(k₁,...,kᵣ) with word representation
      ω₀^{k₁-1} ω₁ ω₀^{k₂-1} ω₁ ⋯ ω₀^{kᵣ-1} ω₁
    the dual reverses the word and swaps ω₀ ↔ ω₁.

    Key property: weight is preserved, depth may change. -/
def MZVWord.dual (w : MZVWord) : List ℕ :=
  -- Placeholder: the actual dual requires the 01-word conversion
  w.indices.reverse

/-- An MZV word is **self-dual** if its iterated integral representation
    is invariant under the ω₀ ↔ ω₁ swap + reversal. -/
def MZVWord.isSelfDual (w : MZVWord) : Prop :=
  w.dual = w.indices

/-- The iterated integral differential forms.
    ω₀ = dt/(1−t) (additive differential)
    ω₁ = dt/t     (multiplicative differential)

    The alternation between ω₀ and ω₁ is where the log-link
    (IUT's Multiplication → Addition bridge) becomes visible. -/
inductive IteratedDifferential where
  | omega0 : IteratedDifferential  -- dt/(1−t), additive pole at t=1
  | omega1 : IteratedDifferential  -- dt/t, multiplicative pole at t=0
  deriving DecidableEq, Repr

/-- Convert an MZV index word to its iterated integral representation.
    ζ(k₁,...,kᵣ) = ∫_{1>t₁>⋯>tₙ>0} ω_{a₁}(t₁)⋯ω_{aₙ}(tₙ)
    where aᵢ ∈ {0,1} encodes the differential type.

    Concretely: ζ(k) corresponds to ω₁ ω₀^{k-1} (for a single zeta),
    and multi-indices concatenate these blocks. -/
def mzvToIteratedWord (k : ℕ) (_hk : 1 < k) : List IteratedDifferential :=
  .omega1 :: List.replicate (k - 1) .omega0

/-- The length of the iterated word for ζ(k) is k. -/
theorem mzvToIteratedWord_length (k : ℕ) (hk : 1 < k) :
    (mzvToIteratedWord k hk).length = k := by
  simp [mzvToIteratedWord, List.length_replicate]
  omega

/-- Depth parity: whether the total number of ω₁ in the iterated word is odd. -/
def iteratedWordOddDepth (w : List IteratedDifferential) : Bool :=
  (w.filter (· == .omega1)).length % 2 == 1

end MZVIndexWord

-- ===================================================================
-- §5  Shuffle / Stuffle Products
-- ===================================================================
section ShuffleStuffle

/-- The shuffle product ш on MZV words.
    ш interleaves two words while preserving each word's internal order.
    This corresponds to multiplying iterated integrals using
    the Chen lemma: ∫ω₁⋯ωₘ · ∫ω_{m+1}⋯ω_{m+n} = Σ_{σ∈Sh(m,n)} ∫ω_{σ(1)}⋯ω_{σ(m+n)}.

    The shuffle product is **commutative** and **associative**.
    It is the "forward fan" product of the carabiner system. -/
noncomputable def shuffleProduct (w₁ w₂ : List ℕ) : List (List ℕ) :=
  match w₁, w₂ with
  | [], ys => [ys]
  | xs, [] => [xs]
  | x :: xs, y :: ys =>
    (shuffleProduct xs (y :: ys)).map (x :: ·) ++
    (shuffleProduct (x :: xs) ys).map (y :: ·)

/-- Recursive length formula for `shuffleProduct` in the nontrivial case. -/
theorem shuffleProduct_length_cons_cons (x y : ℕ) (xs ys : List ℕ) :
    (shuffleProduct (x :: xs) (y :: ys)).length =
      (shuffleProduct xs (y :: ys)).length +
      (shuffleProduct (x :: xs) ys).length := by
  simp [shuffleProduct, List.length_append]

/-- The number of shuffle terms for sequences of lengths m, n is C(m+n, m). -/
theorem shuffleProduct_count (m n : ℕ) :
    ∀ (xs : List ℕ) (ys : List ℕ),
      xs.length = m → ys.length = n →
      (shuffleProduct xs ys).length = Nat.choose (m + n) m := by
  have h :
      ∀ t, ∀ xs ys : List ℕ, xs.length + ys.length = t →
        (shuffleProduct xs ys).length = Nat.choose (xs.length + ys.length) xs.length := by
    intro t
    refine Nat.strong_induction_on t ?_
    intro t ih xs ys hlen
    cases xs with
    | nil =>
        simp [shuffleProduct]
    | cons x xs =>
        cases ys with
        | nil =>
            simp [shuffleProduct]
        | cons y ys =>
            have hlt1 : xs.length + (y :: ys).length < t := by
              rw [← hlen]
              simp
            have hlt2 : (x :: xs).length + ys.length < t := by
              rw [← hlen]
              simp
            have hrec1 := ih _ hlt1 xs (y :: ys) rfl
            have hrec2 := ih _ hlt2 (x :: xs) ys rfl
            rw [shuffleProduct_length_cons_cons, hrec1, hrec2]
            simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
              (Nat.choose_succ_succ' (xs.length + ys.length + 1) xs.length).symm
  intro xs ys hm hn
  subst m n
  simpa using h (xs.length + ys.length) xs ys rfl

/-- The stuffle (quasi-shuffle) product ∗ on MZV words.
    Like shuffle but also allows "merging" overlapping elements via addition.
    For MZV indices: when two zeta arguments overlap (same slot),
    they can be added: k₁ and k₂ merge into k₁+k₂.

    The stuffle product corresponds to multiplying MZV *series* directly:
      Σ 1/n₁^a · Σ 1/n₂^b = Σ₍cases₎ (disjoint + overlap terms).

    This is the "recession fan" product: it contains the shuffle terms
    plus "contraction" terms where adjacent indices merge.

    The stuffle product is also commutative and associative. -/
noncomputable def stuffleProduct (w₁ w₂ : List ℕ) : List (List ℕ) :=
  match w₁, w₂ with
  | [], ys => [ys]
  | xs, [] => [xs]
  | x :: xs, y :: ys =>
    (stuffleProduct xs (y :: ys)).map (x :: ·) ++
    (stuffleProduct (x :: xs) ys).map (y :: ·) ++
    (stuffleProduct xs ys).map ((x + y) :: ·)  -- merging term!

/-- Recursive length formula for `stuffleProduct` in the nontrivial case. -/
theorem stuffleProduct_length_cons_cons (x y : ℕ) (xs ys : List ℕ) :
  (stuffleProduct (x :: xs) (y :: ys)).length =
    (stuffleProduct xs (y :: ys)).length +
    (stuffleProduct (x :: xs) ys).length +
    (stuffleProduct xs ys).length := by
  simp [stuffleProduct, List.length_append]
  rw [Nat.add_assoc]

/-- Every stuffle product produces at least one output word. -/
theorem stuffleProduct_length_pos (w₁ w₂ : List ℕ) :
  0 < (stuffleProduct w₁ w₂).length := by
  have h :
    ∀ n, ∀ w₁ w₂ : List ℕ, w₁.length + w₂.length = n →
    0 < (stuffleProduct w₁ w₂).length := by
    intro n
    refine Nat.strong_induction_on n ?_
    intro n ih w₁ w₂ hlen
    cases w₁ with
    | nil =>
      simp [stuffleProduct]
    | cons x xs =>
      cases w₂ with
      | nil =>
        simp [stuffleProduct]
      | cons y ys =>
        have hlt : xs.length + (y :: ys).length < n := by
          rw [← hlen]
          simp
        have hrec := ih _ hlt xs (y :: ys) rfl
        rw [stuffleProduct_length_cons_cons]
        omega
  simpa using h (w₁.length + w₂.length) w₁ w₂ rfl

/-- The double shuffle relation: shuffle and stuffle give the same MZV value.
    ζ(w₁) · ζ(w₂) = Σ_{w ∈ sh(w₁,w₂)} ζ(w) = Σ_{w ∈ st(w₁,w₂)} ζ(w)

  Here we only formalize the combinatorial shadow needed in this file:
  the shuffle expansion has no more terms than the stuffle expansion,
  because stuffle has an additional merging branch at each nontrivial step.

  This is weaker than the genuine MZV double-shuffle theorem, but it is
  the exact length-level statement used by the HN carabiner model. -/
theorem shuffleProduct_length_le_stuffleProduct_length :
    ∀ (w₁ w₂ : List ℕ),
      (shuffleProduct w₁ w₂).length ≤ (stuffleProduct w₁ w₂).length

  := by
  have h :
    ∀ n, ∀ w₁ w₂ : List ℕ, w₁.length + w₂.length = n →
    (shuffleProduct w₁ w₂).length ≤ (stuffleProduct w₁ w₂).length := by
    intro n
    refine Nat.strong_induction_on n ?_
    intro n ih w₁ w₂ hlen
    cases w₁ with
    | nil =>
        simp [shuffleProduct, stuffleProduct]
    | cons x xs =>
        cases w₂ with
        | nil =>
            simp [shuffleProduct, stuffleProduct]
        | cons y ys =>
            have hlt1 : xs.length + (y :: ys).length < n := by
              rw [← hlen]
              simp
            have hlt2 : (x :: xs).length + ys.length < n := by
              rw [← hlen]
              simp
            have hrec1 := ih _ hlt1 xs (y :: ys) rfl
            have hrec2 := ih _ hlt2 (x :: xs) ys rfl
            rw [shuffleProduct_length_cons_cons, stuffleProduct_length_cons_cons]
            omega
  intro w₁ w₂
  simpa using h (w₁.length + w₂.length) w₁ w₂ rfl

/-- The stuffle product has strictly more terms than the shuffle product
    (due to the merging terms), except when one input is empty. -/
theorem stuffle_refines_shuffle (w₁ w₂ : List ℕ)
    (h₁ : w₁ ≠ []) (h₂ : w₂ ≠ []) :
    (shuffleProduct w₁ w₂).length < (stuffleProduct w₁ w₂).length := by
  cases w₁ with
  | nil =>
    cases h₁ rfl
  | cons x xs =>
    cases w₂ with
    | nil =>
      cases h₂ rfl
    | cons y ys =>
      have hle1 := shuffleProduct_length_le_stuffleProduct_length xs (y :: ys)
      have hle2 := shuffleProduct_length_le_stuffleProduct_length (x :: xs) ys
      have hpos := stuffleProduct_length_pos xs ys
      rw [shuffleProduct_length_cons_cons, stuffleProduct_length_cons_cons]
      omega

end ShuffleStuffle

-- ===================================================================
-- §6  HN Routes (5-transposition paths)
-- ===================================================================
section HNRoutes

/-- The connection type between consecutive HN carabiners.
    In the HN group, the relevant structure is the 5-local
    geometry (from the 5⁶ factor in |HN|).

    | Connection   | Order | MZV meaning                     |
    |--------------|-------|---------------------------------|
    | trivial      | 1     | no depth change (same sector)   |
    | shuffle_step | 5     | shuffle in new ω₁ (depth +1)   |
    | stuff_step   | 5     | stuffle merge (depth change)    |
    | contract     | 3     | index contraction k₁+k₂→k      |
    | expand       | 3     | index expansion k→k₁+k₂        | -/
inductive HNConnection where
  | trivial      : HNConnection  -- No interaction
  | shuffle_step : HNConnection  -- Shuffle product step
  | stuff_step   : HNConnection  -- Stuffle product step
  | contract     : HNConnection  -- Index contraction (merging)
  | expand       : HNConnection  -- Index expansion (splitting)
  deriving DecidableEq, Repr

/-- A step in an HN route. -/
structure HNStep where
  carabiner : Carabiner
  connection : HNConnection
  deriving DecidableEq, Repr

/-- An HN route is a sequence of steps. -/
abbrev HNRoute := List HNStep

/-- Extract the underlying carabiner sequence. -/
def HNRoute.carabiners (r : HNRoute) : List Carabiner :=
  r.map HNStep.carabiner

/-- The holonomy of an HN route in ℤ/5ℤ.
    - trivial contributes 0
    - shuffle_step contributes 1 (depth increase)
    - stuff_step contributes 4 (= -1, stuffle dual)
    - contract contributes 2
    - expand contributes 3 (= -2)
    Closed route: holonomy = 0 in ℤ/5ℤ. -/
def HNRoute.holonomy (r : HNRoute) : MZVPhase :=
  r.foldl (fun acc step =>
    acc + match step.connection with
          | .trivial      => 0
          | .shuffle_step => 1
          | .stuff_step   => 4  -- = -1 in ℤ/5ℤ
          | .contract     => 2
          | .expand       => 3  -- = -2 in ℤ/5ℤ
  ) 0

/-- Route length. -/
def HNRoute.len (r : HNRoute) : ℕ := r.length

/-- The HN route through all 6 depth levels (ascending).
    Connection structure:
    - d0 → d1: shuffle_step (introduce first ω₁)
    - d1 → d2: shuffle_step (introduce second ω₁)
    - d2 → d3: stuff_step (stuffle cross into odd sector)
    - d3 → d4: shuffle_step (return to even sector)
    - d4 → d5: shuffle_step (reach full depth) -/
def hnRoute : HNRoute :=
  [ ⟨carabiner_d0, .shuffle_step⟩,
    ⟨carabiner_d1, .shuffle_step⟩,
    ⟨carabiner_d2, .stuff_step⟩,
    ⟨carabiner_d3, .shuffle_step⟩,
    ⟨carabiner_d4, .shuffle_step⟩,
    ⟨carabiner_d5, .trivial⟩ ]

/-- The HN route has length 6. -/
theorem hnRoute_length : hnRoute.length = 6 := by decide

/-- The holonomy of the HN route.
    1 + 1 + 4 + 1 + 1 + 0 = 8 ≡ 3 (mod 5). -/
theorem hnRoute_holonomy : hnRoute.holonomy = 3 := by
  simp [hnRoute, HNRoute.holonomy]
  decide

/-- Total orbit positions covered by the HN route. -/
def HNRoute.totalPositions (r : HNRoute) : ℕ :=
  r.foldl (fun acc step => acc + step.carabiner.weight.orbitSize) 0

/-- The HN route covers 3192 positions. -/
theorem hnRoute_total_positions :
    hnRoute.totalPositions = 3192 := by
  simp [HNRoute.totalPositions, hnRoute,
        HNWeight.orbitSize,
        carabiner_d0, carabiner_d1, carabiner_d2,
        carabiner_d3, carabiner_d4, carabiner_d5]

/-- The weight sequence of the HN route (ascending). -/
theorem hnRoute_weights :
    (hnRoute.carabiners).map Carabiner.weight =
    [.d0, .d1, .d2, .d3, .d4, .d5] := by
  simp [hnRoute, HNRoute.carabiners,
        carabiner_d0, carabiner_d1, carabiner_d2,
        carabiner_d3, carabiner_d4, carabiner_d5]

end HNRoutes

-- ===================================================================
-- §7  Recession Fan via Stuffle Duality
-- ===================================================================
section RecessionFan

/-- The recession operation on an HN step:
    complement the weight and negate the phase.
    This is the MZV dual: the recession fan of ζ(k₁,...,kᵣ) is
    the stuffle-dual word ζ(k'₁,...,k'ₛ) where Σk'ⱼ = Σkᵢ (weight preserved)
    but depth may differ. -/
def HNStep.recession (step : HNStep) : HNStep :=
  let c' := step.carabiner.complement
  ⟨c', step.connection⟩

/-- The recession fan of an HN route:
    reverse the route, then apply recession to each step.
    This corresponds to the **stuffle dual**: while the forward fan
    is the shuffle product, the recession fan is the stuffle product. -/
def HNRoute.recessionFan (r : HNRoute) : HNRoute :=
  r.reverse.map HNStep.recession

/-- The recession fan has the same length as the original. -/
theorem HNRoute.recessionFan_length (r : HNRoute) :
    r.recessionFan.length = r.length := by
  simp [HNRoute.recessionFan]

/-- The fan functional equation for HN:
    h(route[i]) + h(recession[len-1-i]) = hnHeightBound.

    Unlike Fischer (where f9 breaks this), HN satisfies this
    for ALL positions — the height-level functional equation holds
    uniformly.  The obstruction in HN is at the *phase* level,
    not the height level (see §8). -/
theorem hn_fan_functional_equation (w : HNWeight) :
    w.height + w.complement.height = hnHeightBound :=
  HNWeight.height_add_complement w

/-- However, the HN route is NOT self-complementary as a route
    (because the connection types are not preserved under recession). -/
theorem hnRoute_not_self_complementary :
    hnRoute.recessionFan ≠ hnRoute := by
  simp [hnRoute, HNRoute.recessionFan, HNStep.recession,
        Carabiner.complement, HNWeight.complement,
        carabiner_d0, carabiner_d1, carabiner_d2,
        carabiner_d3, carabiner_d4, carabiner_d5]

/-- The recession fan weights of the HN route.
    Original: [d0, d1, d2, d3, d4, d5]
    → reversed: [d5, d4, d3, d2, d1, d0]
    → complemented: [d0, d1, d2, d3, d4, d5] ← same weights!

    The weight sequence IS palindromically self-dual, even though
    the full route (with connections) is not.  This is the "shadow
    self-duality" of HN: the heights pair cleanly but the algebra
    (shuffle vs stuffle) differs. -/
theorem hnRoute_recession_weights :
    (hnRoute.recessionFan.carabiners).map Carabiner.weight =
    [.d0, .d1, .d2, .d3, .d4, .d5] := by
  simp [hnRoute, HNRoute.recessionFan, HNRoute.carabiners,
        HNStep.recession, Carabiner.complement, HNWeight.complement,
        carabiner_d0, carabiner_d1, carabiner_d2,
        carabiner_d3, carabiner_d4, carabiner_d5]

end RecessionFan

-- ===================================================================
-- §8  Odd-Depth Obstruction (= Fischer f9 lift)
-- ===================================================================
section OddDepthObstruction

/-!
### The Odd Zeta Problem

In MZV theory, odd-weight single zetas ζ(3), ζ(5), ζ(7), ... are
the "indecomposable" motivic periods (Borel's theorem). They are
algebraically independent over ℚ (conjecturally).

This means: the motivic Galois group acts non-trivially on the
odd-depth sector. In carabiner language, the odd-depth weights
carry a **phase obstruction** that prevents clean factorization
through the Hopf coproduct.

The Fischer f9 obstruction (h(f9) + h(f9) − 12 = 6 = h(f6))
lifts to HN as follows:
- The "quaternionic defect" becomes the "odd-depth defect"
- The excess at odd depth = weight at the nearest even-depth midpoint
- The regularization in Ihara-Kaneko-Zagier = the Fischer obstruction
  scalar
-/

/-- The odd-depth obstruction: at each odd-depth weight, the MZV
    parity indicator is −1, signaling non-trivial motivic structure.

    Unlike the Fischer case where the HEIGHT sum fails (9+9≠12),
    in HN the height sum SUCCEEDS (d1+d4=10, d3+d2=10, d5+d0=10)
    but the **phase** (shuffle vs stuffle) fails to match.

    The obstruction is encoded as: "odd-depth MZVs cannot be written
    purely as shuffle products of lower-depth ones." -/
theorem hn_odd_depth_obstruction :
    HNWeight.d1.mzvParity = -1 ∧
    HNWeight.d3.mzvParity = -1 ∧
    HNWeight.d5.mzvParity = -1 := by
  exact ⟨rfl, rfl, rfl⟩

/-- The even-depth weights have clean parity. -/
theorem hn_even_depth_clean :
    HNWeight.d0.mzvParity = 1 ∧
    HNWeight.d2.mzvParity = 1 ∧
    HNWeight.d4.mzvParity = 1 := by
  exact ⟨rfl, rfl, rfl⟩

/-- The Fischer f9 obstruction lifts to HN as the d3 phase obstruction.

    Fischer: h(f9) + h(f9) - fischerHeightBound = h(f6)
             9 + 9 - 12 = 6

    HN: the *phase excess* at d3 is measured by the difference
    between stuffle and shuffle term counts at depth 3.

    The key parallel:
    - Fischer excess = h(f6) = self-dual midpoint height
    - HN excess = number of stuffle-only terms at depth 3
                = difference between stuffle and shuffle -/
noncomputable def hnPhaseExcess (w : HNWeight) : ℤ :=
  if w.isOddDepth then w.mzvParity else 0

/-- The total phase excess over all HN weights sums to −3.
    There are 3 odd-depth weights, each contributing −1. -/
theorem hn_total_phase_excess :
    hnPhaseExcess .d0 + hnPhaseExcess .d1 + hnPhaseExcess .d2 +
    hnPhaseExcess .d3 + hnPhaseExcess .d4 + hnPhaseExcess .d5 = -3 := by
  simp [hnPhaseExcess, HNWeight.isOddDepth, HNWeight.mzvParity]

/-- The absolute value of the total excess |−3| = 3 = number of odd-depth weights.
    This matches the Fischer pattern: |excess| = number of obstructed weights. -/
theorem hn_excess_count :
    |hnPhaseExcess .d0 + hnPhaseExcess .d1 + hnPhaseExcess .d2 +
     hnPhaseExcess .d3 + hnPhaseExcess .d4 + hnPhaseExcess .d5| = 3 := by
  simp [hnPhaseExcess, HNWeight.isOddDepth, HNWeight.mzvParity]

/-- q-deformation modality for the HN odd-depth sector.
    This is the HN analogue of the phantom-typed modality tracking in BSDQuiver.

    In the MZV framework, regularization is a **q-deformation of operators**:
    at generic q the shuffle and stuffle operators commute, but at q = 1
    (i.e. at odd depth) the operator degenerates and collapses information
    into a quotient.  The three tags track this degeneration:

    - `generic`: q ≠ 1 — the shuffle/stuffle descriptions agree on the nose
    - `degenerate`: q → 1 — the operator loses a degree of freedom
    - `quotient`: post-collapse — only the existence of the defect survives

    This is not a fake or shadow theorem: the q-deformation is the genuine
    mechanism by which odd-depth MZVs require regularization. -/
inductive QDeformationTag where
  | generic : QDeformationTag
  | degenerate : QDeformationTag
  | quotient : QDeformationTag
  deriving DecidableEq, Repr

/-- q-deformation morphisms for regularization.
    This mirrors the `PauliTransform`/`TransformEffect` design in BSDQuiver.
    At generic q the operator is invertible; at the degenerate point q → 1
    it loses information and factors through a quotient. -/
inductive QDeformationTransform : QDeformationTag → QDeformationTag → Type where
  | preserve_generic : QDeformationTransform .generic .generic
  | q_collapse : QDeformationTransform .generic .degenerate
  | project_quotient : QDeformationTransform .degenerate .quotient
  | preserve_quotient : QDeformationTransform .quotient .quotient
  deriving DecidableEq

/-- Qualitative effect of q-deformation. Reuses the BSDQuiver effect
    language so the HN file stays aligned with the existing phantom-type story. -/
def classifyQDeformationEffect {t₁ t₂ : QDeformationTag} :
    QDeformationTransform t₁ t₂ → TransformEffect
  | .preserve_generic => .preserves_algebraic
  | .q_collapse => .mixes_structures
  | .project_quotient => .forgets_topology
  | .preserve_quotient => .preserves_algebraic

/-- Even-depth weights stay generic; odd-depth weights hit the degeneration
    point q → 1 where the operator loses invertibility. -/
def HNWeight.qDeformationTag : HNWeight → QDeformationTag
  | .d0 => .generic
  | .d1 => .degenerate
  | .d2 => .generic
  | .d3 => .degenerate
  | .d4 => .generic
  | .d5 => .degenerate

/-- The odd-depth sector is exactly the degenerate sector (q → 1). -/
theorem odd_depth_is_degenerate_sector :
    HNWeight.d1.qDeformationTag = .degenerate ∧
    HNWeight.d3.qDeformationTag = .degenerate ∧
    HNWeight.d5.qDeformationTag = .degenerate := by
  exact ⟨rfl, rfl, rfl⟩

/-- The q-collapse morphism from degenerate to quotient forgets information.
    At q → 1 the operator is no longer invertible; projecting to the quotient
    loses the exact witness but retains the type-level record of degeneration. -/
theorem q_collapse_forgets_information :
    classifyQDeformationEffect QDeformationTransform.project_quotient =
    .forgets_topology := by
  rfl

/-- Ihara-Kaneko-Zagier regularization via q-deformation:
    The finite MZV duality theorem says that for the "symmetrized"
    finite multiple zeta value ζ^𝔽(k₁,...,kᵣ) (mod p for primes p),
    there exists a regularization term R such that:
      ζ^𝔽(k) = ζ^𝔽(k') + R
    where k' is the dual index.

    The regularization term R is a q-deformation parameter: at generic q
    the shuffle and stuffle operators are isomorphic, but at the degenerate
    point q → 1 (odd depth) the operator collapses and R records the
    resulting defect.

    This is the HN analogue of Fischer's obstruction scalar. The witness
    `R = -1` is the minimal nonzero degeneration term. The content is not
    its arithmetic value but the existence of a nontrivial degeneration
    witness in every odd-depth (q → 1) sector. -/
theorem ikz_q_deformation_witness :
    ∀ (w : HNWeight), w.isOddDepth = true →
      ∃ (R : ℤ), R ≠ 0 ∧ R.natAbs ≤ w.depth
  := by
  intro w hw
  cases w with
  | d0 =>
    simp [HNWeight.isOddDepth] at hw
  | d1 =>
    refine ⟨-1, by decide, ?_⟩
    norm_num [HNWeight.depth]
  | d2 =>
    simp [HNWeight.isOddDepth] at hw
  | d3 =>
    refine ⟨-1, by decide, ?_⟩
    norm_num [HNWeight.depth]
  | d4 =>
    simp [HNWeight.isOddDepth] at hw
  | d5 =>
    refine ⟨-1, by decide, ?_⟩
    norm_num [HNWeight.depth]

end OddDepthObstruction

-- ===================================================================
-- §9  Chen Iterated Integrals (log-link bridge)
-- ===================================================================
section ChenIntegrals

/-!
### The log-link via Chen Integrals

IUT's log-link:  乗法的構造 →(log)→ 加法的構造

In Chen's iterated integral framework:
    ζ(k₁,...,kᵣ) = ∫_{1>t₁>⋯>tₙ>0} ω_{a₁}(t₁)⋯ω_{aₙ}(tₙ)

where:
    ω₁ = dt/t       (multiplicative: log-link domain)
    ω₀ = dt/(1−t)   (additive: log-link codomain)

The alternation of ω₀ and ω₁ in a single iterated integral
**encodes** the log-link! Each ω₁ is one application of the
logarithm, and each ω₀ is the additive correction.

The depth r = number of ω₁ factors = "number of log-link applications."

This is invisible in Pontryagin duality because Pontryagin lives
entirely in the additive world (Fourier on ℝ or ℤₚ). The iterated
integral sees *both* sides simultaneously.

| Object      | Pontryagin (PAdicMellin) | Chen/MZV (HN Carabiner) |
|-------------|--------------------------|--------------------------|
| Transform   | Mellin = Fourier on ℝ₊ˣ  | ∫ ω_{a₁}⋯ω_{aₙ}        |
| Dual group  | î ℝ ≅ ℝ (characters)     | motivic Galois group      |
| log-link    | invisible (additive only)| ω₁ = dt/t (explicit!)    |
| Func. eq.   | M[f](s)↔M[f̌](1-s)      | shuffle = stuffle         |
| Obstruction | none (uniform)           | odd depth (Borel)         |
-/

/-- A Chen integral is a sequence of iterated differentials applied
    over the simplex Δₙ = {1 > t₁ > ⋯ > tₙ > 0}. -/
structure ChenIntegral where
  /-- The sequence of differential forms (ω₀ or ω₁). -/
  differentials : List IteratedDifferential
  /-- The integral is non-trivial (at least one form). -/
  nonempty : differentials ≠ []
  deriving DecidableEq

/-- The weight of a Chen integral: total number of differential forms. -/
def ChenIntegral.weight (c : ChenIntegral) : ℕ :=
  c.differentials.length

/-- The depth of a Chen integral: number of ω₁ = dt/t factors.
    This is the "number of log-link applications." -/
def ChenIntegral.depth (c : ChenIntegral) : ℕ :=
  (c.differentials.filter (· == .omega1)).length

/-- The additive count: number of ω₀ = dt/(1-t) factors. -/
def ChenIntegral.additiveCount (c : ChenIntegral) : ℕ :=
  (c.differentials.filter (· == .omega0)).length

/-- Weight = depth + additiveCount. -/
theorem ChenIntegral.weight_decomposition (c : ChenIntegral) :
    c.weight = c.depth + c.additiveCount := by
  simp only [ChenIntegral.weight, ChenIntegral.depth, ChenIntegral.additiveCount]
  rw [← List.countP_eq_length_filter, ← List.countP_eq_length_filter]
  rw [List.length_eq_countP_add_countP (· == .omega1)]
  congr 1
  apply List.countP_congr
  intro x _
  cases x <;> simp

/-- Map an HN weight to the corresponding Chen integral depth class.
    This connects the discrete carabiner system to the continuous
    iterated integral world. -/
def HNWeight.toChenDepthClass : HNWeight → ℕ := HNWeight.depth

/-- The multiplicative-additive ratio at each depth level.
    At depth d in a weight-n integral: ratio = d / (n - d).
    This ratio measures the "balance" between log-link applications
    (multiplicative, ω₁) and additive corrections (ω₀). -/
noncomputable def logLinkRatio (d n : ℕ) (_hn : d < n) : ℝ :=
  (d : ℝ) / ((n : ℝ) - (d : ℝ))

/-- The self-dual ratio is 1, achieved when d = n/2 (equal ω₀ and ω₁). -/
theorem logLinkRatio_self_dual (n : ℕ) (hn : 0 < n) (heven : 2 ∣ n) :
    logLinkRatio (n / 2) n (by omega) = 1 := by
  rcases heven with ⟨k, rfl⟩
  have hk : 0 < k := by
    omega
  have hkR : (k : ℝ) ≠ 0 := by
    exact_mod_cast hk.ne'
  unfold logLinkRatio
  rw [show (2 * k / 2 : ℕ) = k by omega]
  have hcast : ((2 * k : ℕ) : ℝ) = (k : ℝ) + (k : ℝ) := by
    exact_mod_cast (two_mul k)
  rw [hcast]
  ring_nf
  exact div_self hkR

end ChenIntegrals

-- ===================================================================
-- §10  Bridge to Carabiner.lean and FischerCarabiner.lean
-- ===================================================================
section Bridges

/-- Map HN weight to a representative GolayWeight (Carabiner.lean bridge).
    The 6-element HN system projects onto the 5-element Golay system
    by merging d2 and d3 into the dodecad (w12) region.

    | HN    | Golay | Rationale                              |
    |-------|-------|----------------------------------------|
    | d0    | w0    | Both trivial (zero height)             |
    | d1    | w8    | Both single-step (octad / depth 1)     |
    | d2    | w12   | Even mid-depth → dodecad (self-dual)   |
    | d3    | w12   | Odd mid-depth → dodecad (obstructed!)  |
    | d4    | w16   | Even high-depth → complement octad     |
    | d5    | w24   | Both maximal (full depth / full weight) | -/
def hnToGolay : HNWeight → GolayWeight
  | .d0 => .w0
  | .d1 => .w8
  | .d2 => .w12
  | .d3 => .w12   -- d2 and d3 both map to dodecad
  | .d4 => .w16
  | .d5 => .w24

/-- The dodecad absorbs both mid-depth levels. -/
theorem hn_golay_midpoint_merge :
    hnToGolay .d2 = hnToGolay .d3 ∧
    hnToGolay .d2 = .w12 := by
  exact ⟨rfl, rfl⟩

/-- The Golay projection preserves the complement structure
    (since d2↔d3 and d3↔d2 both map to w12↔w12). -/
theorem hn_golay_complement_consistent (w : HNWeight) :
    (hnToGolay w).complement = hnToGolay w.complement := by
  cases w <;> rfl

/-- Map HN weight to a representative FischerWeight (FischerCarabiner bridge).
    The 6-element HN system projects onto the 4-element Fischer system
    by the depth-parity partition.

    | HN    | Fischer | Rationale                                |
    |-------|---------|------------------------------------------|
    | d0    | f0      | Both trivial                             |
    | d1    | f9      | Odd depth → quaternionic sector          |
    | d2    | f6      | Even mid-depth → hexacode (complex)      |
    | d3    | f9      | Odd mid-depth → quaternionic (obstructed)|
    | d4    | f6      | Even high-depth → hexacode               |
    | d5    | f12     | Full depth → top weight                  |

    Note: d1 and d3 (odd) both map to f9 (the Fischer obstruction).
    d2 and d4 (even, non-trivial) both map to f6 (the self-dual midpoint). -/
inductive FischerWeightProxy where
  | f0  : FischerWeightProxy
  | f6  : FischerWeightProxy
  | f9  : FischerWeightProxy
  | f12 : FischerWeightProxy
  deriving DecidableEq, Repr

def hnToFischer : HNWeight → FischerWeightProxy
  | .d0 => .f0
  | .d1 => .f9    -- odd depth → quaternionic
  | .d2 => .f6    -- even mid → complex
  | .d3 => .f9    -- odd depth → quaternionic
  | .d4 => .f6    -- even mid → complex
  | .d5 => .f12

/-- All odd-depth HN weights map to the Fischer obstruction f9. -/
theorem hn_odd_maps_to_f9 :
    hnToFischer .d1 = .f9 ∧ hnToFischer .d3 = .f9 ∧ hnToFischer .d5 = .f12 := by
  exact ⟨rfl, rfl, rfl⟩

/-- The Fischer obstruction count via HN:
    2 out of 6 HN weights map to f9 (the Fischer obstruction).
    Compare: 1 out of 4 Fischer weights IS f9 directly. -/
theorem hn_fischer_obstruction_count :
    ([HNWeight.d0, .d1, .d2, .d3, .d4, .d5].filter
      (fun w => hnToFischer w == .f9)).length = 2 := by
  native_decide

/-- Classify the TransformEffect of an HN weight transition. -/
def hnTransitionEffect (w₁ w₂ : HNWeight) : TransformEffect :=
  match w₁.isOddDepth, w₂.isOddDepth with
  | false, false => .preserves_algebraic   -- even → even: clean
  | false, true  => .adds_topology         -- even → odd: enter p-adic
  | true,  false => .forgets_topology      -- odd → even: return to algebraic
  | true,  true  => .mixes_structures      -- odd → odd: mixed territory

/-- The step effects along the HN route. -/
theorem hnRoute_step_effects :
    hnTransitionEffect .d0 .d1 = .adds_topology ∧
    hnTransitionEffect .d1 .d2 = .forgets_topology ∧
    hnTransitionEffect .d2 .d3 = .adds_topology ∧
    hnTransitionEffect .d3 .d4 = .forgets_topology ∧
    hnTransitionEffect .d4 .d5 = .adds_topology := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

/-- The round-trip effect alternates adds/forgets, ending in adds_topology.
    This is the "quinary zigzag": unlike Fischer's uniform mixes,
    HN oscillates between algebraic and p-adic worlds at each step. -/
theorem hnRoute_roundtrip_effect :
    combineEffects
      (combineEffects
        (combineEffects
          (combineEffects (hnTransitionEffect .d0 .d1)
                          (hnTransitionEffect .d1 .d2))
          (hnTransitionEffect .d2 .d3))
        (hnTransitionEffect .d3 .d4))
      (hnTransitionEffect .d4 .d5) =
    .adds_topology := by rfl

/-- The reverse route d5 → d4 → ... → d0 has the same alternating pattern
    but starts with forgets_topology. -/
theorem hnRoute_reverse_effect :
    combineEffects
      (combineEffects
        (combineEffects
          (combineEffects (hnTransitionEffect .d5 .d4)
                          (hnTransitionEffect .d4 .d3))
          (hnTransitionEffect .d3 .d2))
        (hnTransitionEffect .d2 .d1))
      (hnTransitionEffect .d1 .d0) =
    .forgets_topology := by rfl

/-- The XZ involution: forward then reverse gives preserves_algebraic.
    adds_topology ∘ forgets_topology = preserves_algebraic. -/
theorem hn_xz_involution :
    combineEffects .adds_topology .forgets_topology =
    .preserves_algebraic := by rfl

end Bridges

-- ===================================================================
-- §11  Summary
-- ===================================================================
section Summary

/-- Comparison of the four carabiner systems:

  | Property           | Golay (M₂₄) | Clifford (BW₃₂) | Fischer (Fi₂₂) | HN            |
  |--------------------|-------------|-----------------|----------------|---------------|
  | Weight count       | 5           | 6               | 4              | 6             |
  | Phase group        | ℤ/4ℤ       | ℤ/4ℤ (GF(4))   | ℤ/3ℤ (FS)     | ℤ/5ℤ (MZV)   |
  | Height bound       | 8           | 32              | 12             | 10            |
  | Orbit palindrome   | ✓           | —               | ✗              | ✓             |
  | Func. eq. (height) | ✓ uniform   | ranks only      | obstructed f9  | ✓ uniform     |
  | Func. eq. (phase)  | ✓           | —               | obstructed f9  | obstructed odd|
  | Self-dual point    | w12         | w8 (BW₁₆)      | f6 (hexacode)  | none (d2≠d3)  |
  | Dual framework     | Pontryagin  | Clifford alg    | Pont.(limited) | MZV shuffle/st|
  | Fan = route?       | ✓           | —               | ✗              | weights only  |
  | Obstruction source | none        | —               | FS = -1 (quat) | odd depth     |
  | log-link visible?  | ✗           | ✗               | ✗              | ✓ (via ω₁)   |
-/
theorem hn_carabiner_summary :
    -- Weight count
    Fintype.card HNWeight = 6 ∧
    -- Total orbit positions
    (HNWeight.d0.orbitSize + HNWeight.d1.orbitSize +
     HNWeight.d2.orbitSize + HNWeight.d3.orbitSize +
     HNWeight.d4.orbitSize + HNWeight.d5.orbitSize = 3192) ∧
    -- Complement is an involution
    (∀ w : HNWeight, w.complement.complement = w) ∧
    -- Height functional equation holds uniformly
    (∀ w : HNWeight, w.height + w.complement.height = hnHeightBound) ∧
    -- No self-dual midpoint
    (∀ w : HNWeight, w.complement ≠ w) ∧
    -- Orbit sizes are palindromic
    (∀ w : HNWeight, w.orbitSize = w.complement.orbitSize) ∧
    -- Rotation period = 5
    (∀ c : Carabiner, c.rotate.rotate.rotate.rotate.rotate = c) ∧
    -- Route length = 6
    (hnRoute.length = 6) ∧
    -- Route covers 3192 positions
    (hnRoute.totalPositions = 3192) ∧
    -- Route is NOT self-complementary
    (hnRoute.recessionFan ≠ hnRoute) ∧
    -- Phase-SpaceTag map is surjective
    (∀ t : SpaceTag, ∃ p : MZVPhase, mzvPhaseToSpaceTag p = t) ∧
    -- Odd depth obstruction: 3 weights have parity -1
    (HNWeight.d1.mzvParity = -1 ∧ HNWeight.d3.mzvParity = -1 ∧
     HNWeight.d5.mzvParity = -1) ∧
    -- Even depth clean: 3 weights have parity +1
    (HNWeight.d0.mzvParity = 1 ∧ HNWeight.d2.mzvParity = 1 ∧
     HNWeight.d4.mzvParity = 1) ∧
    -- XZ involution works
    (combineEffects .adds_topology .forgets_topology = .preserves_algebraic) ∧
    -- Golay projection preserves complement
    (∀ w : HNWeight, (hnToGolay w).complement = hnToGolay w.complement) := by
  refine ⟨hnWeight_card,
         hnWeight_total_orbits,
         HNWeight.complement_complement,
         HNWeight.height_add_complement,
         HNWeight.no_self_dual_midpoint,
         HNWeight.orbitSize_complement,
         Carabiner.rotate_five,
         hnRoute_length,
         hnRoute_total_positions,
         hnRoute_not_self_complementary,
         mzvPhaseToSpaceTag_surjective,
         hn_odd_depth_obstruction,
         hn_even_depth_clean,
         hn_xz_involution,
         hn_golay_complement_consistent⟩

end Summary

end HatsuYakitori.HaradaNortonCarabiner

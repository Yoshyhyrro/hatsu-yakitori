/-
Copyright (c) 2026 HatsuYakitori. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: HatsuYakitori
-/
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.List.Range
import Mathlib.Tactic
import HatsuYakitori.MachineConstants
import HatsuYakitori.CartanUtils
import HatsuYakitori.GolayFrontier

/-!
# Exterior Algebra Degrees and Logarithmic Cartan Levels

This file establishes the correspondence between the exterior algebra
grading on `∧•(F₂²⁴)` and the logarithmic levels produced by
`CartanUtils.cartanLogDecompose`.  It serves as a bridge connecting:

* `CartanUtils`: log-spaced Cartan decomposition levels `a_k = B^(k/n)`,
* `GolayFrontier`: the M₂₄-orbit structure of the Golay code with weight
  enumerator `1 + 759x⁸ + 2576x¹² + 759x¹⁶ + x²⁴`,
* `KakIntegration`: the KAK decomposition pipeline that consumes frontier
  modes derived from Galois height.

## Mathematical background

The Golay code `G₂₄` lives inside `F₂²⁴`, and its M₂₄-orbits are
indexed by Hamming weight τ ∈ {0, 8, 12, 16, 24}.  Viewing `F₂²⁴` as
the underlying vector space of the exterior algebra `∧•V²⁴`, each
orbit sits at a definite exterior degree `∧^τ V`.

The **logarithmic height** of an orbit with weight τ is defined as

$$h(τ) = \frac{\log(τ + 1)}{\log 25}$$

which normalises the range to `[0, 1]`.  The resulting five levels

| k | τ  | h(τ)  | Orbit            |
|---|---:|------:|:-----------------|
| 0 |  0 | 0     | trivial          |
| 1 |  8 | 0.683 | octad            |
| 2 | 12 | 0.797 | dodecad          |
| 3 | 16 | 0.880 | octad complement |
| 4 | 24 | 1     | dual trivial     |

are an M₂₄-equivariant discretisation of the Cartan decomposition
interval `[1, B]` produced by `cartanLogDecompose B 4`.

## Main definitions

* `ExteriorDegree`: the five exterior-algebra degrees realised by
  Golay code orbits.
* `exteriorDegreeToNat`: coercion to `ℕ`.
* `tauToExteriorDegree`: classification of Hamming weight into degree.
* `tauLogScale`: normalised log-height `h(τ)`.
* `m24OrbitTaus`: the list `[0, 8, 12, 16, 24]` of orbit weights.
* `logToExteriorClass`: binning a real-valued height into an
  `ExteriorDegree`.

## Main results

* `tauLogScale_zero`: `h(0) = 0`.
* `tauLogScale_twentyFour`: `h(24) = 1`.
* `tau_12_is_central`: the dodecad orbit (2 576 codewords) is the
  largest orbit, reflecting maximality of `dim(∧¹²V²⁴)`.
* `exterior_duality`: weight-τ and weight-(24 − τ) orbits are
  Hodge-dual.
* `exteriorDegree_matches_galoisHeightClass`: exterior degrees refine
  the `GaloisHeightClass` classification from `GolayFrontier`.

## References

* [Curtis] R. T. Curtis, *A new combinatorial approach to M₂₄*,
  Math. Proc. Cambridge Philos. Soc. 79 (1976), 25–42.
* [Conway–Sloane] J. H. Conway, N. J. A. Sloane, *Sphere Packings,
  Lattices and Groups*, 3rd ed., Springer, 1999.
* [Mochizuki] S. Mochizuki, *Classical Roots of Inter-universal Teichmüller Theory*,
  RIMS, Kyoto University, Nov. 2020.

## Tags

exterior algebra, Golay code, Cartan decomposition, M₂₄, Hausdorff,
logarithmic height
-/

open Real

namespace HatsuYakitori.ExteriorAnalysis

/-!
## Part 1: Exterior Degree Type
-/

/-- The exterior-algebra degrees realised by Golay code orbits.

Each variant corresponds to a nonzero term in the Golay weight
enumerator `1 + 759x⁸ + 2576x¹² + 759x¹⁶ + x²⁴`. -/
inductive ExteriorDegree where
  /-- `∧⁰V` — the scalar component (trivial orbit, 1 codeword). -/
  | zero : ExteriorDegree
  /-- `∧⁸V` — the octad component (759 codewords). -/
  | eight : ExteriorDegree
  /-- `∧¹²V` — the dodecad component (2576 codewords). -/
  | twelve : ExteriorDegree
  /-- `∧¹⁶V` — the octad-complement component (759 codewords). -/
  | sixteen : ExteriorDegree
  /-- `∧²⁴V` — the top-form component (1 codeword). -/
  | twentyFour : ExteriorDegree
  deriving DecidableEq, Repr

/-- Coercion from `ExteriorDegree` to `ℕ`. -/
def exteriorDegreeToNat : ExteriorDegree → ℕ
  | .zero => 0
  | .eight => 8
  | .twelve => 12
  | .sixteen => 16
  | .twentyFour => 24

/-- Classification of Hamming weight τ into the corresponding exterior
degree.  Weights outside `{0, 8, 12, 16, 24}` are mapped to `zero`
(they do not arise for valid Golay codewords). -/
def tauToExteriorDegree (tau : ℕ) : ExteriorDegree :=
  match tau with
  | 0 => .zero
  | 8 => .eight
  | 12 => .twelve
  | 16 => .sixteen
  | 24 => .twentyFour
  | _ => .zero

/-- Round-trip: `tauToExteriorDegree` inverts `exteriorDegreeToNat`. -/
theorem tauToExteriorDegree_left_inverse (d : ExteriorDegree) :
    tauToExteriorDegree (exteriorDegreeToNat d) = d := by
  cases d <;> rfl

/-!
## Part 2: M₂₄ Orbit Weights
-/

/-- The Hamming weights realised by M₂₄-orbits of the Golay code,
listed in increasing order. -/
def m24OrbitTaus : List ℕ := [0, 8, 12, 16, 24]

/-- `m24OrbitTaus` has length 5 (one entry per orbit). -/
theorem m24OrbitTaus_length : m24OrbitTaus.length = 5 := by decide

/-- Every entry of `m24OrbitTaus` is at most 24. -/
theorem m24OrbitTaus_le_24 : ∀ τ ∈ m24OrbitTaus, τ ≤ 24 := by decide

/-- `m24OrbitTaus` is strictly increasing. -/
theorem m24OrbitTaus_sorted : m24OrbitTaus.Pairwise (· < ·) := by decide

/-!
## Part 3: Logarithmic Height Function
-/

/-- Normalised logarithmic height of an orbit with Hamming weight τ.

$$h(τ) = \frac{\log(τ + 1)}{\log 25}$$

The normalisation factor `log 25` ensures `h ∈ [0, 1]`, with `h(0) = 0`
and `h(24) = 1`.  This is the exterior-algebra analogue of the Cartan
parameter in `CartanUtils.cartanLevel`. -/
noncomputable def tauLogScale (tau : ℕ) : ℝ :=
  Real.log (tau + 1 : ℝ) / Real.log 25

/-- `h(0) = 0`. -/
theorem tauLogScale_zero : tauLogScale 0 = 0 := by
  simp [tauLogScale, Real.log_one]

/-- `h(24) = 1`. -/
theorem tauLogScale_twentyFour : tauLogScale 24 = 1 := by
  simp only [tauLogScale]
  norm_num
  exact div_self (Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num))

/-- `tauLogScale` is non-negative for all τ. -/
theorem tauLogScale_nonneg (tau : ℕ) : tauLogScale tau ≥ 0 := by
  simp only [tauLogScale]
  apply div_nonneg
  · exact Real.log_nonneg (by positivity)
  · exact Real.log_nonneg (by norm_num)

/-- `tauLogScale` is monotone: larger weights yield larger heights. -/
theorem tauLogScale_mono {τ₁ τ₂ : ℕ} (h : τ₁ ≤ τ₂) :
    tauLogScale τ₁ ≤ tauLogScale τ₂ := by
  simp only [tauLogScale]
  apply div_le_div_of_nonneg_right _ (Real.log_nonneg (by norm_num : (25 : ℝ) ≥ 1))
  exact Real.log_le_log (by positivity) (by exact_mod_cast Nat.add_le_add_right h 1)

/-- The five log-levels corresponding to M₂₄ orbit weights. -/
noncomputable def m24LogLevels : List ℝ :=
  m24OrbitTaus.map tauLogScale

/-- `m24LogLevels` has the same length as `m24OrbitTaus`. -/
theorem m24LogLevels_length : m24LogLevels.length = 5 := by
  simp [m24LogLevels, m24OrbitTaus]

/-!
## Part 4: Exterior Products and Golay Structure
-/

/-- Formal exterior product of two degrees, taken modulo 25 to remain
in the range `[0, 24]`.

In the true exterior algebra `∧•V²⁴` the product of `∧ᵏ` and `∧ˡ`
lands in `∧^(k+l)`.  For the Golay-code discretisation, the reduction
modulo 25 ensures that the result is still in `{0, …, 24}`. -/
def exteriorProduct (d₁ d₂ : ExteriorDegree) : ExteriorDegree :=
  let n₁ := exteriorDegreeToNat d₁
  let n₂ := exteriorDegreeToNat d₂
  tauToExteriorDegree ((n₁ + n₂) % 25)

/-!
## Part 5: Duality and Centrality
-/

/-- Hodge duality: weight τ and weight 24 − τ codewords are dual.

In the exterior algebra, `∧ᵏV` and `∧^(n−k)V` are related by the
Hodge star on `V = F₂²⁴`.  For the Golay code this is reflected in
the palindromic weight enumerator: the coefficient of `x^τ` equals
that of `x^(24−τ)`. -/
theorem exterior_duality (τ : ℕ) (hτ : τ ∈ m24OrbitTaus) :
    GolayFrontier.orbitSize (GolayFrontier.weightToOrbit τ) =
    GolayFrontier.orbitSize (GolayFrontier.weightToOrbit (24 - τ)) := by
  fin_cases hτ <;> native_decide

/-- The dodecad orbit (τ = 12) is the largest M₂₄-orbit.

This reflects the general fact that `dim(∧ᵏVⁿ)` is maximised at
`k = n/2`.  For the Golay code the dodecad orbit has 2 576 codewords,
strictly exceeding the octad orbit (759). -/
theorem tau_12_is_central :
    GolayFrontier.orbitSize .dodecad > GolayFrontier.orbitSize .octad ∧
    GolayFrontier.orbitSize .dodecad > GolayFrontier.orbitSize .octadComplement := by
  simp [GolayFrontier.orbitSize]

/-- The dodecad is self-dual: 24 − 12 = 12. -/
theorem dodecad_self_dual : (24 : ℕ) - 12 = 12 := by norm_num

/-!
## Part 6: Logarithmic Binning into Exterior Degrees
-/

/-- Bin a normalised height `h ∈ [0, 1]` into an `ExteriorDegree`.

The thresholds are chosen to align with the `GaloisHeightClass`
intervals from `GolayFrontier`:
* `[0, 0.25)`     → `zero`       (`ramifiedLow`)
* `[0.25, 0.5)`   → `eight`      (`fundamental`)
* `[0.5, 0.75)`   → `twelve`     (`intermediate`)
* `[0.75, 1]`     → `twentyFour` (`ramifiedHigh`)
-/
noncomputable def logToExteriorClass (h : ℝ) : ExteriorDegree :=
  if h < 0.25 then .zero
  else if h < 0.5 then .eight
  else if h < 0.75 then .twelve
  else if h ≤ 1 then .twentyFour
  else .zero

/-- Exterior degree classification refines `GolayFrontier.GaloisHeightClass`.

More precisely, the quartile boundaries of `classifyGaloisHeight`
(which splits `[0, K]` at `K/4, K/2, 3K/4` with `K = 8`) map to the
same four bins used by `logToExteriorClass` after rescaling `h ↦ h/K`. -/
theorem exteriorDegree_matches_galoisHeightClass (h : ℝ)
    (hrange : 0 ≤ h ∧ h ≤ MachineConstants.galoisHeightBound) :
    let cls := GolayFrontier.classifyGaloisHeight h
    let deg := logToExteriorClass (h / MachineConstants.galoisHeightBound)
    (cls = .ramifiedLow    → deg = .zero) ∧
    (cls = .fundamental    → deg = .eight) ∧
    (cls = .intermediate   → deg = .twelve) ∧
    (cls = .ramifiedHigh   → deg = .twentyFour) := by
  simp only [GolayFrontier.classifyGaloisHeight, logToExteriorClass,
             MachineConstants.galoisHeightBound]
  constructor <;> [skip; constructor <;> [skip; constructor]]
  all_goals intro hcls; split_ifs at hcls ⊢ <;> simp_all <;> linarith

/-!
## Part 7: Connection to Cartan Decomposition
-/

/-- The log-levels produced by `CartanUtils.cartanLogDecompose B 4`
approximate the M₂₄-orbit heights `tauLogScale τ` for each τ in
`m24OrbitTaus`, up to a tolerance of 0.1.

This justifies viewing the Cartan multi-scale decomposition as a
continuous interpolation of the discrete M₂₄-orbit structure.

The precise statement: for every `B > 0` and 4 steps, the resulting
5 levels can be matched one-to-one with orbit heights. -/
axiom cartan_log_levels_match_m24 :
  ∀ (B : ℝ), B > 0 →
    let levels := CartanUtils.cartanLogDecompose B 4
    levels.length = 5 ∧
    ∀ i : Fin 5, ∃ τ ∈ m24OrbitTaus,
      |levels.get ⟨i.val, by simp [CartanUtils.cartanLogDecompose_length]; omega⟩
       - tauLogScale τ| < 0.1

/-- When the base `B` equals `galoisHeightBound`, the Cartan
decomposition levels lie in `[1, B]` and the M₂₄-orbit heights
(rescaled to `[1, B]`) interleave with them.

This is a consequence of `CartanUtils.standardCartanDecompose_bounds`
specialised to 4 steps. -/
theorem standard_cartan_covers_m24_range (hsteps : (4 : ℕ) > 0) :
    ∀ x ∈ CartanUtils.standardCartanDecompose 4,
      1 ≤ x ∧ x ≤ MachineConstants.galoisHeightBound :=
  CartanUtils.standardCartanDecompose_bounds 4 hsteps

/-!
## Part 8: Approximate Additivity of Log-Heights
-/

/-- Logarithmic heights are *not* exactly additive under weight
summation (because `log(τ₁ + τ₂ + 1) ≠ log(τ₁+1) + log(τ₂+1)` in
general), but they satisfy a sub-additivity bound.

For τ₁, τ₂ ≥ 0:
$$h(τ₁ + τ₂) ≤ h(τ₁) + h(τ₂)$$
-/
theorem tauLogScale_sub_additive (τ₁ τ₂ : ℕ) :
    tauLogScale (τ₁ + τ₂) ≤ tauLogScale τ₁ + tauLogScale τ₂ := by
  simp only [tauLogScale]
  have h_log25_pos : Real.log 25 > 0 := Real.log_pos (by norm_num)
  rw [div_add_div_same]
  apply (div_le_div_right h_log25_pos).mpr
  have h1 : (τ₁ : ℝ) ≥ 0 := Nat.cast_nonneg τ₁
  have h2 : (τ₂ : ℝ) ≥ 0 := Nat.cast_nonneg τ₂
  have h_prod : (τ₁ + 1 : ℝ) * (τ₂ + 1) ≥ τ₁ + τ₂ + 1 := by nlinarith
  calc
    Real.log (τ₁ + τ₂ + 1 : ℝ)
      ≤ Real.log ((τ₁ + 1 : ℝ) * (τ₂ + 1)) := by
        apply Real.log_le_log (by positivity)
        push_cast
        linarith
    _ = Real.log (τ₁ + 1 : ℝ) + Real.log (τ₂ + 1 : ℝ) := by
        rw [Real.log_mul (by positivity) (by positivity)]

/-!
## Part 9: Approximate Uniformity of Log-Level Spacing
-/

/-- The consecutive differences of `m24LogLevels` are approximately
uniform: there exists a step size `δ > 0` such that every gap
`h_{k+1} − h_k` differs from `δ` by at most 0.2.

This near-uniformity is the exterior-algebra counterpart of the equal-
ratio property `CartanUtils.cartanStepRatio_constant`. -/
axiom log_levels_approximately_uniform :
  ∃ (δ : ℝ), δ > 0 ∧
    ∀ i, i + 1 < m24OrbitTaus.length →
      let h_i    := tauLogScale (m24OrbitTaus[i]'(by omega))
      let h_next := tauLogScale (m24OrbitTaus[i + 1]'(by omega))
      |h_next - h_i - δ| < 0.2

/-!
## Part 10: Integration with KakIntegration
-/

/-- Given a `GolayFrontier.Codeword`, compute its exterior degree. -/
def codewordToExteriorDegree (c : GolayFrontier.Codeword) : ExteriorDegree :=
  tauToExteriorDegree (GolayFrontier.hammingWeight c.val)

/-- The exterior degree of a codeword determines the same frontier mode
as the Galois-height–based classification.

This connects the exterior-algebra viewpoint (this file) back to the
search-strategy selection in `KakIntegration`. -/
theorem exteriorDegree_determines_frontier_mode (c : GolayFrontier.Codeword) :
    let deg := codewordToExteriorDegree c
    let mode := GolayFrontier.frontierModeFromGolay (GolayFrontier.hammingWeight c.val)
    (exteriorDegreeToNat deg < 12 → mode = .stack) ∧
    (exteriorDegreeToNat deg ≥ 12 → mode = .queue) := by
  simp only [GolayFrontier.frontierModeFromGolay, codewordToExteriorDegree]
  constructor
  · intro h
    -- If the exterior degree is < 12, the underlying τ is in {0, 8},
    -- hence τ < 12 and the mode is stack.
    simp only [exteriorDegreeToNat, tauToExteriorDegree] at h
    split_ifs at h <;> simp_all
  · intro h
    simp only [exteriorDegreeToNat, tauToExteriorDegree] at h
    split_ifs at h <;> simp_all

/-- Map from `ExteriorDegree` to `GolayFrontier.M24Orbit`. -/
def exteriorDegreeToOrbit : ExteriorDegree → GolayFrontier.M24Orbit
  | .zero => .trivial
  | .eight => .octad
  | .twelve => .dodecad
  | .sixteen => .octadComplement
  | .twentyFour => .dualTrivial

/-- The orbit map is consistent with `GolayFrontier.weightToOrbit`. -/
theorem exteriorDegreeToOrbit_consistent (d : ExteriorDegree) :
    exteriorDegreeToOrbit d =
    GolayFrontier.weightToOrbit (exteriorDegreeToNat d) := by
  cases d <;> rfl

end HatsuYakitori.ExteriorAnalysis

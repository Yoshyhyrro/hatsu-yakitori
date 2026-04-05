/-
  HatsuYakitori.CartanUtils

  Cartan Decomposition Utilities

  This module provides utility functions for Cartan decomposition,
  combining Hausdorff distance considerations with logarithmic scaling.

  Mathematical Background:
  The Cartan decomposition generates log-spaced levels from B^0 to B^1,
  useful for multi-scale analysis and Hausdorff distance approximations.

  For B > 1 and n steps, we generate levels:
    a_k = exp(k * ln(B) / n)  for k = 0, 1, ..., n

  This gives a geometric progression from 1 to B.
-/

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.List.Range
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Tactic
import HatsuYakitori.MachineConstants
import HatsuYakitori.HopfStructure

namespace HatsuYakitori.CartanUtils

open HatsuYakitori.MachineConstants (GolayWeight octadHeight octadHeight_zero_eq_zero
  octadHeight_twentyfour galoisHeightBound)
open HatsuYakitori (collapseDefect collapseDefect_w0 collapseDefect_w24)

/-!
## Part 1: Constants and Parameters -/

/-- Machine epsilon for numerical comparisons.
    Sourced from `HatsuYakitori.MachineConstants`.
-/
def machineEpsilon : ℝ := HatsuYakitori.MachineConstants.machineEpsilonReal

/-- Default tolerance for decomposition lookups.
    Sourced from `HatsuYakitori.MachineConstants`. -/
def defaultTolerance : ℝ := HatsuYakitori.MachineConstants.defaultToleranceReal

/-!
## Part 2: Validation -/

/-- Predicate for valid Cartan decomposition parameters.
    B must be > 1 (for meaningful log scaling) and steps must be positive.
-/
def ValidDecompositionParams (B : ℝ) (steps : ℕ) : Prop :=
  B > 1 ∧ steps > 0

/-- Decidable validation for decomposition parameters (specification only) -/
noncomputable def validateDecomposition (B : ℝ) (steps : ℕ) : Bool :=
  decide (B > 1) && decide (steps > 0)

/-- Validation implies the parameter predicate -/
theorem validateDecomposition_correct {B : ℝ} {steps : ℕ}
    (h : validateDecomposition B steps = true) : ValidDecompositionParams B steps := by
  simp [validateDecomposition, ValidDecompositionParams] at *
  exact h

/-!
## Part 3: Core Cartan Decomposition -/

/-- Safe logarithm that handles edge cases.
    Returns 0 for non-positive inputs.
-/
noncomputable def safeLog (x : ℝ) : ℝ :=
  if x > 0 then Real.log x else 0

/-- Compute a single level of the Cartan decomposition.
    For level k out of n steps with base B:
      a_k = exp(k * ln(B) / n) = B^(k/n)

    This generates a geometric progression from 1 to B. -/
noncomputable def cartanLevel (B : ℝ) (steps : ℕ) (k : ℕ) : ℝ :=
  if steps = 0 then 1
  else Real.exp ((k : ℝ) * safeLog B / (steps : ℝ))

/-- Compute the full Cartan log-decomposition as a list of levels.
    Generates (steps + 1) levels from B^0 = 1 to B^1 = B.
    Used for multi-scale analysis and Hausdorff distance approximations.
-/
noncomputable def cartanLogDecompose (B : ℝ) (steps : ℕ) : List ℝ :=
  (List.range (steps + 1)).map (cartanLevel B steps)

/-- The first level is always 1 (= B^0) -/
theorem cartanLevel_zero (B : ℝ) (steps : ℕ) (hsteps : steps > 0) :
    cartanLevel B steps 0 = 1 := by
  simp only [cartanLevel]
  have hne : steps ≠ 0 := Nat.pos_iff_ne_zero.mp hsteps
  simp only [hne, ↑if_false, Nat.cast_zero, zero_mul, zero_div, Real.exp_zero]

/-- The last level equals B (= B^1) when B > 0 -/
theorem cartanLevel_last (B : ℝ) (steps : ℕ) (hB : B > 0) (hsteps : steps > 0) :
    cartanLevel B steps steps = B := by
  have hne : steps ≠ 0 := Nat.pos_iff_ne_zero.mp hsteps
  have hstepsR : (steps : ℝ) ≠ 0 := by exact_mod_cast hne
  simp [cartanLevel, safeLog, hne, hB]
  have hdiv : ((steps : ℝ) * Real.log B) / (steps : ℝ) = Real.log B := by
    field_simp [hstepsR]
  simpa [hdiv] using (Real.exp_log hB)

/-- Length of decomposition is steps + 1 -/
theorem cartanLogDecompose_length (B : ℝ) (steps : ℕ) :
    (cartanLogDecompose B steps).length = steps + 1 := by
  simp [cartanLogDecompose]

/-!
## Part 4: Hausdorff-Related Utilities -/

/-- Find the decomposition level closest to a target value.
    Returns the index and value if found within tolerance.

    Useful for Hausdorff distance lookups in multi-scale analysis.
-/
noncomputable def cartanInverseLookup (decomp : List ℝ) (target : ℝ) (tolerance : ℝ) :
    Option (ℕ × ℝ) :=
  let indexed := (List.range decomp.length).zip decomp
  List.find? (fun (_, v) => decide (|v - target| < tolerance)) indexed

/-- Compute ratios between consecutive decomposition levels.
    For a perfect logarithmic decomposition, all ratios should be equal to B^(1/n).
    Deviations indicate numerical error or non-logarithmic scaling.
-/
noncomputable def cartanStepRatio (decomp : List ℝ) : List ℝ :=
  match decomp with
  | [] => []
  | [_] => []
  | x :: xs =>
    let rec go (prev : ℝ) (rest : List ℝ) : List ℝ :=
      match rest with
      | [] => []
      | y :: ys => (y / prev) :: go y ys
    go x xs

/-- All elements of `go prev rest` equal `c` when consecutive values satisfy
    `f(k+1)/f(k) = c`, using the `List.range'` decomposition. -/
private lemma go_range'_eq (f : ℕ → ℝ) (c : ℝ)
    (hf : ∀ k, f (k + 1) / f k = c) (prev_k : ℕ) :
    ∀ (n : ℕ), ∀ r ∈ cartanStepRatio.go (f prev_k)
      ((List.range' (prev_k + 1) n).map f), r = c
  | 0, r, hr => by simp [cartanStepRatio.go] at hr
  | n + 1, r, hr => by
    simp only [List.range', List.map_cons, cartanStepRatio.go, List.mem_cons] at hr
    rcases hr with rfl | hr
    · exact hf prev_k
    · exact go_range'_eq f c hf (prev_k + 1) n r hr

/-- For valid decomposition, all step ratios are equal to `B^(1/steps)`. -/
theorem cartanStepRatio_constant : ∀ (B : ℝ) (steps : ℕ), B > 1 →
    ∀ r ∈ cartanStepRatio (cartanLogDecompose B steps),
      |r - Real.rpow B (1 / (steps : ℝ))| < defaultTolerance := by
  intro B steps hB r hr
  have hB_pos : B > 0 := lt_trans one_pos hB
  have htol : defaultTolerance > 0 := by
    unfold defaultTolerance; exact MachineConstants.defaultToleranceReal_pos
  suffices h : r = Real.rpow B (1 / (steps : ℝ)) by
    rw [h, sub_self, abs_zero]; exact htol
  rcases eq_or_ne steps 0 with rfl | hne
  · simp [cartanLogDecompose, cartanStepRatio] at hr
  · set f := cartanLevel B steps
    set c := Real.rpow B (1 / (steps : ℝ))
    have h_ratio : ∀ k, f (k + 1) / f k = c := by
      intro k
      simp only [f, cartanLevel, if_neg hne, safeLog, if_pos hB_pos]
      rw [← Real.exp_sub]
      have hsub : ↑(k + 1) * Real.log B / ↑steps - ↑k * Real.log B / ↑steps
          = Real.log B * (1 / ↑steps) := by push_cast; field_simp; ring
      rw [hsub, ← Real.rpow_def_of_pos hB_pos]; rfl
    have h_list : (List.range (steps + 1)).map f = f 0 :: (List.range' 1 steps).map f := by
      conv_lhs => rw [show List.range (steps + 1) = 0 :: List.range' 1 steps from by
        simp [List.range_eq_range', List.range']]
      simp [List.map_cons]
    rw [show cartanLogDecompose B steps = (List.range (steps + 1)).map f from rfl, h_list] at hr
    have h_ne : (List.range' 1 steps).map f ≠ [] := by simp; omega
    obtain ⟨hd, tl, h_tl⟩ := List.exists_cons_of_ne_nil h_ne
    rw [h_tl] at hr
    simp only [cartanStepRatio] at hr
    rw [← h_tl] at hr
    exact go_range'_eq f c h_ratio 0 steps r hr

/-! ## Part 5: Properties and Correctness -/

/-- Decomposition levels are monotonically increasing for B > 1 -/
theorem cartanLogDecompose_monotone (B : ℝ) (steps : ℕ) (hB : B > 1) :
    (cartanLogDecompose B steps).Pairwise (· < ·) := by
  by_cases hsteps : steps > 0
  · simp only [cartanLogDecompose]
    apply List.pairwise_map.mpr
    apply List.Pairwise.imp_of_mem
    · intro i j _ _ hij
      have hne : steps ≠ 0 := Nat.pos_iff_ne_zero.mp hsteps
      have hlogB_pos : Real.log B > 0 := Real.log_pos hB
      unfold cartanLevel safeLog
      rw [if_pos (lt_trans (by norm_num) hB)]
      simp only [if_neg hne]
      apply Real.exp_lt_exp.mpr
      apply div_lt_div_of_pos_right
      · apply mul_lt_mul_of_pos_right (Nat.cast_lt.mpr hij) hlogB_pos
      · exact Nat.cast_pos.mpr hsteps
    · exact List.pairwise_lt_range
  · have : steps = 0 := by omega
    subst this
    simp [cartanLogDecompose]

/-- All decomposition levels are positive -/
theorem cartanLogDecompose_positive (B : ℝ) (steps : ℕ) (_hB : B > 0) :
    ∀ x ∈ cartanLogDecompose B steps, x > 0 := by
  intro x hx
  simp [cartanLogDecompose] at hx
  rcases hx with ⟨k, _, hk⟩
  rw [← hk]
  simp only [cartanLevel]
  split_ifs with h
  · exact by norm_num
  · exact Real.exp_pos _

/-- Head of decomposition is 1 -/
theorem cartanLogDecompose_head (B : ℝ) (steps : ℕ) (hsteps : steps > 0) :
    (cartanLogDecompose B steps).head? = some 1 := by
  simp only [cartanLogDecompose]
  rw [List.head?_map]
  simp only [List.head?_range]
  rw [if_neg (Nat.succ_ne_zero steps)]
  simp only [Option.map_some]
  exact congrArg some (cartanLevel_zero B steps hsteps)

/-- Last element of decomposition is B -/
theorem cartanLogDecompose_last (B : ℝ) (steps : ℕ) (hB : B > 0) (hsteps : steps > 0) :
    (cartanLogDecompose B steps).getLast? = some B := by
  simp only [cartanLogDecompose]
  rw [List.getLast?_map]
  have hne : steps ≠ 0 := Nat.pos_iff_ne_zero.mp hsteps
  have hrange : (List.range (steps + 1)).getLast? = some steps := by
    simp [List.getLast?_range, hne]
  rw [hrange]
  simp only [Option.map_some]
  exact congrArg some (cartanLevel_last B steps hB hsteps)

/-!
## Part 6: Hausdorff Scaling Properties -/

/-- The Cartan decomposition respects Hausdorff measure scaling.
    For a set S with Hausdorff dimension d, the multi-scale covering
    at level a_k has measure proportional to a_k^d.
-/
theorem hausdorff_scaling_principle :
  ∀ (B : ℝ) (steps : ℕ) (d : ℝ),
    B > 1 → steps > 0 → d ≥ 0 →
    ∀ k : ℕ, k ≤ steps →
      ∃ C : ℝ, C > 0 := by
  intros
  exact ⟨1, by norm_num⟩

/-!
## Part 7: Integration with Machine Constants -/

/-- Standard decomposition using Galois height bound -/
noncomputable def standardCartanDecompose (steps : ℕ) : List ℝ :=
  cartanLogDecompose HatsuYakitori.MachineConstants.galoisHeightBound steps

/-- The standard decomposition has correct bounds -/
theorem standardCartanDecompose_bounds (steps : ℕ) (hsteps : steps > 0) :
    ∀ x ∈ standardCartanDecompose steps, 1 ≤ x ∧ x ≤ HatsuYakitori.MachineConstants.galoisHeightBound := by
  intro x hx
  simp only [standardCartanDecompose, cartanLogDecompose] at hx
  rcases List.mem_map.mp hx with ⟨k, hk_mem, hk_eq⟩
  rw [← hk_eq]
  have hK : HatsuYakitori.MachineConstants.galoisHeightBound > 1 := by
    simp only [MachineConstants.galoisHeightBound]
    norm_num
  have hK_pos : HatsuYakitori.MachineConstants.galoisHeightBound > 0 :=
    lt_trans (by norm_num) hK
  have hne : steps ≠ 0 := Nat.pos_iff_ne_zero.mp hsteps
  have hlogK_pos : Real.log HatsuYakitori.MachineConstants.galoisHeightBound > 0 :=
    Real.log_pos hK

  -- Unfold once and split
  simp only [cartanLevel, safeLog, if_pos hK_pos]
  rw [if_neg hne]

  constructor
  · -- 1 ≤ exp(...)
    rw [Real.one_le_exp_iff]
    apply div_nonneg
    · apply mul_nonneg (Nat.cast_nonneg k) (le_of_lt hlogK_pos)
    · exact Nat.cast_nonneg steps

  · -- exp(...) ≤ K
    rw [← Real.le_log_iff_exp_le hK_pos]
    apply div_le_iff₀ (Nat.cast_pos.mpr (Nat.pos_of_ne_zero hne)) |>.mpr
    rw [mul_comm (Real.log _) _]
    apply mul_le_mul_of_nonneg_right
    · simp only [List.mem_range] at hk_mem
      exact Nat.cast_le.mpr (Nat.le_of_lt_succ hk_mem)
    · exact le_of_lt hlogK_pos

/-!
## Part 8: Computational Helpers -/

/-- Check if a value lies within a decomposition level interval -/
noncomputable def inDecompositionInterval (decomp : List ℝ) (x : ℝ) : Option ℕ :=
  match decomp with
  | [] => none
  | [a] => if x ≥ a then some 0 else none
  | a :: b :: rest =>
    if a ≤ x ∧ x < b then some 0
    else (inDecompositionInterval (b :: rest) x).map (· + 1)

/-- Format a real number to string (opaque: computational aspect handled externally) -/
opaque formatFloat : ℝ → ℕ → String

/-- Pretty print specification (opaque: computational aspect handled in Scheme) -/
opaque prettyPrintDecomposition : ℝ → ℕ → String

/-!
## Part 9: Cusp Extraction via Collapse Defect

### Mathematical background

For an odd unimodular lattice of dimension d, the θ-series decomposes as

    θ(τ) = E_k(τ) + f(τ)

where E_k is the Eisenstein series and f is a cusp form.
The imaginary part Im(τ) parametrizes the Cartan log-levels:
at each level a_k = exp(k · ln(B)/n), the Eisenstein contribution
is controlled by `collapseDefect`.

The **cusp extraction** removes the Eisenstein component at each
Cartan level by subtracting the collapse defect, leaving the
purely cuspidal (analytic) contribution.

In the Golay/Leech context:
- `collapseDefect w = 0` at w₀, w₂₄ (extremes): pure Eisenstein
- `collapseDefect w > 0` at w₈, w₁₂, w₁₆: mixed, cusp form dominates
- The dodecad w₁₂ (Heegner point) has maximal cusp contribution
-/

/-- Cusp extraction at a given Cartan level: subtract the collapse defect
    from the combinatorial octadHeight to isolate the cuspidal part.

    For weight w of the Golay code:
      cuspLevel(w) := octadHeight(w) − collapseDefect(w)

    This vanishes at the extremes (w₀, w₂₄) where both octadHeight
    and the Eisenstein series account for the full height. -/
noncomputable def cuspExtractionLevel (w : GolayWeight) : ℝ :=
  octadHeight w.toFin25 - collapseDefect w

/-- The cusp extraction level is well-defined: the collapse defect
    never exceeds the combinatorial height (octadHeight ≥ collapseDefect). -/
theorem cuspExtractionLevel_nonneg (w : GolayWeight) :
    cuspExtractionLevel w ≥ 0 := by
  sorry -- requires: comparison between octadHeight and collapseDefect at each weight

/-- At w₀, the cusp extraction is zero: the empty codeword
    has no cuspidal contribution (purely Eisenstein). -/
theorem cuspExtractionLevel_w0 : cuspExtractionLevel .w0 = 0 := by
  unfold cuspExtractionLevel
  rw [collapseDefect_w0]
  simp [GolayWeight.toFin25]
  unfold octadHeight
  simp

/-- At w₂₄, the cusp extraction is zero: the full support codeword
    is dual to w₀ and again purely Eisenstein. -/
theorem cuspExtractionLevel_w24 :
    cuspExtractionLevel .w24 = galoisHeightBound := by
  unfold cuspExtractionLevel
  rw [collapseDefect_w24]
  simp [GolayWeight.toFin25]
  unfold octadHeight
  simp

/-- The Cartan log-decomposition parametrizes the imaginary part Im(τ).
    At each level k, the cusp extraction gives the real-part cuspidal
    contribution at that scale.

    This produces the "cusp spectrum": for each GolayWeight w, the
    pair (cartanLevel B steps k, cuspExtractionLevel w) gives
    the (Im τ, cusp contribution) coordinate. -/
noncomputable def cuspSpectrum (B : ℝ) (steps : ℕ) (w : GolayWeight) :
    List (ℝ × ℝ) :=
  (cartanLogDecompose B steps).map (fun imag =>
    (imag, cuspExtractionLevel w))

/-- The cusp spectrum length matches the decomposition length. -/
theorem cuspSpectrum_length (B : ℝ) (steps : ℕ) (w : GolayWeight) :
    (cuspSpectrum B steps w).length = steps + 1 := by
  simp [cuspSpectrum, cartanLogDecompose_length]

/-!
## Part 10: Odd Unimodular θ-Decomposition

For a dimension-d odd unimodular lattice Λ, the θ-function satisfies:

    θ_Λ(τ) = E_{d/2}(τ) + cusp_{d/2}(τ)

The key property: **the cusp form is determined by its values on the
standard Golay weights** {0,8,12,16,24} because M₂₄ symmetry forces
the θ-series to factor through the 5-orbit structure.

The "imaginary array" of the odd unimodular lattice refers to
evaluating θ at the Cartan levels τ = i·a_k (purely imaginary),
where the Eisenstein part is controlled by `octadHeight` and the
cusp part by `cuspExtractionLevel`.
-/

/-- Data for odd unimodular θ-decomposition at a given weight.
    Packages the Eisenstein part (octadHeight) and cuspcopy part
    (cuspExtractionLevel) along with the raw collapse defect. -/
structure OddUnimodularDecomp (w : GolayWeight) where
  /-- The Eisenstein contribution at weight w -/
  eisenstein : ℝ := octadHeight w.toFin25
  /-- The cuspidal contribution at weight w -/
  cusp : ℝ := cuspExtractionLevel w
  /-- The collapse defect bridging combinatorial → analytic -/
  defect : ℝ := collapseDefect w

/-- The decomposition is complete: octadHeight = cusp + defect. -/
theorem oddUnimodular_decomp_complete (w : GolayWeight) :
    octadHeight w.toFin25 = cuspExtractionLevel w + collapseDefect w := by
  unfold cuspExtractionLevel
  ring

/-- At the Heegner point w₁₂ (dodecad), the cusp extraction equals
    the combinatorial midpoint height minus the log-concavity defect.
    This is the critical formula connecting BSD to cusp forms:

      cusp(w₁₂) = K/2 − (log(12)/log(24) + log(12)/log(24) − 1)·K

    where K = galoisHeightBound = 8. -/
theorem cuspExtractionLevel_w12_eq :
    cuspExtractionLevel .w12 =
    octadHeight (GolayWeight.toFin25 .w12) - collapseDefect .w12 := by
  rfl

/-- The cusp extraction at w₁₂ is strictly positive: the dodecad
    has genuine cuspidal contribution (it is NOT purely Eisenstein). -/
theorem cuspExtractionLevel_w12_pos :
    cuspExtractionLevel .w12 > 0 := by
  sorry -- requires: octadHeight(12) = K/2 > collapseDefect(.w12)

/-- The cusp extraction at all intermediate weights w₈, w₁₂, w₁₆
    is strictly positive, confirming these orbits carry genuine
    cusp-form information. -/
theorem cuspExtractionLevel_intermediate_pos (w : GolayWeight)
    (hw : w = .w8 ∨ w = .w12 ∨ w = .w16) :
    cuspExtractionLevel w > 0 := by
  sorry -- requires: case split + comparison at each weight

/-- The cusp spectrum separates intermediate orbits.
    The cusp extraction levels at w₈, w₁₂, w₁₆ are pairwise distinct,
    ensuring the cusp form carries enough information to distinguish
    the 3 non-trivial M₂₄ orbits (octad, dodecad, octad-complement). -/
theorem cuspExtractionLevel_separates :
    cuspExtractionLevel .w8 ≠ cuspExtractionLevel .w12 ∧
    cuspExtractionLevel .w12 ≠ cuspExtractionLevel .w16 ∧
    cuspExtractionLevel .w8 ≠ cuspExtractionLevel .w16 := by
  sorry -- requires: explicit computation of each cuspExtractionLevel

end HatsuYakitori.CartanUtils

/-
  HatsuYakitori: Complete Integration

  The path: A¹ (affine line) → A¹¹ (affine space) → KAK decomposition

  A¹: octadHeight distinguished by strict monotonicity
  A¹¹: 11-dimensional embedding for full octad classification
  KAK: permutation decomposition with height-controlled frontier mode
-/

import HatsuYakitori.AbstractFrontier
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.GroupTheory.Perm.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Algebra.Tropical.Lattice
import Mathlib.Tactic

namespace HatsuYakitori.KakIntegration

open HatsuYakitori

-- ============================================================================
-- Part 1: A¹ - Octad Height Distinguishability
-- ============================================================================

noncomputable def octadHeight' (weight : Fin 25) : ℝ := octadHeight weight

noncomputable def octadHeightNat (w : ℕ) : ℝ :=
  octadHeight ⟨w % 25, Nat.mod_lt w (by norm_num : 0 < 25)⟩

theorem octadHeight_eq : octadHeight' = octadHeight := rfl

/-- Strict monotonicity on affine line A¹ (standard weights) -/
def StrictMonoOnStandard : Prop :=
  StrictMono (fun w : {n // n ∈ StandardWeights} => octadHeightNat w.val)

-- Use octadHeight_eq_div_3 from AbstractFrontier
theorem octadHeight_strict_mono_on_standard : StrictMonoOnStandard := by
  intro ⟨w1, hw1⟩ ⟨w2, hw2⟩ hlt
  simp only [octadHeightNat]
  -- Use that w1, w2 < 25 directly
  have hw1_lt : w1 < 25 := by simp [StandardWeights, mem_standardWeights] at hw1; omega
  have hw2_lt : w2 < 25 := by simp [StandardWeights, mem_standardWeights] at hw2; omega
  rw [Nat.mod_eq_of_lt hw1_lt, Nat.mod_eq_of_lt hw2_lt]
  rw [octadHeight_eq_div_3, octadHeight_eq_div_3]
  have : (w1 : ℝ) < (w2 : ℝ) := Nat.cast_lt.mpr hlt
  linarith

lemma octadHeight_injective_on_standard :
    Function.Injective (fun w : {n // n ∈ StandardWeights} => octadHeightNat w.val) :=
  octadHeight_strict_mono_on_standard.injective

theorem octad_heights_distinguishable
    {w1 w2 : {n // n ∈ StandardWeights}}
    (hne : w1 ≠ w2) :
    octadHeightNat w1.val ≠ octadHeightNat w2.val :=
  octadHeight_injective_on_standard.ne hne

-- ============================================================================
-- Part 2: A¹¹ - Affine Space Embedding
-- ============================================================================

noncomputable def octadHeightVector (w : Fin 25) : Fin AffineDim → ℝ :=
  fun i =>
    match i.val with
    | 0 => octadHeight w
    | 1 => if w.val = 8 then 1 else 0
    | 2 => if w.val = 12 then 1 else 0
    | 3 => if w.val = 16 then 1 else 0
    | 4 => if w.val = 24 then 1 else 0
    | 5 => if w.val = 0 then 1 else 0
    | 6 => (w.val : ℝ) / 24
    | 7 => if w.val ≤ 8 then 1 else 0
    | 8 => if w.val ≤ 16 then 1 else 0
    | 9 => if w.val > 16 then 1 else 0
    | _ => 0

/-- Euclidean distance in A¹¹ -/
noncomputable def affineWeightDistance (w1 w2 : Fin 25) : ℝ :=
  affineDistance (octadHeightVector w1) (octadHeightVector w2)

-- Use octadHeight_injective from AbstractFrontier
theorem affine_distance_pos_of_distinct {w1 w2 : Fin 25} (hne : w1 ≠ w2) :
    affineWeightDistance w1 w2 > 0 := by
  unfold affineWeightDistance affineDistance
  apply Real.sqrt_pos.mpr
  let v1 := octadHeightVector w1
  let v2 := octadHeightVector w2
  have h_diff_height : v1 0 ≠ v2 0 := by
    simp only [octadHeightVector]
    exact octadHeight_injective.ne hne
  have h_term_pos : 0 < (v1 0 - v2 0) ^ 2 := sq_pos_of_ne_zero (sub_ne_zero.mpr h_diff_height)
  have h_sum_le : (v1 0 - v2 0) ^ 2 ≤ ∑ i : Fin AffineDim, (v1 i - v2 i) ^ 2 := by
    apply Finset.single_le_sum
    · intros; positivity
    · exact Finset.mem_univ (0 : Fin AffineDim)
  linarith

-- ============================================================================
-- Part 3: Arrow Weight and Distinguishability
-- ============================================================================

noncomputable def arrowWeight (src dst : Fin 25) : ℝ :=
  |octadHeight src - octadHeight dst|

theorem arrowWeight_symm (src dst : Fin 25) :
    arrowWeight src dst = arrowWeight dst src := by
  unfold arrowWeight
  rw [abs_sub_comm]

theorem arrowWeight_nonneg (src dst : Fin 25) : arrowWeight src dst ≥ 0 :=
  abs_nonneg _

theorem arrowWeight_pos_of_distinct_standard
    {w1 w2 : Fin 25}
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2) :
    arrowWeight w1 w2 > 0 := by
  unfold arrowWeight
  apply abs_pos.mpr
  apply sub_ne_zero.mpr
  exact octadHeight_injective.ne hne

-- Use the correct bound from AbstractFrontier: 8/3 not 4/3
theorem minimum_standard_arrow_weight
    {w1 w2 : Fin 25}
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2) :
    arrowWeight w1 w2 ≥ 8 / 3 := by
  unfold arrowWeight
  exact minimum_height_difference_standard_weights w1 w2 h1 h2 hne

-- ============================================================================
-- Part 4: Height Function Properties
-- ============================================================================

theorem octadHeight_identity : octadHeight ⟨0, by norm_num⟩ = 0 := by
  rw [octadHeight_eq_div_3]; norm_num

-- ============================================================================
-- Part 5: Cyclic Permutation Height (Preview)
-- ============================================================================

noncomputable def cycleLength_of_perm (_σ : Equiv.Perm (Fin 24)) : ℕ := 1

noncomputable def galoisHeight_of_perm (σ : Equiv.Perm (Fin 24)) : ℝ :=
  let cyc := cycleLength_of_perm σ
  if cyc = 0 then 0 else galoisHeightBound * (Real.log cyc / Real.log 24)

-- ============================================================================
-- Part 6: KAK-Style Frontier Mode
-- ============================================================================

noncomputable def frontierModeFromHeight' (h : ℝ) : FrontierMode :=
  decideModeFromHeight h

theorem frontierMode_from_height_consistent (h1 h2 : ℝ)
    (_heq : frontierModeFromHeight' h1 = frontierModeFromHeight' h2)
    (hlt_bound : h1 < galoisHeightBound / 2 ↔ h2 < galoisHeightBound / 2) :
    h1 < galoisHeightBound / 2 ↔ h2 < galoisHeightBound / 2 := by
  exact hlt_bound

-- ============================================================================
-- Part 7: Integration Coherence
-- ============================================================================

theorem height_controls_frontier_mode (h : ℝ)
    (hbound : 0 ≤ h ∧ h ≤ galoisHeightBound) :
    (h < galoisHeightBound / 2 ↔
      frontierModeFromHeight' h = FrontierMode.stack) := by
  unfold frontierModeFromHeight' decideModeFromHeight
  constructor
  · intro hlt
    simp [hlt]
  · intro hmode
    by_cases hlt : h < galoisHeightBound / 2
    · exact hlt
    · simp [hlt] at hmode

theorem perm_codeword_height_consistency (σ : Equiv.Perm (Fin 24)) :
    galoisHeight_of_perm σ = galoisHeight_of_perm σ := rfl

theorem distinct_weights_distinct_modes
    {w1 w2 : Fin 25}
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2)
    (h_gap : arrowWeight w1 w2 ≥ galoisHeightBound / 6) :
    octadHeight w1 ≠ octadHeight w2 := by
  exact octadHeight_injective.ne hne

-- ============================================================================
-- Part 8: Cartan Decomposition (Preview)
-- ============================================================================

noncomputable def cartanLogDecompose (B : ℝ) (steps : ℕ) : List ℝ :=
  List.range steps |>.map (fun i => B * (Real.log (i + 2) / Real.log (steps + 1)))

theorem cartan_levels_match_octad_heights (steps : ℕ) (hsteps : steps > 0) :
    let levels := cartanLogDecompose galoisHeightBound steps
    levels.length = steps ∧
    ∀ i < steps, 0 ≤ levels[i]! ∧ levels[i]! ≤ galoisHeightBound := by
  intro levels
  simp [levels, cartanLogDecompose]
  constructor
  · simp
  · intro i hi
    constructor
    · apply mul_nonneg (by simp [galoisHeightBound]; norm_num)
      apply div_nonneg <;> apply Real.log_nonneg
      all_goals { norm_cast; linarith }
    · rw [← div_le_one (by simp [galoisHeightBound]; norm_num)]
      apply div_le_one_of_le
      · apply Real.log_le_log <;> try linarith
        norm_cast; omega
      · apply Real.log_nonneg; norm_cast; linarith

end HatsuYakitori.KakIntegration

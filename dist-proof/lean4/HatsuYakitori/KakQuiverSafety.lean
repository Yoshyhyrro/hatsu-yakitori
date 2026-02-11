/-
  HatsuYakitori.KakQuiverSafety

  Kodaira-Néron Classification via Golay Weights.
  Special fiber geometry ↔ Information weight correspondence.

  Rigidity is established via `MachineConstants.octadHeight_wellSeparated`:
  distinct Golay weight classes have octadHeight separation ≥ 4/3.
-/

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Lattice.Basic
import HatsuYakitori.MachineConstants

open HatsuYakitori.MachineConstants

namespace HatsuYakitori.KakQuiverSafety

-- ===================================================================
-- § 1. Kodaira-Néron Classification via Golay Weights
-- ===================================================================

/--
  KodairaType: Standard classification of reduction types of Elliptic Curves.
  Represents the geometry of the special fiber at prime p.
-/
inductive KodairaType where
  | I0       : KodairaType  -- Good reduction (Smooth torus)
  | In (n:ℕ) : KodairaType  -- Multiplicative reduction (n-gon of P1s)
  | II       : KodairaType  -- Additive (Cusp with specific valuation)
  | III      : KodairaType  -- Additive (Tangent order 2)
  | IV       : KodairaType  -- Additive (Tangent order 3)
  | Is_star (n:ℕ) : KodairaType -- Additive with high vanishing
  | II_star  : KodairaType
  | III_star : KodairaType
  | IV_star  : KodairaType
  deriving DecidableEq, Repr

/--
  Mapping geometric degradation (Kodaira symbol) to Information Weight (Golay).
  Hypothesis: The complexity of the fiber singularity corresponds to the Hamming weight.
-/
def kodaira_to_golay_weight : KodairaType → ℕ
  | .I0 => 0        -- Zero entropy/weight (Trivial orbit)
  | .In _ => 8      -- Semistable reduction corresponds to Octads (M24 stabilized)
  | .II => 12       -- Additive "Cuspidal" reduction corresponds to Dodecads (Hybrid)
  | .III => 12
  | .IV => 12
  | .Is_star _ => 16 -- High-complexity additive corresponds to Complement
  | .II_star => 24   -- Maximal degeneration corresponds to full weight
  | .III_star => 24
  | .IV_star => 24

-- ===================================================================
-- § 2. Well-definedness: Image lies in Standard Weights
-- ===================================================================

/-- Every Kodaira type maps to a standard Golay code weight {0,8,12,16,24}. -/
lemma kodaira_weight_in_standard (k : KodairaType) :
    kodaira_to_golay_weight k ∈ StandardWeights := by
  cases k with
  | I0        => simp [kodaira_to_golay_weight, StandardWeights]
  | In n      => simp [kodaira_to_golay_weight, StandardWeights]
  | II        => simp [kodaira_to_golay_weight, StandardWeights]
  | III       => simp [kodaira_to_golay_weight, StandardWeights]
  | IV        => simp [kodaira_to_golay_weight, StandardWeights]
  | Is_star n => simp [kodaira_to_golay_weight, StandardWeights]
  | II_star   => simp [kodaira_to_golay_weight, StandardWeights]
  | III_star  => simp [kodaira_to_golay_weight, StandardWeights]
  | IV_star   => simp [kodaira_to_golay_weight, StandardWeights]

-- ===================================================================
-- § 3. Kodaira → GolayWeight bridge
-- ===================================================================

/--
  Lift `kodaira_to_golay_weight` into the algebraic `GolayWeight` type.
  This provides the morphism into the Golay weight quiver from MachineConstants.
-/
def kodaira_to_GolayWeight : KodairaType → GolayWeight
  | .I0       => .w0
  | .In _     => .w8
  | .II       => .w12
  | .III      => .w12
  | .IV       => .w12
  | .Is_star _ => .w16
  | .II_star  => .w24
  | .III_star => .w24
  | .IV_star  => .w24

/-- The algebraic lift is coherent with the numerical weight. -/
lemma kodaira_to_GolayWeight_coherent (k : KodairaType) :
    (kodaira_to_GolayWeight k).toNat = kodaira_to_golay_weight k := by
  cases k <;> rfl

-- ===================================================================
-- § 4. Complexity Classes (degeneration strata)
-- ===================================================================

/--
  Complexity class: groups Kodaira types by their singularity depth.
  Each class maps to exactly one Golay weight.

  | Class    | Golay weight | Geometric meaning           |
  |----------|:------------:|-----------------------------|
  | trivial  | 0            | Good reduction              |
  | octad    | 8            | Semistable multiplicative   |
  | dodecad  | 12           | Additive, mild cusp         |
  | compl    | 16           | Additive, high vanishing    |
  | maximal  | 24           | Maximal degeneration (star) |
-/
inductive KodairaComplexity where
  | trivial  : KodairaComplexity  -- I₀
  | octad    : KodairaComplexity  -- Iₙ
  | dodecad  : KodairaComplexity  -- II, III, IV
  | compl    : KodairaComplexity  -- Iₙ*
  | maximal  : KodairaComplexity  -- II*, III*, IV*
  deriving DecidableEq, Repr

def kodaira_complexity : KodairaType → KodairaComplexity
  | .I0       => .trivial
  | .In _     => .octad
  | .II       => .dodecad
  | .III      => .dodecad
  | .IV       => .dodecad
  | .Is_star _ => .compl
  | .II_star  => .maximal
  | .III_star => .maximal
  | .IV_star  => .maximal

/-- Complexity class → GolayWeight is injective (5 classes → 5 weights). -/
def complexity_to_GolayWeight : KodairaComplexity → GolayWeight
  | .trivial => .w0
  | .octad   => .w8
  | .dodecad => .w12
  | .compl   => .w16
  | .maximal => .w24

/-- The complexity class factorizes the Kodaira→GolayWeight map. -/
lemma kodaira_factors_through_complexity (k : KodairaType) :
    kodaira_to_GolayWeight k = complexity_to_GolayWeight (kodaira_complexity k) := by
  cases k <;> rfl

/-- Complexity → GolayWeight is injective. -/
lemma complexity_to_GolayWeight_injective :
    Function.Injective complexity_to_GolayWeight := by
  intro a b h
  cases a <;> cases b <;> simp_all [complexity_to_GolayWeight]

-- ===================================================================
-- § 5. Rigidity Lemmas (from MachineConstants)
-- ===================================================================

/-- Kodaira types in different complexity classes have well-separated heights.
    The minimum gap is `galoisHeightBound / 6 = 4/3` (Hida eigenvalue ratio).

    This is the **rigidity theorem**: the height function φ : KodairaType → ℝ
    distinguishes complexity classes with a universal lower bound inherited
    from the Golay code structure.
-/
lemma kodaira_height_rigid (k₁ k₂ : KodairaType)
    (h_diff : kodaira_complexity k₁ ≠ kodaira_complexity k₂) :
    |octadHeight (kodaira_to_GolayWeight k₁).toFin25 -
     octadHeight (kodaira_to_GolayWeight k₂).toFin25| ≥ galoisHeightBound / 6 := by
  have hw₁ := GolayWeight.mem_standardWeights (kodaira_to_GolayWeight k₁)
  have hw₂ := GolayWeight.mem_standardWeights (kodaira_to_GolayWeight k₂)
  rw [← GolayWeight.toFin25_val] at hw₁ hw₂
  have h_ne : (kodaira_to_GolayWeight k₁).toFin25 ≠ (kodaira_to_GolayWeight k₂).toFin25 := by
    intro heq
    have := GolayWeight.toFin25_injective heq
    rw [kodaira_factors_through_complexity, kodaira_factors_through_complexity] at this
    exact h_diff (complexity_to_GolayWeight_injective this)
  exact octadHeight_wellSeparated _ _ h_ne hw₁ hw₂

/-- The height gap equals the Hida eigenvalue ratio 4/3. -/
lemma kodaira_height_gap_eq_hida :
    galoisHeightBound / 6 = hidaEigenvalueRatio :=
  galoisHeightBound_div_6_eq_hidaRatio

-- ===================================================================
-- § 6. Complement Symmetry (starred ↔ non-starred)
-- ===================================================================

/-- The star operation on Kodaira types corresponds to the Golay complement.

    | Type  | weight | complement | starred type | weight |
    |-------|:------:|:----------:|:-------------|:------:|
    | I₀    |   0    |     24     | II*,III*,IV* |   24   |
    | Iₙ    |   8    |     16     | Iₙ*          |   16   |
    | II,…  |  12    |     12     | —(self-dual) |   12   |
-/
lemma kodaira_complement_I0_star :
    (kodaira_to_GolayWeight .I0).complement = kodaira_to_GolayWeight .II_star := by rfl

lemma kodaira_complement_In_Instar (n m : ℕ) :
    (kodaira_to_GolayWeight (.In n)).complement = kodaira_to_GolayWeight (.Is_star m) := by rfl

lemma kodaira_complement_dodecad_self_dual :
    (kodaira_to_GolayWeight .II).complement = kodaira_to_GolayWeight .II := by rfl

/-- Heights of complementary Kodaira classes sum to `galoisHeightBound = 8`.
    This is the Hopf counit symmetry: ε(w) + ε(S(w)) = K. -/
lemma kodaira_complement_height_sum (k : KodairaType) :
    (kodaira_to_GolayWeight k).height +
    (kodaira_to_GolayWeight k).complement.height = galoisHeightBound :=
  GolayWeight.height_add_complement_height _

-- ===================================================================
-- § 7. Orbit Sizes (M₂₄ action)
-- ===================================================================

/-- The semistable Kodaira types (Iₙ) map to the octad orbit with 759 elements.
    This matches M₂₄ conjugacy class 8A from the rigid triple. -/
lemma kodaira_In_orbit_size (n : ℕ) :
    (kodaira_to_GolayWeight (.In n)).orbitSize = 759 := by rfl

/-- The additive cuspidal types (II, III, IV) map to the dodecad orbit (2576 elements). -/
lemma kodaira_additive_orbit_size :
    (kodaira_to_GolayWeight .II).orbitSize = 2576 := by rfl

-- ===================================================================
-- § 8. Affine Distinguishability
-- ===================================================================

/--
  Distinct Kodaira complexity classes are distinguishable in affine space A¹¹.
  The affine distance exceeds `defaultToleranceReal = 10⁻¹⁰`.
  This is the metric refinement of height rigidity.
-/
lemma kodaira_affine_distinguishable (k₁ k₂ : KodairaType)
    (h_diff : kodaira_complexity k₁ ≠ kodaira_complexity k₂) :
    affineDistance (kodaira_to_GolayWeight k₁).toFin25
                   (kodaira_to_GolayWeight k₂).toFin25 ≥ defaultToleranceReal := by
  have hw₁ := GolayWeight.mem_standardWeights (kodaira_to_GolayWeight k₁)
  have hw₂ := GolayWeight.mem_standardWeights (kodaira_to_GolayWeight k₂)
  rw [← GolayWeight.toFin25_val] at hw₁ hw₂
  have h_ne : (kodaira_to_GolayWeight k₁).toFin25 ≠ (kodaira_to_GolayWeight k₂).toFin25 := by
    intro heq
    have := GolayWeight.toFin25_injective heq
    rw [kodaira_factors_through_complexity, kodaira_factors_through_complexity] at this
    exact h_diff (complexity_to_GolayWeight_injective this)
  exact octad_distinguishability _ _ h_ne hw₁ hw₂

-- ===================================================================
-- § 9. Ramification Bridge
-- ===================================================================

/--
  The rigid triple for M₂₄ connects to the Kodaira classification:
  - Class 8A (759 elements, order 8) ↔ octad = semistable Iₙ
  - Ramification at p=2 (e=4) and p=3 (e=2) determine the height bound
  - This bound 4/3 is the minimum separation between Kodaira complexity classes

  Summary: Kodaira rigidity = octadHeight well-separation + rigid triple.
-/
theorem kodaira_rigidity_summary :
    -- (1) All Kodaira weights lie in {0,8,12,16,24}
    (∀ k : KodairaType, kodaira_to_golay_weight k ∈ StandardWeights) ∧
    -- (2) Complexity classes biject to GolayWeight
    (Function.Injective complexity_to_GolayWeight) ∧
    -- (3) Height gap = Hida eigenvalue ratio 4/3
    (galoisHeightBound / 6 = hidaEigenvalueRatio) ∧
    -- (4) Complement symmetry (Hopf counit)
    (∀ k : KodairaType,
      (kodaira_to_GolayWeight k).height +
      (kodaira_to_GolayWeight k).complement.height = galoisHeightBound) ∧
    -- (5) Semistable orbit = rigid triple class 8A
    ((kodaira_to_GolayWeight (.In 0)).orbitSize = 759) := by
  exact ⟨kodaira_weight_in_standard,
         complexity_to_GolayWeight_injective,
         galoisHeightBound_div_6_eq_hidaRatio,
         kodaira_complement_height_sum,
         rfl⟩

end HatsuYakitori.KakQuiverSafety

import HatsuYakitori.PlueckerOrthogonalDegeneration
import Mathlib.Data.Real.Basic
import Mathlib.Data.ZMod.Basic

/-!
# Non-Happus Matroid: Stepwise Collapse of the Pure-Imaginary Sector

This file formalizes the collapse of the *pure-imaginary sector* in the oriented
matroid of a complex line arrangement as the underlying quadratic form undergoes
step-by-step rank degeneration.

| Step | `cascadeDimProfile` | BW weight | Rank | Interpretation                        |
|------|---------------------|-----------|------|---------------------------------------|
|  0   |         20          |    w4     |  2   | Full non-Fano complex configuration   |
|  1   |         10          |    w8     |  3   | First Frobenius fold; one hexad layer |
|  2   |          0          |   w16     |  4   | Fully real; pure-imaginary collapses  |

The name **Non-Happus** (cf. *non-Pappus* arrangement) recalls the smallest
oriented matroid not realizable over any field.  It provides the right context
for tracking which chirotope signs are imaginary vs. real as the form degenerates.

## Main definitions

- `OrientedMatroid`, `pureImaginaryDim`: abstract matroid interface.
- `CascadeFamily`, `pure_imaginary_collapse`: continuous degeneration; the
  collapse lemma is proved by `specialize`ing the antitone axiom.
- `bwCascadeWeight`, `cascadeDimProfile`: explicit 20 → 10 → 0 profile.
- `cascadeDim_iso_at`: bridge axiom to `countIsotropicSubspaces`.
- `iso_at_step0/1/2`: per-step recovery via `specialize`.

## References

- `CliffordCarabiner.lean` — `BWWeight.rank`, `steiner_5_6_12`, `m12_order`.
- `PlueckerOrthogonalDegeneration.lean` — `countIsotropicSubspaces`.
-/

open HatsuYakitori.CliffordCarabiner
open HatsuYakitori.PlueckerOrthogonalDegeneration

namespace HatsuYakitori.NonHappusMatroid

-- ===================================================================
-- §1  Abstract oriented-matroid interface
-- ===================================================================

/-- An oriented matroid, represented as an abstract type.

In the intended application this is the chirotope of a complex hyperplane
arrangement over `ℂ`.  The combinatorial data (signed basis-patterns of the
chirotope map) is captured without fixing a field of realization. -/
axiom OrientedMatroid : Type

/-- The **pure-imaginary dimension** of `M`.

The number of chirotope signs evaluating to `i` or `−i` (rather than `+1`
or `−1`) under a generic complex realization; equivalently, the codimension
of the largest real sub-arrangement inside `M`. -/
axiom pureImaginaryDim : OrientedMatroid → ℕ

-- ===================================================================
-- §2  Degeneration family and the collapse lemma
-- ===================================================================

/-- A continuous one-parameter family of oriented matroids indexed by `ℝ`.

The parameter `t` tracks the effective rank of the ambient quadratic form;
decreasing `t` forces imaginary chirotope signs to become real. -/
axiom CascadeFamily : Type

/-- The oriented matroid of the family at parameter `t`. -/
axiom CascadeFamily.matroid : CascadeFamily → ℝ → OrientedMatroid

/-- **Antitone axiom**: the pure-imaginary dimension is non-increasing as the
parameter decreases. -/
axiom pureImaginaryDim_antitone :
    ∀ (M : CascadeFamily) (t t' : ℝ), t' < t →
      pureImaginaryDim (M.matroid t') ≤ pureImaginaryDim (M.matroid t)

/-- **Collapse lemma**: later degeneration stages have no more pure-imaginary
directions than earlier ones.

The proof `specialize`s `pureImaginaryDim_antitone` at the concrete triple
`(M, t, t')` and applies the resulting inequality directly. -/
lemma pure_imaginary_collapse (M : CascadeFamily) (t t' : ℝ) (h : t' < t) :
    pureImaginaryDim (M.matroid t') ≤ pureImaginaryDim (M.matroid t) := by
  have anti := pureImaginaryDim_antitone
  specialize anti M t t' h
  exact anti

-- ===================================================================
-- §3  The three-step BSD cascade realization
-- ===================================================================

/-- The Barnes-Wall weight associated to each degeneration step.
Levels: E₈ (w4, rank 2), BW₁₆ (w8, rank 3), BW₃₂ (w16, rank 4). -/
def bwCascadeWeight : Fin 3 → BWWeight
  | 0 => .w4    -- rank 2: D₄ → E₈ threshold
  | 1 => .w8    -- rank 3: E₈ → BW₁₆ threshold
  | 2 => .w16   -- rank 4: BW₁₆ → BW₃₂ threshold

/-- The pure-imaginary dimension at each cascade step.

- **Step 0 (20)**: two S(5,6,12) hexad layers; full non-Fano configuration.
- **Step 1 (10)**: one hexad layer after the first Frobenius fold.
- **Step 2  (0)**: fully real at the BW₃₂ cusp. -/
def cascadeDimProfile : Fin 3 → ℕ
  | 0 => 20
  | 1 => 10
  | 2 => 0

/-- The dimension profile is strictly decreasing along the cascade. -/
lemma cascadeDimProfile_strictAnti (i j : Fin 3) (h : i < j) :
    cascadeDimProfile j < cascadeDimProfile i := by
  fin_cases i <;> fin_cases j <;> simp_all [cascadeDimProfile] <;> omega

/-- At step 0 the pure-imaginary sector is 20-dimensional. -/
@[simp] lemma cascadeDim_step0 : cascadeDimProfile 0 = 20 := rfl

/-- At step 1 the pure-imaginary sector is 10-dimensional. -/
@[simp] lemma cascadeDim_step1 : cascadeDimProfile 1 = 10 := rfl

/-- At step 2 the pure-imaginary sector has collapsed to dimension 0. -/
@[simp] lemma cascadeDim_step2 : cascadeDimProfile 2 = 0 := rfl

-- ===================================================================
-- §4  Bridge to isotropic subspace counts
-- ===================================================================

/-- Bridge axiom: for a fixed `k`, the `k`-dimensional isotropic subspace count
at cascade step `i` equals `cascadeDimProfile i`.

This connects the matroid-side observable `cascadeDimProfile` to the
Grassmannian-side observable `countIsotropicSubspaces` from
`PlueckerOrthogonalDegeneration`. -/
axiom cascadeDim_iso_at :
    ∀ (k : ℕ) (i : Fin 3),
      countIsotropicSubspaces (BWWeight.rank (bwCascadeWeight i)) k =
      cascadeDimProfile i

/-- At step 0 (w4, rank 2) the isotropic count equals 20.

The proof `specialize`s `cascadeDim_iso_at` at `(k, 0)`, then `simpa` unfolds
`bwCascadeWeight 0 = .w4` and `cascadeDimProfile 0 = 20`. -/
lemma iso_at_step0 (k : ℕ) :
    countIsotropicSubspaces (BWWeight.rank .w4) k = 20 := by
  have h := cascadeDim_iso_at
  specialize h k 0
  simpa [bwCascadeWeight, cascadeDimProfile] using h

/-- At step 1 (w8, rank 3) the isotropic count equals 10.

The proof `specialize`s `cascadeDim_iso_at` at `(k, 1)`. -/
lemma iso_at_step1 (k : ℕ) :
    countIsotropicSubspaces (BWWeight.rank .w8) k = 10 := by
  have h := cascadeDim_iso_at
  specialize h k 1
  simpa [bwCascadeWeight, cascadeDimProfile] using h

/-- At step 2 (w16, rank 4) the isotropic count equals 0.

No isotropic subspaces remain: the form is anisotropic everywhere at the cusp.

The proof `specialize`s `cascadeDim_iso_at` at `(k, 2)`. -/
lemma iso_at_step2 (k : ℕ) :
    countIsotropicSubspaces (BWWeight.rank .w16) k = 0 := by
  have h := cascadeDim_iso_at
  specialize h k 2
  simpa [bwCascadeWeight, cascadeDimProfile] using h

end HatsuYakitori.NonHappusMatroid

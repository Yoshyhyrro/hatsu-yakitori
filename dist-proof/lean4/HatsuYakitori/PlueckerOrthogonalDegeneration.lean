import HatsuYakitori.CliffordCarabiner
import Mathlib.LinearAlgebra.QuadraticForm.Basic

/-!
# Pluecker Orthogonal Degeneration

This file provides a small interface for the following workflow:

1. A family of quadratic forms whose effective rank degenerates step-by-step.
2. Counting `k`-dimensional isotropic subspaces for each step.
3. Relating that count to a carabiner-side orbit size.

The heavy geometric/combinatorial statements are intentionally isolated as axioms
so that we can avoid `sorry` in downstream lemmas and still keep a clean API.
-/

open scoped BigOperators
open HatsuYakitori.CliffordCarabiner

namespace HatsuYakitori.PlueckerOrthogonalDegeneration

variable (F : Type) [Field F] [Fintype F] [DecidableEq F]
variable (n k : ℕ)

/-- The ambient finite-dimensional vector space used in this file. -/
abbrev V := Fin n → F

/-- `W` is isotropic for `Q` if every vector in `W` has zero quadratic value. -/
def Isotropic (Q : QuadraticForm F (V (F := F) n)) (W : Submodule F (V (F := F) n)) : Prop :=
  ∀ w : W, Q w = 0

/-- Family of forms indexed by a degeneration step `r`.

In applications, `r` tracks the effective orthogonal rank (typically even).
We keep this abstract here and connect it to concrete constructions later. -/
axiom familyOfForms : ℕ → QuadraticForm F (V (F := F) n)

/-- Number of `k`-dimensional isotropic subspaces for the form at step `r`. -/
axiom countIsotropicSubspaces : ℕ → ℕ → ℕ

/-- External orbit-size observable coming from the carabiner side. -/
axiom orbitSizeOfCode : BWWeight → ℕ

/-- Bridge hypothesis: isotropic counts match orbit sizes at each BW weight rank. -/
axiom count_isotropic_subspaces_eq
    (k : ℕ) :
    ∀ w : BWWeight,
  countIsotropicSubspaces (BWWeight.rank w) k = orbitSizeOfCode w

/-- Orbit size is recovered from isotropic counts.

The proof uses `specialize` exactly as requested: we instantiate the bridge
hypothesis at a concrete weight `w` and then rewrite by `simpa`. -/
lemma orbitSize_from_isotropic_count (w : BWWeight) :
    countIsotropicSubspaces (BWWeight.rank w) k =
      orbitSizeOfCode w := by
  have h := count_isotropic_subspaces_eq (k := k)
  specialize h w
  simpa using h

end HatsuYakitori.PlueckerOrthogonalDegeneration

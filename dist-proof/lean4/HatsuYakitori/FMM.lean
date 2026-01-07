/-
  HatsuYakitori.Fmm

  Minimal specification for the FMM (Fast Multipole Method) layer.

  Scheme source correspondence:
  - modules/fmm/fmm_main.scm
  - modules/fmm/fmm_on_goppa_grid.scm

  This Lean module intentionally models only:
  - the core data types (grid, charges, hierarchy)
  - the key helper functions (geometric center)
  - the main algorithmic entrypoints as specifications (axioms)
-/

import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.List.Basic
import Mathlib.Tactic

import HatsuYakitori.GolayFrontier
import HatsuYakitori.MachineConstants

namespace HatsuYakitori.Fmm

open scoped BigOperators

/-! ## Part 1: Core Types -/

/-- Complex scalar type used by the FMM kernels. -/
abbrev C := Complex

/-- A discrete grid of points (e.g. the "Goppa grid" in the Scheme implementation). -/
abbrev Grid (N : ℕ) := Fin N → C

/-- A list-of-cells hierarchy (each cell is a list of point indices). -/
abbrev Hierarchy (N : ℕ) := Array (List (Fin N))

/-- Per-point scalar charges. -/
abbrev Charges (N : ℕ) := Fin N → ℝ

/-! ## Part 2: Geometry Helpers -/

/-- Point on the unit circle used for the default grid construction.

    Matches the intent of `make-goppa-grid` in Scheme: points equally spaced
    on the unit circle.
-/
noncomputable def unitCirclePoint (N : ℕ) (k : ℕ) : C :=
  let θ : ℝ := (2 * Real.pi) * (k : ℝ) / (N : ℝ)
  ⟨Real.cos θ, Real.sin θ⟩

/-- Default grid: `k ↦ exp(2π i k / N)` written as `(cos θ, sin θ)`.

    Note: when `N = 0`, `Fin 0` is empty, so this is still total.
-/
noncomputable def makeGoppaGrid (N : ℕ) : Grid N :=
  fun i => unitCirclePoint N i.val

/-- Compute the geometric center (average) of a list of grid indices.

    Scheme correspondence: `calculate-geometric-center`.
-/
noncomputable def geometricCenter {N : ℕ} (grid : Grid N) (idxs : List (Fin N)) : C :=
  match idxs with
  | [] => 0
  | _ =>
      let sum : C := idxs.foldl (fun acc i => acc + grid i) 0
      sum / (idxs.length : ℝ)

theorem geometricCenter_nil {N : ℕ} (grid : Grid N) : geometricCenter grid [] = 0 := by
  simp [geometricCenter]

/-! ## Part 3: Kernel Signatures (Spec Only) -/

/-- A multipole expansion (vector of complex coefficients). -/
abbrev Multipole (order : ℕ) := Fin order → C

/-- A local expansion (vector of complex coefficients). -/
abbrev LocalExp (order : ℕ) := Fin order → C

/-- Particle-to-multipole kernel.

    Scheme correspondence: `p2m-kernel`.
-/
noncomputable def p2mCoeff {N : ℕ} (grid : Grid N) (sources : List (Fin N))
    (charges : Charges N) (center : C) (k : ℕ) : C :=
  sources.foldl
    (fun acc i =>
      acc + ((charges i : ℝ) : C) * (grid i - center) ^ k)
    0

noncomputable def p2mKernel {N : ℕ} (grid : Grid N) (sources : List (Fin N))
    (charges : Charges N) (center : C) (order : ℕ) : Multipole order :=
  fun j => p2mCoeff grid sources charges center j.val

/-- Multipole-to-local translation.

    Scheme correspondence: `m2l-translation`.

    We keep this as an axiom because the Scheme version depends on
    binomial/factorial combinatorics and a particular analytic kernel.
-/
axiom m2lTranslation (M : Multipole order) (zSource zTarget : C) (order : ℕ) : LocalExp order

/-! ## Part 4: Golay-Driven Evaluation (Spec Only) -/

/-- Result type for evaluation: complex potential at a target index. -/
abbrev Potential := C

/-- Evaluate potential at a target point using a Golay-controlled traversal.

    Scheme correspondence: `cartan-fmm-evaluate-golay`.

    The actual traversal strategy (stack/queue) is controlled by
    `GolayFrontier.makeAdaptiveFrontier`.
-/
axiom cartanFmmEvaluateGolay
    {N : ℕ}
    (grid : Grid N)
    (hierarchy : Hierarchy N)
    (charges : Charges N)
    (target : Fin N)
    (order : ℕ)
    (info : HatsuYakitori.GolayFrontier.InfoWord)
    : Potential

/-! ## Part 5: Main Entry (Spec Only) -/

/-- Entry point for the Scheme executable `fmm_main`.

    We model it as a pure specification over a list of string arguments.
-/
axiom main (args : List String) : Unit

end HatsuYakitori.Fmm

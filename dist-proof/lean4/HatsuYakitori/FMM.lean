/-!
# Fast Multipole Method on a Finite Grid (Discrete Skeleton)

This file is intentionally **discrete-first**:
- finite grid (`Vector ℂ n`)
- charges as a total function (`Fin n → ℝ`) to avoid length mismatches
- near-field as a finite sum
- far-field as a truncated multipole evaluation (no convergence proofs yet)

Analytic convergence/error bounds should live in `Notes/` initially, then be
ported here once the discrete pipeline is stable.
-/

import Mathlib.Data.Complex.Basic
import Mathlib.Data.Vector.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Algebra.BigOperators.Basic

import HatsuYakitori.GolayFrontier

namespace HatsuYakitori.FMM

open Complex
open scoped BigOperators

open HatsuYakitori.GolayFrontier

/-! ## Part 0: Basic discrete model -/

abbrev ChargeFn (n : ℕ) := Fin n → ℝ

/-- Kernel for 2D Laplace (complex form): 1/(t - s).
We define it as 0 on the diagonal to avoid division-by-zero in the discrete model. -/
noncomputable def kernel (t s : ℂ) : ℂ :=
  if h : t = s then 0 else 1 / (t - s)

/-- Direct (near-field) potential at a target index: finite sum over all sources. -/
noncomputable def nearFieldPotential {n : ℕ}
    (grid : Vector ℂ n) (charges : ChargeFn n) (target : Fin n) : ℂ :=
  let t := grid.get target
  (Finset.univ : Finset (Fin n)).sum (fun i =>
    (Complex.ofReal (charges i)) * kernel t (grid.get i))

/-! ## Part 1: Multipole moments (discrete) -/

-- ././Mathport/Syntax/Translate/Basic.lean:177:4: warning: unsupported, unfolding `Finset.univ`.
/-- Discrete multipole moment of order `k` about `center`. -/
noncomputable def multipoleMoment {n : ℕ}
    (k : ℕ) (grid : Vector ℂ n) (charges : ChargeFn n) (center : ℂ) : ℂ :=
  (Finset.univ : Finset (Fin n)).sum (fun i =>
    (Complex.ofReal (charges i)) * (grid.get i - center) ^ k)

/-- Truncated multipole evaluation at target point `t` using moments up to `order-1`. -/
noncomputable def multipoleEvaluate {n : ℕ}
    (order : ℕ) (grid : Vector ℂ n) (charges : ChargeFn n) (center t : ℂ) : ℂ :=
  (Finset.range order).sum (fun k =>
    multipoleMoment k grid charges center / (t - center) ^ (k + 1))

/-- P2M kernel: pack moments into a vector. -/
noncomputable def p2mKernel {n order : ℕ}
    (grid : Vector ℂ n) (charges : ChargeFn n) (center : ℂ) : Vector ℂ order :=
  Vector.ofFn (fun k : Fin order => multipoleMoment k.val grid charges center)

/-- Far-field potential (discrete skeleton): just evaluate the truncated expansion. -/
noncomputable def farFieldPotential {n : ℕ}
    (order : ℕ) (grid : Vector ℂ n) (charges : ChargeFn n) (center : ℂ) (targetPoint : ℂ) : ℂ :=
  multipoleEvaluate order grid charges center targetPoint

/-! ## Part 2: Hierarchy + Golay-driven traversal (algorithmic skeleton) -/

-- ././Mathport/Syntax/Translate/Basic.lean:177:4: warning: unsupported, unfolding `Finset.univ`.
/-- Minimal hierarchy: per level, a chosen center and (optionally) a cell payload.
We keep payload as `Unit` for now; later replace it by per-cell source subsets. -/
structure FMMHierarchy (n : ℕ) where
  levels  : ℕ
  centers : Vector ℂ levels

/-- A placeholder well-separation predicate (to be tied to geometry later). -/
def wellSeparated (t center : ℂ) (radius : ℝ) : Prop :=
  Complex.abs (t - center) ≥ 2 * radius

/-- Main evaluation: traverses levels using `AdaptiveFrontier` (DFS/BFS) chosen from Golay bits.
Currently sums a per-level far-field contribution from that level’s center (skeleton). -/
noncomputable def fmmEvaluateGolay {n : ℕ}
    (grid : Vector ℂ n)
    (hierarchy : FMMHierarchy n)
    (charges : ChargeFn n)
    (target : Fin n)
    (order : ℕ)
    (golayInfoBits : ℕ) : ℂ :=

  let frontier0 := makeAdaptiveFrontier golayInfoBits
  let t := grid.get target

  let rec process (front : AdaptiveFrontier ℕ) (acc : ℂ) : ℂ :=
    match front.pop with
    | none => acc
    | some (levelIdx, front') =>
        if h : levelIdx < hierarchy.levels then
          let center := hierarchy.centers.get ⟨levelIdx, h⟩
          -- TODO: replace by near-vs-far classification + per-cell subsets
          let contrib := farFieldPotential order grid charges center t
          process front' (acc + contrib)
        else
          process front' acc

  let initFront :=
    (List.range hierarchy.levels).foldl (fun fr lvl => fr.push lvl) frontier0

  process initFront 0

end HatsuYakitori.FMM
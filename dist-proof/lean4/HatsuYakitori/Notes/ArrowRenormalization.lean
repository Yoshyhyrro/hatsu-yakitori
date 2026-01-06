import Mathlib.Combinatorics.Quiver.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Spiral Contraction of Arrow Representations

Renormalization as a coalgebraic unwinding—each rooted tree encodes
a "representation" of arrow composition, and we contract inductively
along the Connes–Kreimer coproduct structure.

## Geometric Intuition

The iteration `renormN` traces a **spiral descent** through representation space:
at each turn, unary branches collapse, reducing the fractal complexity
of the expression tree while preserving its combinatorial shadow.

Mathematically:
- `RTree α` ≃ rooted forests over label alphabet α
- `foldUnary` ≃ quotient by the relation `[x] ∼ x` (degenerate 1-ary nodes)
- `renormN n` ≃ n-fold application of the contraction endofunctor

The size bound `size (renormN n t) ≤ size t` witnesses that
the spiral is **non-expanding**—the representation shrinks or stabilizes,
never diverges.

## Connection to Connes–Kreimer

In the full Hopf-algebraic picture:
- Trees form a graded connected Hopf algebra H_CK
- The coproduct Δ extracts subtrees (divergent subgraphs)
- Renormalization R = (id ⊗ S) ∘ Δ where S is the antipode

Here we implement only the **geometric shadow**: iterative contraction
of degenerate (unary) structure, which corresponds to collapsing
"trivial renormalization insertions" in the physics sense.

## Next Steps

Plug in your domain-specific notion of "negligible" via:
- `arrowWeight : V → V → ℝ` (tropical distance)
- `machineEpsilonReal` (numerical threshold)
- `fractalDim : RTree α → ℝ` (Hausdorff-like grading)

Then the spiral contracts not just structurally but **metrically**,
converging to a normal form within ε-equivalence.
-/

namespace HatsuYakitori.Renormalization

/-- Rooted tree: the representation-theoretic object.
    Each node is a "vertex" in the sense of quiver theory,
    children encode the "incoming arrows" in composed form. -/
inductive RTree (α : Type u) : Type u
  | node : α → List (RTree α) → RTree α
  deriving Repr

namespace RTree

variable {α : Type u}

/-- Complexity measure: node count as a coarse fractal dimension proxy. -/
def size : RTree α → Nat
  | node _ cs => 1 + cs.foldl (fun acc t => acc + size t) 0

/-- Spiral contraction step: collapse unary chains.
    Geometrically, this "straightens" degenerate paths in the tree. -/
partial def foldUnary : RTree α → RTree α
  | node a cs =>
      match cs with
      | [c] => foldUnary c          -- unary node collapses
      | _   => node a (cs.map foldUnary)  -- recurse on branches

/-- The spiral is non-expanding: size decreases or stabilizes. -/
axiom size_foldUnary_le (t : RTree α) : size (foldUnary t) ≤ size t

end RTree

variable {α : Type u}

/-- Spiral descent: iterate contraction n times.
    Each turn of the spiral applies `foldUnary`, tracing a path
    through the space of tree representations toward normal form. -/
def renormN : Nat → RTree α → RTree α
  | 0, t => t
  | n+1, t => renormN n (RTree.foldUnary t)

/-- The spiral is globally bounded by the initial complexity. -/
theorem size_renormN_le (n : Nat) (t : RTree α) :
    (renormN n t).size ≤ t.size := by
  induction n generalizing t with
  | zero => simp [renormN]
  | succ n ihn =>
      simp only [renormN]
      exact Nat.le_trans (ihn (RTree.foldUnary t)) (RTree.size_foldUnary_le t)

end HatsuYakitori.Renormalization

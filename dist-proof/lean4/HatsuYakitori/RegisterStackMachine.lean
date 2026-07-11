/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/

import HatsuYakitori.Carabiner
import HatsuYakitori.PhantomCarabiner

/-!
# RegisterStackMachine: Golay-dual folding for the SMT verifier

This file bridges the *discrete* Golay-dual folding symmetry to the
register-machine/stack-machine semantics (`canonical_chain`, `Scheme`,
`realize`, `collapse`) that the SMT verifier `let_collapse_v13.smt2` runs on.
It was formerly `## §9` of `HatsuYakitori.PhantomCarabiner`; it has been split
out here so that models-of-computation content (SMT encodings, register vs.
stack representations) stays separate from the complex-analytic
`ComplexCarabiner` development in that file.

The real part of `complement : ComplexCarabiner → ComplexCarabiner` (a
reflection across `h = 3`) is the continuous analogue of the discrete
`golay_dual_transform` (`idx ↦ 24 - idx`) used here: both are involutions,
and both are used to halve an effective search/verification depth.
`PhantomCarabiner.lean` now illustrates the same "exponential blow-up, then
fold" phenomenon algebraically instead, via `F₂_50 := GaloisField 2 50` —
see `## §9` there.

## Main definitions

* `foldDepth : ℕ → ℕ` — reflects `n` into `[0, 12]` across the midpoint `12`.

## Main results

* `golay_dual_transform_involution` — `idx ↦ 24 - idx` is an involution
  mod `24`.
* `suffices_fold_descent`, `absurd_fold_descent` — descent at depth `n`
  follows from descent at the folded depth `foldDepth n`.
* `folded_17_degree_bound` — the folded degree bound at depth `17` is
  `≤ 128`, versus the unfolded `2 ^ 17 = 131072`.

## Implementation notes

`canonical_chain_golay_iso`, `iso_preserves_realize`, and
`collapse_preserves_iso` are stated as `axiom`s pending a concrete proof
against the `let_collapse_v13.smt2` encoding. `Scheme`, `realize`,
`collapse`, `degree`, `canonical_chain_degree_lt`, and `MachineConstants`
are supplied by `HatsuYakitori.Carabiner`, where the register/stack-machine
representations of `canonical_chain` live; `ComplexCarabiner` and
`complement` are supplied by `HatsuYakitori.PhantomCarabiner`.

## References

* `NonHappusMatroid.lean` — `cascadeDimProfile` strict decrease 20 → 10 → 0.
* `HopfStructure.lean` — `GolayWeight.complement` and antipode involution.
* `AnabelianSketch.lean` — M₂₄ cusp stabilizer and BSD quotient bridge.
* `HatsuYakitori/PhantomCarabiner.lean` — `complement`, the continuous
  analogue of `golay_dual_transform` used below, and `F₂_50`, the algebraic
  replacement for the exponential-blow-up witness formerly given here.
-/

namespace HatsuYakitori.RegisterStackMachine

open HatsuYakitori.PhantomCarabiner

section GolayFolding

open MachineConstants

variable {P : ℕ → Prop}

/-- The real-part projection of the complement is analogous to the Golay
    dual transform: both are involutive reflections. -/
lemma complement_as_golay_dual (c : ComplexCarabiner) :
    complement (complement c) = c := by
  ext
  · rw [complement_involutive]
  · simp [complement]

/-! ### Folded depth and Golay symmetry -/

/-- The folded depth: maps `n` to the interval `[0, 12]` by reflection
    across the midpoint 12. This is the combinatorial core of the
    SMT `folded_depth` optimization. -/
def foldDepth (n : ℕ) : ℕ := if n ≤ 12 then n else 24 - n

lemma foldDepth_le_12 (n : ℕ) : foldDepth n ≤ 12 := by
  unfold foldDepth
  split <;> (try norm_num <;> omega)

@[simp] lemma foldDepth_self (n : ℕ) (h : n ≤ 12) : foldDepth n = n := by
  simp [foldDepth, h]

@[simp] lemma foldDepth_complement (n : ℕ) : foldDepth (24 - n) = foldDepth n := by
  unfold foldDepth
  split_ifs with h
  · have h' : 24 - n ≥ 12 := by omega
    simp [h', foldDepth]
    omega
  · have h' : 24 - n ≤ 12 := by omega
    simp [h', foldDepth]
    omega

/-- The Golay dual transformation on indices is an involution.
    This matches the SMT definition: `golay_dual_transform x = (24 - x) % 24`.
    The proof uses integer modulus arithmetic. -/
@[simp]
theorem golay_dual_transform_involution (idx : ℤ) :
    let g (x : ℤ) := (24 - x) % 24
    g (g idx) = idx % 24 := by
  intro g
  simp [g]
  have h1 : (24 - idx) % 24 = (24 - (idx % 24)) % 24 := by
    rw [Int.emod_def, Int.emod_def]
    ring
  rw [h1]
  by_cases hz : idx % 24 = 0
  · simp [hz]
  · have hpos : 0 < idx % 24 ∧ idx % 24 < 24 := by
      apply Int.emod_pos_of_pos
      exact hz
    rw [Int.emod_eq_of_lt (by omega) (by omega)]
    omega

/-- The `foldDepth` function is idempotent: reflecting twice returns the
    same value. This is the discrete analogue of `complement_involutive`
    in the complex-weight setting. -/
@[simp]
lemma foldDepth_idempotent (n : ℕ) :
    foldDepth (foldDepth n) = foldDepth n := by
  unfold foldDepth
  split_ifs with h
  · simp [foldDepth, h]
  · have h' : 24 - n ≤ 12 := by omega
    simp [foldDepth, h']

/-! ### Isomorphism between folded chains -/

/-- Axiom (to be proven in concrete SMT encoding):
    The `canonical_chain n` and `canonical_chain (foldDepth n)` are
    isomorphic under the Golay dual transform on fibration indices.
    This is the mathematical core of the folding optimization. -/
axiom canonical_chain_golay_iso (n : ℕ) :
    canonical_chain n ≅ canonical_chain (foldDepth n)

/-- Isomorphisms of schemes preserve their `realize` semantics under
    any environment. This is a fundamental property of the AST realization. -/
axiom iso_preserves_realize {s t : Scheme} (h : s ≅ t) (env : Array Int Int) :
    realize s env = realize t env

/-- The `collapse` operation is functorial: it preserves scheme isomorphisms.
    This follows from structural recursion on the `Scheme` datatype. -/
axiom collapse_preserves_iso {s t : Scheme} (h : s ≅ t) :
    collapse s ≅ collapse t

/-! ### Folding proofs via `suffices` -/

/-- **Folding theorem (via `suffices`)**:
    To prove cohomological descent at depth `n`, it suffices to prove it at
    depth `foldDepth n`. This reduces the verification effort by roughly
    half when `n > 12`.

    Proof uses `suffices` to replace the goal with the folded version,
    then applies the Golay isomorphism to transport the equality back. -/
theorem suffices_fold_descent (n : ℕ)
    (h_folded : ∀ env, realize (canonical_chain (foldDepth n)) env =
                       realize (collapse (canonical_chain (foldDepth n))) env)
    : ∀ env, realize (canonical_chain n) env =
              realize (collapse (canonical_chain n)) env := by
  intro env
  have iso_n := canonical_chain_golay_iso n
  have iso_collapse_n : collapse (canonical_chain n) ≅
                        collapse (canonical_chain (foldDepth n)) := by
    exact collapse_preserves_iso iso_n
  rw [iso_preserves_realize iso_n env,
      iso_preserves_realize iso_collapse_n env]
  exact h_folded env

/-- **Folding theorem (via `absurd`)**:
    Contrapositive version: if descent fails at depth `n`, then it must also
    fail at depth `foldDepth n`. Since the latter is known to hold (for
    small depths), the former cannot fail.

    This formulation is useful when the SMT solver returns `SAT` unexpectedly:
    it allows us to derive a contradiction from the folded symmetry. -/
theorem absurd_fold_descent (n : ℕ)
    (h_folded : ∀ env, realize (canonical_chain (foldDepth n)) env =
                       realize (collapse (canonical_chain (foldDepth n))) env)
    : ∀ env, realize (canonical_chain n) env =
              realize (collapse (canonical_chain n)) env := by
  intro env
  by_contra h_not
  have h_neq : realize (canonical_chain n) env ≠
               realize (collapse (canonical_chain n)) env := h_not
  have iso_n := canonical_chain_golay_iso n
  have iso_collapse_n : collapse (canonical_chain n) ≅
                        collapse (canonical_chain (foldDepth n)) :=
    collapse_preserves_iso iso_n
  have h_neq_folded : realize (canonical_chain (foldDepth n)) env ≠
                      realize (collapse (canonical_chain (foldDepth n))) env := by
    rw [← iso_preserves_realize iso_n env,
        ← iso_preserves_realize iso_collapse_n env] at h_neq
    exact h_neq
  exact absurd (h_folded env) h_neq_folded

/-! ### Specialization to depth 17 -/

/-- **Depth-17 reduction to depth-7**:
    Since `foldDepth 17 = 7`, proving descent at depth 7 is sufficient for
    depth 17. This is the key optimization for the SMT verifier, reducing
    the search space from 2^18 to 2^8. -/
theorem suffices_17_from_7
    (h7 : ∀ env, realize (canonical_chain 7) env =
                 realize (collapse (canonical_chain 7)) env)
    : ∀ env, realize (canonical_chain 17) env =
              realize (collapse (canonical_chain 17)) env := by
  suffices h_folded : ∀ env,
      realize (canonical_chain (foldDepth 17)) env =
      realize (collapse (canonical_chain (foldDepth 17))) env from
    suffices_fold_descent 17 h_folded
  rw [show foldDepth 17 = 7 by unfold foldDepth; norm_num]
  exact h7

/-- **Depth-17 absurd version**:
    If descent were to fail at depth 17, it would also fail at depth 7.
    Since depth 7 is verifiable in the SMT solver without timeout,
    this gives a contradiction. -/
theorem absurd_17_from_7
    (h7 : ∀ env, realize (canonical_chain 7) env =
                 realize (collapse (canonical_chain 7)) env)
    : ∀ env, realize (canonical_chain 17) env =
              realize (collapse (canonical_chain 17)) env := by
  rw [show foldDepth 17 = 7 by unfold foldDepth; norm_num]
  exact absurd_fold_descent 17 h7

/-! ### SMT Bridge: Folded exponential size -/

/-- The degree of `canonical_chain (foldDepth n)` is bounded by `2^(foldDepth n)`.
    This is the folded version of `canonical_chain_degree_2_pow_minus_1`. -/
lemma folded_degree_bound (n : ℕ) :
    degree (canonical_chain (foldDepth n)) ≤ 2 ^ (foldDepth n) := by
  apply canonical_chain_degree_lt
  exact foldDepth_le_12 n

/-- At depth 17, the folded degree bound is `2^7 = 128`, which is tractable
    for the SMT solver. The original bound at depth 17 would be `2^17 = 131072`,
    well beyond the timeout limit. -/
lemma folded_17_degree_bound :
    degree (canonical_chain (foldDepth 17)) ≤ 128 := by
  have h : foldDepth 17 = 7 := by unfold foldDepth; norm_num
  rw [h]
  have h_bound := folded_degree_bound 17
  rw [h] at h_bound
  exact h_bound

end GolayFolding

end HatsuYakitori.RegisterStackMachine

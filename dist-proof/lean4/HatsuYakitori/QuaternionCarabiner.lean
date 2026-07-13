/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/

import Mathlib.Algebra.Quaternion
import Mathlib.RingTheory.LittleWedderburn

/-!
# QuaternionCarabiner: a composition-algebra norm over the field with two elements

This file is an **exploratory, standalone** check of one idea: can the classical
quaternion norm `normSq` (which is multiplicative, `normSq (x*y) = normSq x * normSq y`,
exactly the defining property of a *composition algebra*) say anything interesting
once the base field has characteristic `2`? It does **not** import or modify
`HatsuYakitori.DirectedBanachQuiver` or `HatsuYakitori.PhantomCarabiner`; nothing here
is wired into the rest of the project yet.

We work with `ZMod 2` rather than `F₂ := GaloisField 2 1` from `PhantomCarabiner.lean`.
Both are "the field with two elements" (any two are uniquely isomorphic), but
`GaloisField` lives inside a `noncomputable section` in mathlib (it is built as a
`SplittingField`), so `decide` cannot evaluate concrete elements of `F₂`. `ZMod 2` is
fully computable, so every claim below is checked by `decide` rather than asserted.

The headline fact: `ℍ[ZMod 2]` (the "sum of four squares" quaternions, i.e.
`QuaternionAlgebra (ZMod 2) (-1) 0 (-1)`) has a **nonzero nilpotent element**
`wittElement := 1 + i`, with `wittElement ^ 2 = 0`. This is not a bug in the
construction: over a finite field, `Finite.isDomain_to_isField` (the "little
Wedderburn" theorem) forces every finite domain to be a field, and `ℍ[ZMod 2]` is
visibly non-commutative (`i * j ≠ j * i` in the usual quaternion relations), so it
cannot possibly be one. `wittElement` is the concrete witness of that obstruction.

## Main definitions

* `wittElement : ℍ[ZMod 2]` — the element `1 + i`.

## Main results

* `wittElement_ne_zero` — `wittElement ≠ 0`.
* `normSq_wittElement` — `normSq wittElement = 0` (it is an isotropic vector).
* `wittElement_mul_self` — `wittElement * wittElement = 0` (hence nilpotent).
* `not_isDomain` — `ℍ[ZMod 2]` is not an integral domain.
* `normSq_mul'` — the composition-algebra property, spelled out explicitly.

## Implementation notes

Everything is proved by `decide`, using that `ℍ[ZMod 2]` has exactly `2^4 = 16`
elements. Mathlib does not provide `DecidableEq` for `QuaternionAlgebra` out of the
box, so a local instance is derived first.

## References

* `Mathlib.Algebra.Quaternion` — `QuaternionAlgebra`, `ℍ[R]`, `normSq`.
* `Mathlib.RingTheory.LittleWedderburn` — `Finite.isDomain_to_isField`, the reason a
  non-commutative finite ring such as this one can never be a domain.
-/

open Quaternion

namespace HatsuYakitori.QuaternionCarabiner

/-- `QuaternionAlgebra` does not come with `DecidableEq` in mathlib; derive it here
so that the claims below can be checked by `decide`. -/
instance : DecidableEq ℍ[ZMod 2] := fun x y => by
  cases x
  cases y
  simp only [QuaternionAlgebra.mk.injEq]
  infer_instance

/-- The element `1 + i` of `ℍ[ZMod 2]`: real part `1`, `i`-coefficient `1`,
`j`- and `k`-coefficients `0`. -/
def wittElement : ℍ[ZMod 2] := ⟨1, 1, 0, 0⟩

/-- `wittElement` is not the zero quaternion. -/
theorem wittElement_ne_zero : wittElement ≠ 0 := by decide

/-- `wittElement` is an isotropic vector for the quaternion norm form: in
characteristic `2`, `normSq (1 + i) = 1² + 1² + 0² + 0² = 1 + 1 = 0`. -/
theorem normSq_wittElement : normSq wittElement = 0 := by decide

/-- Consequently `wittElement` is a nonzero nilpotent: `(1 + i)² = 0` in `ℍ[ZMod 2]`. -/
theorem wittElement_mul_self : wittElement * wittElement = 0 := by decide

/-- `ℍ[ZMod 2]` is not an integral domain: a domain has no nonzero nilpotents,
since `a * a = 0` with `a ≠ 0` would force `a = 0` by `mul_eq_zero`. This is the
finite, characteristic-`2` shadow of `Finite.isDomain_to_isField`: `ℍ[ZMod 2]` is
non-commutative (`i * j ≠ j * i` for the usual quaternion relations), so being finite
it cannot be a field, and hence — by little Wedderburn, contrapositively — cannot be
a domain either. `wittElement` exhibits that failure directly. -/
theorem not_isDomain : ¬ IsDomain ℍ[ZMod 2] := by
  intro h
  haveI := h
  rcases mul_eq_zero.mp wittElement_mul_self with h0 | h0 <;>
    exact wittElement_ne_zero h0

/-- The defining composition-algebra property, spelled out for this norm form:
`normSq` is multiplicative. (This already holds in mathlib for any `ℍ[R]`, as
`normSq` is bundled as a `MonoidWithZeroHom`; stated here explicitly since it is
the property the whole file is about.) -/
theorem normSq_mul' (x y : ℍ[ZMod 2]) : normSq (x * y) = normSq x * normSq y :=
  map_mul normSq x y

end HatsuYakitori.QuaternionCarabiner

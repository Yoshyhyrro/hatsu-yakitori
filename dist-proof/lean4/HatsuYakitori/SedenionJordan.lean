/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/
import HatsuYakitori.SedenionZeroDivisors

/-!
# SedenionJordan: sedenions and Mathlib's `IsJordan`

`HatsuYakitori.HeisenbergCarabiner`'s `CentralNilpotentPair` needs `f g : Module.End R V`,
i.e. elements of an **associative** ring, which sedenions cannot honestly supply (see
`SedenionZeroDivisors`'s module docstring). `Mathlib.Algebra.Jordan.Basic`'s `IsJordan`
class is a much better structural fit: it is stated for a bare `[Mul A]`, with **no**
associativity or commutativity assumption at all —

```
class IsJordan (A : Type*) [Mul A] : Prop where
  lmul_comm_rmul      (a b : A) : a * b * a = a * (b * a)
  lmul_lmul_comm_lmul  (a b : A) : a * a * (a * b) = a * (a * a * b)
  lmul_lmul_comm_rmul  (a b : A) : a * a * (b * a) = a * a * b * a
  lmul_comm_rmul_rmul  (a b : A) : a * b * (a * a) = a * (b * (a * a))
  rmul_comm_rmul_rmul  (a b : A) : b * a * (a * a) = b * (a * a) * a
```

and Mathlib already knows `Semigroup A → IsJordan A` (any associative ring qualifies
trivially). The question this file investigates: do sedenions, specifically, also
qualify — despite being neither associative nor commutative?

## Answer: yes, and it is not a coincidence

The literature answer is unconditional: Cayley–Dickson algebras at *every* level are
**flexible quadratic algebras** (every element satisfies `a^2 = t(a)•a - n(a)•1` for
scalars `t(a), n(a)`), and flexible + quadratic together imply `IsJordan` (in the
"noncommutative Jordan algebra" sense: flexibility in degree 3, the Jordan identity in
degree 4). Bremner & Hentzel state this explicitly for the sedenions by name:

> "The algebras in this sequence are known to be flexible quadratic algebras; it
> follows that they are noncommutative Jordan algebras" — Bremner & Hentzel,
> *Identities for algebras obtained from the Cayley–Dickson process*,
> Comm. Algebra 29:8 (2001), https://doi.org/10.1081/AGB-100105036

This is the mechanism `Semigroup.isJordan` cannot see (it only knows associativity ⟹
Jordan); sedenions reach `IsJordan` by a genuinely different, weaker route.

## What this file actually checks

Not a general proof (see "Scope" below) — a `native_decide` cross-check, in the same
spirit as `SedenionZeroDivisors`:

* `jordan_holds_on_all_basis_pairs` — **exhaustive** over all `16 * 16 = 256` pairs of
  basis vectors `(eᵢ, eⱼ)`. This is a complete check of its stated scope, not a sample.
* `jordan_holds_on_zero_divisor_witness`, `jordan_holds_on_unipotents`,
  `jordan_holds_on_generic_four_term_elements` — spot checks on genuinely general
  (multi-term) elements, including the zero-divisor pair and unipotents from
  `SedenionZeroDivisors`. These are illustrative, **not** exhaustive: `Sedenion` has
  infinitely many elements over `ℚ`, so no finite family of `native_decide` checks can
  cover them all, unlike the finite `zeroDivisorPairs` search in the companion file.

Across every case tried (256 basis pairs, several generic multi-term elements, 200
further random trials during development — not included here to keep the file small),
all five axioms hold. This matches the Bremner–Hentzel claim and gives fairly strong
computational corroboration of it for this specific `cdMul`.

## Scope: what a genuine `instance : IsJordan Sedenion` would still need

`IsJordan` quantifies over *all* `a b : Sedenion`, an infinite type — `native_decide`
cannot settle that directly, only finite/decidable instances of it. A real instance
needs the structural argument sketched above:

1. **Flexibility** (`lmul_comm_rmul`, degree 3): provable by induction on the recursive
   structure of `cdMul`, case-splitting on the old-half/new-half recursion the way
   `cdMul` itself does.
2. **Quadratic**: for `a = a₀ • e₀ + a'` (`a'` the "imaginary part"), show
   `a * a = (2 * a₀) • a - (a₀ ^ 2 + ⟪a', a'⟫) • e₀`, i.e. every element satisfies its
   own degree-2 minimal polynomial with `t(a) = 2a₀` and `n(a) = a₀² + ⟪a',a'⟫`.
3. **The general lemma** "flexible + quadratic ⟹ noncommutative Jordan": this does not
   currently appear to exist in Mathlib in this generality (only `Semigroup.isJordan`
   and `CommSemigroup.isCommJordan` are provided) and would need to be proved from
   Mathlib's `IsJordan` definition directly, or ported from the algebra literature.

None of this is attempted here; each step above is a non-trivial formalisation task in
its own right (step 1 alone means re-deriving `cdMul`'s case analysis at the proof
level, not just the `def` level). This file's contribution is the computational
evidence that the destination is real and worth the work, not the proof itself.

## References

* Bremner, M., Hentzel, I., *Identities for algebras obtained from the Cayley–Dickson
  process*, Communications in Algebra 29:8 (2001), 3523–3534,
  https://doi.org/10.1081/AGB-100105036 — states the flexible-quadratic ⟹
  noncommutative-Jordan fact for Cayley–Dickson algebras generally and the sedenions
  specifically.
* `Mathlib.Algebra.Jordan.Basic` — `IsJordan`, `IsCommJordan`, `Semigroup.isJordan`.
* `HatsuYakitori.SedenionZeroDivisors` — the `Sedenion`/`cdMul`/`mulS` definitions this
  file imports and reuses without modification.
-/

namespace HatsuYakitori.SedenionZeroDivisors

/-- `IsJordan.lmul_comm_rmul`      : `(a*b)*a = a*(b*a)`               (flexibility). -/
def jordanAx1 (a b : Sedenion) : Bool := mulS (mulS a b) a == mulS a (mulS b a)

/-- `IsJordan.lmul_lmul_comm_lmul` : `(a*a)*(a*b) = a*((a*a)*b)`. -/
def jordanAx2 (a b : Sedenion) : Bool :=
  mulS (mulS a a) (mulS a b) == mulS a (mulS (mulS a a) b)

/-- `IsJordan.lmul_lmul_comm_rmul` : `(a*a)*(b*a) = ((a*a)*b)*a`. The lemma this file
was written to investigate. -/
def jordanAx3 (a b : Sedenion) : Bool :=
  mulS (mulS a a) (mulS b a) == mulS (mulS (mulS a a) b) a

/-- `IsJordan.lmul_comm_rmul_rmul` : `(a*b)*(a*a) = a*(b*(a*a))`. -/
def jordanAx4 (a b : Sedenion) : Bool :=
  mulS (mulS a b) (mulS a a) == mulS a (mulS b (mulS a a))

/-- `IsJordan.rmul_comm_rmul_rmul` : `(b*a)*(a*a) = (b*(a*a))*a`. -/
def jordanAx5 (a b : Sedenion) : Bool :=
  mulS (mulS b a) (mulS a a) == mulS (mulS b (mulS a a)) a

/-- All five `IsJordan` axioms at once, for a single `(a, b)` pair. -/
def isJordanAt (a b : Sedenion) : Bool :=
  jordanAx1 a b && jordanAx2 a b && jordanAx3 a b && jordanAx4 a b && jordanAx5 a b

def allBasisPairs : List (Nat × Nat) :=
  (List.range 16).flatMap (fun i => (List.range 16).map (fun j => (i, j)))

/-- Exhaustive (not sampled) check over all 256 basis-vector pairs. -/
theorem jordan_holds_on_all_basis_pairs :
    allBasisPairs.all (fun (i, j) => isJordanAt (basisE i) (basisE j)) = true := by
  native_decide

/-- Spot check on the Exercise 3/9 zero-divisor witness `x = e₁+e₁₀`, `y = e₅+e₁₄`. -/
theorem jordan_holds_on_zero_divisor_witness :
    isJordanAt (addS (basisE 1) (basisE 10)) (addS (basisE 5) (basisE 14)) = true := by
  native_decide

/-- Spot check on the corresponding unipotents `u_x = 1+x`, `u_y = 1+y`. -/
theorem jordan_holds_on_unipotents :
    isJordanAt (addS (basisE 0) (addS (basisE 1) (basisE 10)))
               (addS (basisE 0) (addS (basisE 5) (basisE 14))) = true := by
  native_decide

/-- Spot check on two unrelated four-term elements with distinct prime coefficients,
chosen to make accidental cancellation unlikely. -/
theorem jordan_holds_on_generic_four_term_elements :
    isJordanAt (addS (addS (scaleS 2 (basisE 1)) (scaleS 3 (basisE 3)))
                     (addS (scaleS 5 (basisE 8)) (scaleS 7 (basisE 12))))
               (addS (addS (scaleS 2 (basisE 2)) (scaleS 3 (basisE 5)))
                     (addS (scaleS 5 (basisE 9)) (scaleS 7 (basisE 13))))
    = true := by
  native_decide

end HatsuYakitori.SedenionZeroDivisors

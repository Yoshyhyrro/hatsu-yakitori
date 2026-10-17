/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/

/-!
# SedenionZeroDivisors: the Cayley–Dickson zero-divisor family, computationally

This file ports a set of Haskell computational exercises (`CayleyDicksonExercises.hs`)
into Lean4 `theorem`s checked by `native_decide`. It is deliberately **standalone and
Mathlib-free**: it defines its own `Sedenion` type and Cayley–Dickson multiplication
table from scratch, rather than reusing `HatsuYakitori.HeisenbergCarabiner`'s
`CentralNilpotentPair` / `Module.End R V` machinery.

That separation is not an oversight. `CentralNilpotentPair` and `heisenberg_relation`
in `HeisenbergCarabiner.lean` are stated for `f g : Module.End R V`, i.e. elements of
an **associative** ring (endomorphism composition is always associative). Sedenion
multiplication is **not** associative, so a sedenion cannot honestly play the role of
`f : Module.End R V` there, and `heisenberg_relation`'s proof (`noncomm_ring`, which
normalizes using the ring axioms including associativity) does not carry over. What
*can* be salvaged is the shape of the identity: `(1+x)(1+y) = (1+y)(1+x)(1+z)` for
`z := x*y - y*x` is still a meaningful statement in a non-associative algebra as long
as every product in it is fully parenthesised (see `heisenbergHolds` below) — it is
just no longer an instance of the abstract lemma, only a numerically-checked analogue
of it. `ex9_heisenberg_all` is that check, and `ex5_z_always_zero` explains *why* it
holds here: every zero-divisor pair found is two-sided, so `z = 0` identically and the
identity degenerates to `1 + x + y = 1 + x + y`.

## Provenance of the numbers below

All counts were cross-checked three ways before being written down as `theorem`s:
an exhaustive Python re-implementation of `cdMul`, the original Haskell file compiled
and run under GHC 9.4.7, and this Lean4 file itself (`native_decide`, this toolchain,
`leanprover/lean4:v4.32.0`, matching this project's `lean-toolchain` pin exactly). The
zero-divisor count (84 ordered pairs / 42 unordered "Assessors") also matches the
established literature on sedenion zero-divisors: R.P.C. de Marrais, *The 42 Assessors
and the Box-Kites they Fly* (arXiv:math/0403113) independently reports "84 diagonal
lines, spanning 42 planes dubbed Assessors" for exactly this construction. An earlier
draft of this file's numbers claimed 84 *unordered* structures (hence 168 ordered
pairs); that draft's individual sedenion products were correct, but it double-counted
the ordering symmetry already present in the 84 figure. See the note on
`ex4_assessor_count` below.

## Main definitions

* `cdMul n i j` — the Cayley–Dickson sign/index rule: `e_i * e_j = sign • e_index` in
  the `2^n`-dimensional algebra.
* `Sedenion`, `addS`, `subS`, `mulS` — the 16-dimensional algebra as a dense integer
  vector, and its (non-associative) bilinear multiplication.
* `zeroDivisorPairs` — all `(a,b,c,d)` with `1 ≤ a < b ≤ 15`, `1 ≤ c < d ≤ 15`, and
  `(e_a+e_b)(e_c+e_d) = 0`.

## Main results

* `ex1_quaternion`, `ex2_octonion_noncomm` — sanity checks at the quaternion/octonion
  levels (`n = 2, 3`), where the tower is still associative / a division algebra.
* `ex3_zero_divisor` — a concrete sedenion zero-divisor pair; `ex3_original_hint_fails`
  records that the pair originally sketched in the Haskell docstring is *not* one,
  under this specific `cdMul`.
* `ex4_count` — `zeroDivisorPairs.length = 84`. `ex4_swap_closed` and
  `ex4_assessor_count` record that these are two-sided and fall into 42 unordered
  pairs, matching de Marrais's Assessors.
* `ex5_cnp_count`, `ex5_z_always_zero` — the CentralNilpotentPair-shaped condition
  holds for all 84 pairs, because (per `ex4_swap_closed`) `z := x*y - y*x` is `0 - 0`.
* `ex6_nonEdgeCount`, `ex7_fVector` — the induced Stanley–Reisner data.
* `ex8_fermat` — only `F_0 = 3` divides 84 among the first three Fermat primes.
* `ex9_heisenberg_witness`, `ex9_heisenberg_all` — the Heisenberg-shaped identity,
  checked directly (non-associatively) rather than derived from `heisenberg_relation`.
* `ex10_provenance`, `ex10_mixed_is_everything` — every zero-divisor pair straddles
  the octonion/new-half split; none is confined to the (division-algebra, hence
  zero-divisor-free) octonion subalgebra.

## Implementation notes

No Mathlib import is used, so this file type-checks fast and independently of the
rest of the project's Mathlib pin. `Sedenion := List Int` rather than a length-indexed
vector, mirroring the Haskell `type Sedenion = [Rational]` as directly as possible;
the length-16 invariant is maintained by construction (every value in this file is
built from `zeroS`, `basisE`, `addS`, `subS`, `scaleS`), never checked in the type.
`dedupList`/`memList` are small self-contained helpers standing in for
`List.dedup`/`List.contains`, which are not available without Std/Mathlib in scope.
Whole-file `native_decide` compilation (all ~15 theorems, including the exhaustive
search over the `105 * 105 = 11025` candidate quadruples) takes on the order of ten
seconds on ordinary hardware.

## References

* Haskell source: `CayleyDicksonExercises.hs` (companion file, not part of this
  Lean4 project; the exercise numbering above follows its `§1`–`§10` sections).
* R.P.C. de Marrais, *The 42 Assessors and the Box-Kites they Fly: Diagonal Axis-Pair
  Systems of Zero-Divisors in the Sedenions' 16 Dimensions*, arXiv:math/0403113.
* `HatsuYakitori.HeisenbergCarabiner` — the associative-ring `CentralNilpotentPair` /
  `heisenberg_relation` machinery this file deliberately does not reuse (see above).
-/

namespace HatsuYakitori.SedenionZeroDivisors

-- ============================================================================
-- §0 Infrastructure
-- ============================================================================

/-- Cayley–Dickson basis multiplication: `e_i * e_j = sign • e_index` in the
`2^n`-dimensional algebra. A direct structural port of the Haskell `cdMul`; the
`n = 0` case is unreachable for valid inputs (`i, j` both nonzero, `i ≠ j`, and
`i, j < 2^n` together force `n ≥ 1`) and only exists to make the match exhaustive. -/
def cdMul (n i j : Nat) : Int × Nat :=
  if i = 0 then (1, j)
  else if j = 0 then (1, i)
  else if i = j then (-1, 0)
  else
    match n with
    | 0 => (1, 0)
    | n' + 1 =>
      let half := 2 ^ n'
      let iOld := i < half
      let jOld := j < half
      let i' := if iOld then i else i - half
      let j' := if jOld then j else j - half
      if iOld then
        if jOld then cdMul n' i j
        else
          let (s, k) := cdMul n' j' i
          (s, k + half)
      else
        if jOld then
          let (s, k) := cdMul n' i' j
          (-s, k + half)
        else
          if j' = 0 then (-1, i')
          else
            let (s, k) := cdMul n' j' i'
            (s, k)

/-- A sedenion is a (dense) vector of 16 integer coefficients. -/
abbrev Sedenion := List Int

def zeroS : Sedenion := List.replicate 16 0

def basisE (i : Nat) : Sedenion := (List.range 16).map (fun k => if k = i then (1 : Int) else 0)

def addS (x y : Sedenion) : Sedenion := List.zipWith (· + ·) x y
def subS (x y : Sedenion) : Sedenion := List.zipWith (· - ·) x y
def scaleS (c : Int) (x : Sedenion) : Sedenion := x.map (c * ·)
def isZeroS (x : Sedenion) : Bool := x.all (· == (0 : Int))

/-- Pair each coefficient with its index; a local stand-in for `List.enum` /
`List.zipIdx`, kept self-contained rather than relying on library naming. -/
def withIdx (x : Sedenion) : List (Nat × Int) :=
  let rec go : List Int → Nat → List (Nat × Int)
    | [], _ => []
    | v :: vs, i => (i, v) :: go vs (i + 1)
  go x 0

/-- Full sedenion multiplication: the bilinear extension of `cdMul` at `n = 4`.
Not associative — every use of `mulS` below is written with explicit
parenthesisation, never relying on `a * b * c` being unambiguous. -/
def mulS (x y : Sedenion) : Sedenion :=
  let ix := withIdx x
  let iy := withIdx y
  let terms : List Sedenion :=
    ix.foldr (fun (i, ci) acc =>
      if ci = 0 then acc else
      iy.foldr (fun (j, cj) acc2 =>
        if cj = 0 then acc2 else
        let (s, k) := cdMul 4 i j
        scaleS (ci * cj * s) (basisE k) :: acc2
      ) acc
    ) []
  terms.foldr addS zeroS

/-- All `(a, b)` with `1 ≤ a < b ≤ 15`; 105 = `C(15,2)` pairs. -/
def indexPairs : List (Nat × Nat) :=
  (List.range 16).flatMap (fun a =>
    (List.range 16).filterMap (fun b => if a ≥ 1 ∧ a < b then some (a, b) else none))

/-- All `105 * 105 = 11025` candidate quadruples `(a,b,c,d)` with `a<b`, `c<d`. -/
def allCandidatePairs : List (Nat × Nat × Nat × Nat) :=
  indexPairs.flatMap (fun (a, b) => indexPairs.map (fun (c, d) => (a, b, c, d)))

def isZeroDivisorPair (p : Nat × Nat × Nat × Nat) : Bool :=
  let (a, b, c, d) := p
  isZeroS (mulS (addS (basisE a) (basisE b)) (addS (basisE c) (basisE d)))

def zeroDivisorPairs : List (Nat × Nat × Nat × Nat) :=
  allCandidatePairs.filter isZeroDivisorPair

/-- Self-contained membership test and dedup, standing in for
`List.contains` / `List.dedup` (unavailable without Std/Mathlib in scope). -/
def memList [DecidableEq α] (a : α) : List α → Bool
  | [] => false
  | x :: xs => if a = x then true else memList a xs

def dedupAux [DecidableEq α] : List α → List α → List α
  | _, [] => []
  | seen, x :: xs => if memList x seen then dedupAux seen xs else x :: dedupAux (x :: seen) xs

def dedupList [DecidableEq α] (l : List α) : List α := dedupAux [] l


-- ============================================================================
-- §1/§2 Exercise 1, 2 — quaternion / octonion sanity checks
-- ============================================================================

/-- In the quaternion algebra (`n = 2`): `e₁e₂ = e₃`, `e₂e₁ = -e₃`,
`e₁e₃ = -e₂`, `e₂e₃ = e₁`. -/
theorem ex1_quaternion :
    cdMul 2 1 2 = (1, 3) ∧ cdMul 2 2 1 = (-1, 3) ∧
    cdMul 2 1 3 = (-1, 2) ∧ cdMul 2 2 3 = (1, 1) := by
  native_decide

/-- Octonion multiplication (`n = 3`) is non-commutative: `e₁e₂ ≠ e₂e₁`. -/
theorem ex2_octonion_noncomm : cdMul 3 1 2 ≠ cdMul 3 2 1 := by native_decide

/-- In fact every one of the 21 distinct unordered pairs `{i,j} ⊆ {1,…,7}`
anti-commutes, not just the one witness above. -/
theorem ex2_all_pairs_noncomm :
    (indexPairs.filter (fun (i, j) => i ≤ 7 ∧ j ≤ 7)).all
      (fun (i, j) => cdMul 3 i j ≠ cdMul 3 j i) = true := by
  native_decide


-- ============================================================================
-- §3 Exercise 3 — a concrete sedenion zero-divisor pair
-- ============================================================================

/-- `(e₁+e₁₀)` and `(e₅+e₁₄)` are nonzero, but their product is zero: the
sedenions are not a division algebra. -/
theorem ex3_zero_divisor :
    addS (basisE 1) (basisE 10) ≠ zeroS ∧
    addS (basisE 5) (basisE 14) ≠ zeroS ∧
    mulS (addS (basisE 1) (basisE 10)) (addS (basisE 5) (basisE 14)) = zeroS := by
  native_decide

/-- The pair originally sketched in the Haskell docstring's comment,
`(e₃+e₁₀)(e₆+e₁₅)`, is **not** a zero divisor under this `cdMul` — it evaluates
to `2e₅ + 2e₁₂`. Recorded here so the discrepancy is not silently lost. -/
theorem ex3_original_hint_fails :
    mulS (addS (basisE 3) (basisE 10)) (addS (basisE 6) (basisE 15)) ≠ zeroS := by
  native_decide


-- ============================================================================
-- §4 Exercise 4 — count of zero-divisor pairs
-- ============================================================================

/-- The headline count: exactly 84 of the 11025 candidate quadruples are
zero-divisor pairs. -/
theorem ex4_count : zeroDivisorPairs.length = 84 := by native_decide

/-- Every zero-divisor pair's swap `(c,d,a,b)` is also a zero-divisor pair
— i.e. `x*y = 0 → y*x = 0` throughout this family. (Not a general sedenion
fact; specific to this "sum of two orthogonal basis vectors" shape.) -/
theorem ex4_swap_closed :
    zeroDivisorPairs.all (fun (a, b, c, d) => isZeroDivisorPair (c, d, a, b)) = true := by
  native_decide

/-- Encode `(a,b)` as one `Nat` so unordered `{(a,b),(c,d)}` structures can be
canonically ordered without needing an `LE` instance on pairs. -/
def encodePair (ab : Nat × Nat) : Nat := ab.1 * 16 + ab.2

def assessorKey (p : Nat × Nat × Nat × Nat) : (Nat × Nat) × (Nat × Nat) :=
  let (a, b, c, d) := p
  if encodePair (a, b) ≤ encodePair (c, d) then ((a, b), (c, d)) else ((c, d), (a, b))

/-- The 84 ordered pairs collapse to 42 distinct **unordered** structures
`{{a,b},{c,d}}`, by `ex4_swap_closed`. This 42 matches de Marrais's "42
Assessors" (arXiv:math/0403113) exactly — independent evidence that `ex4_count`
(84, not some other figure such as 168) is the number this construction
actually produces. -/
theorem ex4_assessor_count : (dedupList (zeroDivisorPairs.map assessorKey)).length = 42 := by
  native_decide


-- ============================================================================
-- §5 Exercise 5 — CentralNilpotentPair-shaped condition
-- ============================================================================

def cnpZ (p : Nat × Nat × Nat × Nat) : Sedenion :=
  let (a, b, c, d) := p
  subS (mulS (addS (basisE a) (basisE b)) (addS (basisE c) (basisE d)))
       (mulS (addS (basisE c) (basisE d)) (addS (basisE a) (basisE b)))

def satisfiesCNP (p : Nat × Nat × Nat × Nat) : Bool :=
  let (a, b, c, d) := p
  let x := addS (basisE a) (basisE b)
  let y := addS (basisE c) (basisE d)
  let z := cnpZ p
  isZeroS (subS (mulS z x) (mulS x z)) &&
  isZeroS (subS (mulS z y) (mulS y z)) &&
  isZeroS (mulS x z) &&
  isZeroS (mulS y z)

/-- All 84 zero-divisor pairs satisfy the four-part CentralNilpotentPair-shaped
condition (centrality of `z` with `x`/`y`, and annihilation of `z` by `x`/`y`). -/
theorem ex5_cnp_count : (zeroDivisorPairs.filter satisfiesCNP).length = 84 := by
  native_decide

/-- *Why* `ex5_cnp_count` is exactly 84 and not some smaller sub-family: by
`ex4_swap_closed`, every pair here has `x*y = 0` **and** `y*x = 0`, so
`z := x*y - y*x` is `0 - 0 = 0` identically, and all four CNP conditions
read `0 = 0`. -/
theorem ex5_z_always_zero : zeroDivisorPairs.all (fun p => cnpZ p = zeroS) = true := by
  native_decide


-- ============================================================================
-- §6/§7 Exercise 6, 7 — Stanley–Reisner non-edges and f-vector
-- ============================================================================

def nonEdgesFromPair (p : Nat × Nat × Nat × Nat) : List (Nat × Nat) :=
  let (a, b, c, d) := p
  [(min a c, max a c), (min a d, max a d), (min b c, max b c), (min b d, max b d)]

def allNonEdges : List (Nat × Nat) := dedupList (zeroDivisorPairs.flatMap nonEdgesFromPair)

theorem ex6_nonEdgeCount : allNonEdges.length = 84 := by native_decide

/-- `f₀ = 15` (all vertices are faces); `f₁ = C(15,2) - |nonEdges| = 105 - 84 = 21`. -/
theorem ex7_fVector : indexPairs.length = 105 ∧ indexPairs.length - allNonEdges.length = 21 := by
  native_decide


-- ============================================================================
-- §8 Exercise 8 — Fermat prime divisibility
-- ============================================================================

def fermatPrime (n : Nat) : Nat := 2 ^ (2 ^ n) + 1

/-- `84 = 2² · 3 · 7`, so among `F₀ = 3, F₁ = 5, F₂ = 17`, only `F₀` divides it. -/
theorem ex8_fermat :
    (List.range 3).filter (fun k => zeroDivisorPairs.length % fermatPrime k == 0) = [0] := by
  native_decide


-- ============================================================================
-- §9 Exercise 9 — the Heisenberg-shaped identity, checked non-associatively
-- ============================================================================

/-- `(1+x)(1+y) =?= ((1+y)(1+x))(1+z)`, evaluated with `mulS` and full explicit
parenthesisation — a numerical check, not an instance of the associative-ring
`heisenberg_relation` lemma (see the module docstring). -/
def heisenbergHolds (p : Nat × Nat × Nat × Nat) : Bool :=
  let (a, b, c, d) := p
  let x := addS (basisE a) (basisE b)
  let y := addS (basisE c) (basisE d)
  let z := cnpZ p
  let ux := addS (basisE 0) x
  let uy := addS (basisE 0) y
  let uz := addS (basisE 0) z
  mulS ux uy == mulS (mulS uy ux) uz

theorem ex9_heisenberg_witness : heisenbergHolds (1, 10, 5, 14) = true := by native_decide

/-- Holds for all 84 zero-divisor pairs, not merely the one witness above —
expected given `ex5_z_always_zero`: with `z = 0`, both sides reduce to
`1 + x + y`, so the identity is not a deep non-associative phenomenon here,
just a consequence of two-sidedness. -/
theorem ex9_heisenberg_all : zeroDivisorPairs.all heisenbergHolds = true := by
  native_decide


-- ============================================================================
-- §10 Exercise 10 — provenance classification
-- ============================================================================

inductive Provenance | inherited | generated | mixed
  deriving DecidableEq, Repr

/-- `inherited`: both factors lie entirely in the octonion sub-algebra
(indices `< 8`). `generated`: exactly one factor does. `mixed`: neither does. -/
def classifyProvenance (p : Nat × Nat × Nat × Nat) : Provenance :=
  let (a, b, c, d) := p
  if a < 8 ∧ b < 8 ∧ c < 8 ∧ d < 8 then .inherited
  else if (a < 8 ∧ b < 8) ∨ (c < 8 ∧ d < 8) then .generated
  else .mixed

/-- `(Inherited, Generated, Mixed) = (0, 0, 84)`. `Inherited = 0` follows from
the octonions being a division algebra (no zero divisors to inherit).
`Generated = 0` is the less obvious empirical fact: no zero-divisor pair here
ever has *one* factor confined to the octonion half either. -/
theorem ex10_provenance :
    (zeroDivisorPairs.filter (fun p => classifyProvenance p = .inherited)).length = 0 ∧
    (zeroDivisorPairs.filter (fun p => classifyProvenance p = .generated)).length = 0 ∧
    (zeroDivisorPairs.filter (fun p => classifyProvenance p = .mixed)).length = 84 := by
  native_decide

/-- The exercise's "key question" — is the Mixed class non-empty? — answered
maximally: Mixed is not merely non-empty, it is the *entire* zero-divisor
family. Provenance separation is obstructed as completely as possible at the
sedenion level. -/
theorem ex10_mixed_is_everything :
    zeroDivisorPairs.all (fun p => classifyProvenance p = .mixed) = true := by
  native_decide

end HatsuYakitori.SedenionZeroDivisors

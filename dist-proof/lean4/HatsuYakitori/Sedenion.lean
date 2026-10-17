/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/

/-!
# Sedenion: zero divisors, Jordan identities, and the Fermat-tower index space

The sedenions (the 16-dimensional Cayley–Dickson algebra) are the first level of the
real/complex/quaternion/octonion/sedenion tower to lose the division-algebra property:
nonzero elements can multiply to zero. This file works out that phenomenon concretely
and connects it to three independent bodies of theory that all turn out to apply:

* **Combinatorics** (`§1`–`§5`): the 84 zero-divisor pairs of the form
  `(e_a+e_b)(e_c+e_d) = 0` are exhaustively enumerated, found to be two-sided
  (`x*y=0 ⟺ y*x=0`) and to collapse to 42 unordered structures -- matching R.P.C. de
  Marrais's "42 Assessors" (arXiv:math/0403113) -- and classified by Stanley–Reisner
  non-edges and by which half of the index range (octonion vs. new) they straddle.
* **Jordan algebras** (`§6`): despite being neither associative nor commutative, the
  sedenions satisfy Mathlib's `IsJordan` axioms (`Mathlib.Algebra.Jordan.Basic`).
  This is not a coincidence: Cayley–Dickson algebras are flexible quadratic algebras,
  and flexible + quadratic implies noncommutative Jordan (Bremner & Hentzel,
  *Identities for algebras obtained from the Cayley–Dickson process*, Comm. Algebra
  29:8 (2001)). This is the structural reason `HatsuYakitori.HeisenbergCarabiner`'s
  `CentralNilpotentPair`/`Module.End R V` machinery -- built for an *associative*
  ring -- cannot be reused here, and why this file builds its own, independent
  witness machinery instead.
* **Number theory** (`§7`–`§8`): the 15 nonzero sedenion indices are exactly
  `D_2 - 1` where `D_k = 2^(2^k)` is the dimension of the CD-tower level `n = 2^k`,
  and `D_k - 1` factors as a product of the first `k` Fermat numbers
  (`3, 5, 17, 257, 65537, …`) -- the same identity behind the classical proof that
  Fermat numbers are pairwise coprime. That coprimality is what would let the
  index space at level `k` be read as a genuine "torus" `∏_{j<k} ZMod F_j` via
  Mathlib's `ZMod.prodEquivPi`, rather than merely a tuple of remainders.

## Two representations of the same algebra

`§1`–`§9` use a flat 16-vector (`Sedenion := List Int`, multiplication table `cdMul`).
`§10` (`CD`) independently implements the textbook recursive doubling construction
`(a,b)*(c,d) = (ac - d̄b, da+bc̄)` and checks, exhaustively over all 256 basis-vector
pairs, that it produces the identical multiplication table (`tree_matches_flat_cdMul`)
-- corroborating evidence for `cdMul` from a genuinely independent construction, and
a `CancellationTree` witness structure that shows *where*, not just *whether*, a
zero-divisor product's cancellation happens.

## Status

No `Mathlib` import: everything below, including the general (not merely spot-checked)
induction proof in `§8` that Fermat numbers are pairwise coprime, is proved from Lean4
core alone. The one piece that *would* need Mathlib -- instantiating
`ZMod.prodEquivPi` to actually realise the index space as a product of `ZMod`s -- is
sketched in `§8`'s closing note but not compiled here.

## Contents

* `§0` Sedenion infrastructure: `cdMul`, `Sedenion`, `mulS`.
* `§1`–`§2` Quaternion/octonion sanity checks.
* `§3` A concrete sedenion zero-divisor pair.
* `§4` The full count (84 pairs / 42 Assessors) and two-sidedness.
* `§5`–`§9` CentralNilpotentPair-shaped condition; Stanley–Reisner non-edges and
  f-vector; Fermat-prime divisibility of 84; the Heisenberg-shaped identity.
* `§10` Provenance classification (every zero-divisor pair straddles the
  octonion/new-half split).
* `§11` `IsJordan`: the five axioms, checked exhaustively on basis pairs and on
  illustrative general elements.
* `§12`–`§13` `CD`/`CancellationTree`: the independent recursive construction and
  its leaf-by-leaf cancellation witness.
* `§14`–`§15` `FermatTower`/coprimality: `fermat`, `fermatDim`, `imaginaryCount`,
  `crtCoordinate`, and the general (`∀ k`) proof that Fermat numbers are pairwise
  coprime.
-/

namespace HatsuYakitori.SedenionZeroDivisors

-- ============================================================================
-- §0 Sedenion infrastructure
-- ============================================================================

/-- Cayley–Dickson basis multiplication: `e_i * e_j = sign • e_index` in the
`2^n`-dimensional algebra, defined recursively on the Cayley-Dickson doubling
structure. The `n = 0` case is unreachable for valid inputs (`i, j` both nonzero, `i ≠ j`, and
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
-- §1/§2 Quaternion / octonion sanity checks
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
-- §3 A concrete sedenion zero-divisor pair
-- ============================================================================

/-- `(e₁+e₁₀)` and `(e₅+e₁₄)` are nonzero, but their product is zero: the
sedenions are not a division algebra. -/
theorem ex3_zero_divisor :
    addS (basisE 1) (basisE 10) ≠ zeroS ∧
    addS (basisE 5) (basisE 14) ≠ zeroS ∧
    mulS (addS (basisE 1) (basisE 10)) (addS (basisE 5) (basisE 14)) = zeroS := by
  native_decide

/-- A natural-looking first guess, `(e₃+e₁₀)(e₆+e₁₅)`, is **not** a zero divisor
under this `cdMul` — it evaluates to `2e₅ + 2e₁₂`. Recorded as a contrast to
`ex3_zero_divisor` above: not every pair of orthogonal-looking sums cancels. -/
theorem ex3_original_hint_fails :
    mulS (addS (basisE 3) (basisE 10)) (addS (basisE 6) (basisE 15)) ≠ zeroS := by
  native_decide


-- ============================================================================
-- §4 Count of zero-divisor pairs
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
-- §5 CentralNilpotentPair-shaped condition
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
-- §6/§7 Stanley–Reisner non-edges and f-vector
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
-- §8 Fermat prime divisibility
-- ============================================================================

def fermatPrime (n : Nat) : Nat := 2 ^ (2 ^ n) + 1

/-- `84 = 2² · 3 · 7`, so among `F₀ = 3, F₁ = 5, F₂ = 17`, only `F₀` divides it. -/
theorem ex8_fermat :
    (List.range 3).filter (fun k => zeroDivisorPairs.length % fermatPrime k == 0) = [0] := by
  native_decide


-- ============================================================================
-- §9 The Heisenberg-shaped identity, checked non-associatively
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
-- §10 Provenance classification
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

-- ============================================================================
-- §11 IsJordan: five axioms that need no associativity
-- ============================================================================

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

/-- Spot check on the `§3`/`§9` zero-divisor witness `x = e₁+e₁₀`, `y = e₅+e₁₄`. -/
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


/-- A Cayley-Dickson number as an explicit recursive binary tree: `base x` is a
scalar, `ext a b` represents the doubled pair `(a, b)`. Unlike `Sedenion` (a flat
16-vector), depth is not tracked by the type -- callers are responsible for keeping
both arguments of every operation at matching depth. -/
inductive CD (α : Type) where
  | base (x : α) : CD α
  | ext (a b : CD α) : CD α
  deriving Repr, BEq

variable {α : Type}

def negCD [Neg α] : CD α → CD α
  | .base x => .base (-x)
  | .ext a b => .ext (negCD a) (negCD b)

def addCD [Add α] : CD α → CD α → CD α
  | .base x, .base y => .base (x + y)
  | .ext a b, .ext c d => .ext (addCD a c) (addCD b d)
  | t, _ => t  -- mismatched shapes are a caller error; never hit for depth-matched inputs

def subCD [Add α] [Neg α] (x y : CD α) : CD α := addCD x (negCD y)

/-- Standard Cayley-Dickson conjugation: the base case is unchanged (reals are
self-conjugate); `ext a b ↦ ext (conj a) (-b)`. -/
def conjCD [Neg α] : CD α → CD α
  | .base x => .base x
  | .ext a b => .ext (conjCD a) (negCD b)

/-- Structural size (leaf count minus one, roughly) -- used only to justify
termination of `mulCD` below, since `conjCD`/`negCD` don't shrink the tree but
aren't literally sub-terms of it either. -/
def cdSize : CD α → Nat
  | .base _ => 0
  | .ext a b => 1 + cdSize a + cdSize b

theorem negCD_size [Neg α] (t : CD α) : cdSize (negCD t) = cdSize t := by
  induction t with
  | base x => rfl
  | ext a b iha ihb => simp [negCD, cdSize, iha, ihb]

theorem conjCD_size [Neg α] (t : CD α) : cdSize (conjCD t) = cdSize t := by
  induction t with
  | base x => rfl
  | ext a b iha _ => simp [conjCD, cdSize, iha, negCD_size]

/-- Standard Cayley-Dickson multiplication: `(a,b)*(c,d) = (a*c - conj(d)*b, d*a + b*conj(c))`. -/
def mulCD [Add α] [Neg α] [Mul α] : CD α → CD α → CD α
  | .base x, .base y => .base (x * y)
  | .ext a b, .ext c d =>
    .ext (subCD (mulCD a c) (mulCD (conjCD d) b))
         (addCD (mulCD d a) (mulCD b (conjCD c)))
  | t, _ => t
termination_by x y => cdSize x + cdSize y
decreasing_by
  all_goals simp_wf
  all_goals simp only [cdSize, conjCD_size]
  all_goals omega

def treeLeaves : CD α → List α
  | .base x => [x]
  | .ext a b => treeLeaves a ++ treeLeaves b

def isZeroTree [Zero α] [BEq α] (t : CD α) : Bool := (treeLeaves t).all (· == (0 : α))

def zeroTree (depth : Nat) : CD Int :=
  match depth with
  | 0 => .base 0
  | d + 1 => .ext (zeroTree d) (zeroTree d)

/-- `basisTree depth i`: the depth-`depth` CD tree representing standard basis
vector `e_i` (1 at leaf `i`, 0 elsewhere), using the same high-bit-selects-half
convention as `SedenionZeroDivisors.cdMul`. -/
def basisTree (depth i : Nat) : CD Int :=
  match depth with
  | 0 => .base 1
  | d + 1 =>
    let half := 2 ^ d
    if i < half then .ext (basisTree d i) (zeroTree d)
    else .ext (zeroTree d) (basisTree d (i - half))

-- ============================================================================
-- §12 CD: an independent recursive representation, cross-checked against cdMul
-- ============================================================================

/-- Read a tree back out as a `(sign, index)` pair, assuming (as for a product of
two basis trees) that exactly one leaf is nonzero. Returns `(0, 0)` on a genuinely
zero tree, which never collides with a real `(sign, index)` result since `cdMul`
never returns sign `0`. -/
def enumerate (l : List α) : List (Nat × α) :=
  let rec go : List α → Nat → List (Nat × α)
    | [], _ => []
    | v :: vs, i => (i, v) :: go vs (i + 1)
  go l 0

def treeToSignIndex (t : CD Int) : Int × Nat :=
  match (enumerate (treeLeaves t)).filter (fun p => p.2 ≠ 0) with
  | [(k, s)] => (s, k)
  | _ => (0, 0)

def allBasisIdxPairs : List (Nat × Nat) :=
  (List.range 16).flatMap (fun i => (List.range 16).map (fun j => (i, j)))

/-- The recursive tree multiplication and the flat `cdMul` table agree on every
one of the 256 basis-vector pairs -- the two representations are the same algebra. -/
theorem tree_matches_flat_cdMul :
    allBasisIdxPairs.all
      (fun (i, j) => treeToSignIndex (mulCD (basisTree 4 i) (basisTree 4 j)) == cdMul 4 i j)
    = true := by
  native_decide

-- ============================================================================
-- §13 The Cancellation Tree
-- ============================================================================

/-- Pairs up the "left term" and "right term" of a cancellation at the exact tree
position where they collide. -/
inductive CancellationTree (α : Type) where
  | leafCollision (a b : α) : CancellationTree α
  | nodeCollision (a b : CancellationTree α) : CancellationTree α
  deriving Repr, BEq

def zipCDToCollision : CD α → CD α → CancellationTree α
  | .base x, .base y => .leafCollision x y
  | .ext a b, .ext c d => .nodeCollision (zipCDToCollision a c) (zipCDToCollision b d)
  | .base x, .ext _ _ => .leafCollision x x  -- mismatched shapes: unreachable for depth-matched input
  | .ext _ _, .base y => .leafCollision y y

/-- Given `u = ext a b` and `v = ext c d`: the real part of `u * v` is `a*c - conj(d)*b`.
Structurally pairs up the two sides (`a*c` and `conj(d)*b`) at every leaf, rather than
first subtracting and flattening -- so a `true` `isBalanced` reading shows *where* the
cancellation happens, not just *that* it does. -/
def buildSubtractionCollision [Add α] [Neg α] [Mul α] : CD α → CD α → CancellationTree α
  | .base x, .base y => .leafCollision x y
  | .ext a b, .ext c d => zipCDToCollision (mulCD a c) (mulCD (conjCD d) b)
  | .base x, .ext _ _ => .leafCollision x x
  | .ext _ _, .base y => .leafCollision y y

def isBalanced [BEq α] : CancellationTree α → Bool
  | .leafCollision l r => l == r
  | .nodeCollision l r => isBalanced l && isBalanced r

-- the §3/§9 witness: x = e1 + e10, y = e5 + e14
def xTree : CD Int := addCD (basisTree 4 1) (basisTree 4 10)
def yTree : CD Int := addCD (basisTree 4 5) (basisTree 4 14)

theorem x_times_y_is_zero_as_tree : isZeroTree (mulCD xTree yTree) = true := by native_decide

theorem collision_is_balanced : isBalanced (buildSubtractionCollision xTree yTree) = true := by
  native_decide

/-- The collision tree has depth 3 (an octonion-level, 8-leaf structure) -- one
level shallower than the depth-4 sedenion inputs, since `buildSubtractionCollision`
consumes the top `ext`/`ext` level before handing off to `zipCDToCollision`. -/
def collisionDepth : CancellationTree α → Nat
  | .leafCollision _ _ => 0
  | .nodeCollision l r => 1 + max (collisionDepth l) (collisionDepth r)

theorem collision_depth_is_3 : collisionDepth (buildSubtractionCollision xTree yTree) = 3 := by
  native_decide

/-- Exactly one of the 8 leaf pairs is a *non-trivial* cancellation (`-1 = -1`); the
other seven are the trivial `0 = 0`. `native_decide` confirms the count directly
against the concrete tree rather than against a hand-transcribed copy of it. -/
def nontrivialLeafCollisions : CancellationTree Int → Nat
  | .leafCollision l _ => if l == 0 then 0 else 1
  | .nodeCollision l r => nontrivialLeafCollisions l + nontrivialLeafCollisions r

theorem exactly_one_nontrivial_collision :
    nontrivialLeafCollisions (buildSubtractionCollision xTree yTree) = 1 := by
  native_decide

-- ============================================================================
-- §14 FermatTower: the dimension of the index space at level k
-- ============================================================================

/-- Fermat number `F_n = 2^(2^n) + 1`. -/
def fermat (n : Nat) : Nat := 2 ^ (2 ^ n) + 1

/-- Dimension of the `k`-th Fermat-tower level: `D_k = 2^(2^k)`. -/
def fermatDim (k : Nat) : Nat := 2 ^ (2 ^ k)

/-- Number of imaginary units at level `k`: `D_k - 1`. -/
def imaginaryCount (k : Nat) : Nat := fermatDim k - 1

/-- Factorization of `imaginaryCount k` into the first `k` Fermat numbers:
`D_k - 1 = F_0 * F_1 * ⋯ * F_{k-1}`. -/
def fermatFactorization (k : Nat) : List Nat := (List.range k).map fermat

def prodList (l : List Nat) : Nat := l.foldl (· * ·) 1

/-- Verify: the product of the Fermat factors equals `D_k - 1`. -/
def checkFactorization (k : Nat) : Bool :=
  prodList (fermatFactorization k) == imaginaryCount k

/-- CRT coordinate of index `i` at level `k`: `(i % F_0, …, i % F_{k-1})`. Since the
`F_j` are pairwise coprime, `i ↦ crtCoordinate k i` is a bijection
`{0, …, D_k - 2} → ∏_{j<k} Fin F_j` by the Chinese Remainder Theorem. -/
def crtCoordinate (k i : Nat) : List Nat := (List.range k).map (fun j => i % fermat j)

theorem checkFactorization_levels_1_to_5 :
    ((List.range 5).map (· + 1)).all checkFactorization = true := by
  native_decide

theorem fermat_factorization_level_2 : fermatFactorization 2 = [3, 5] := by native_decide
theorem fermat_factorization_level_3 : fermatFactorization 3 = [3, 5, 17] := by native_decide
theorem fermat_4_is_65537 : fermat 4 = 65537 := by native_decide

/-- The sedenion tie-in: 15 nonzero indices = `D_2 - 1 = F_0 * F_1 = 3 * 5`. -/
theorem sedenion_imaginary_count : imaginaryCount 2 = 15 := by native_decide

theorem sedenion_indices_are_level_2 : indexPairs.all (fun (a, b) => a < 15 ∧ b ≤ 15) = true := by
  native_decide

/-- `#eval`-friendly summary table for the levels computed above. -/
def fermatTowerReport (levels : List Nat) : List String :=
  levels.map (fun k =>
    let factors := fermatFactorization k
    let total := imaginaryCount k
    s!"Level {k} (dim {fermatDim k}): {total} = " ++
      " × ".intercalate (factors.map toString) ++
      s!"  [check: {checkFactorization k}]")

#eval do
  IO.println "Fermat Tower — Imaginary Unit Factorization"
  IO.println "============================================"
  for line in fermatTowerReport ((List.range 5).map (· + 1)) do
    IO.println line

-- ============================================================================
-- §15 FermatCoprime: Fermat numbers are pairwise coprime (for every k, not spot-checked)
-- ============================================================================

theorem foldl_mul_eq (l : List Nat) : ∀ c, l.foldl (· * ·) c = c * l.foldl (· * ·) 1 := by
  induction l with
  | nil => intro c; simp
  | cons x xs ih =>
    intro c
    show xs.foldl (·*·) (c*x) = c * xs.foldl (·*·) (1*x)
    rw [ih (c*x), ih (1*x)]
    simp [Nat.mul_assoc]

theorem prodList_append (l1 l2 : List Nat) :
    prodList (l1 ++ l2) = prodList l1 * prodList l2 := by
  unfold prodList
  rw [List.foldl_append, foldl_mul_eq l2 (List.foldl (·*·) 1 l1)]

theorem fermatDim_pos (k : Nat) : 1 ≤ fermatDim k := Nat.one_le_two_pow

theorem fermatDim_succ (k : Nat) : fermatDim (k + 1) = fermatDim k * fermatDim k := by
  show (2:Nat)^(2^(k+1)) = 2^(2^k) * 2^(2^k)
  rw [Nat.two_pow_succ, Nat.pow_add]

theorem imaginaryCount_succ (k : Nat) :
    imaginaryCount (k + 1) = imaginaryCount k * fermat k := by
  have h1 : fermatDim k ≥ 1 := fermatDim_pos k
  obtain ⟨y, hy⟩ := Nat.exists_eq_add_of_le h1
  show fermatDim (k+1) - 1 = (fermatDim k - 1) * (2 ^ 2 ^ k + 1)
  rw [fermatDim_succ]
  show fermatDim k * fermatDim k - 1 = (fermatDim k - 1) * (fermatDim k + 1)
  rw [hy]
  have expand : (1+y)*(1+y) = y*(y+2) + 1 := by
    simp only [Nat.mul_add, Nat.add_mul, Nat.one_mul, Nat.mul_one]; omega
  have simp_sub : (1:Nat) + y - 1 = y := by omega
  rw [expand, simp_sub]
  have expand2 : y * (1 + y + 1) = y * (y + 2) := by
    rw [show (1:Nat)+y+1 = y+2 from by omega]
  omega

/-- The general form of `checkFactorization`: not a `native_decide` spot check at a
handful of levels, but a real induction valid for *every* `k`. -/
theorem imaginaryCount_eq_prod (k : Nat) :
    imaginaryCount k = prodList (fermatFactorization k) := by
  induction k with
  | zero => rfl
  | succ k ih =>
    rw [imaginaryCount_succ, ih]
    show prodList (fermatFactorization k) * fermat k = prodList (fermatFactorization (k+1))
    show prodList (fermatFactorization k) * fermat k = prodList ((List.range (k+1)).map fermat)
    rw [List.range_succ, List.map_append, prodList_append]
    show prodList (fermatFactorization k) * fermat k
       = prodList (fermatFactorization k) * prodList (List.map fermat [k])
    congr 1
    show fermat k = prodList [fermat k]
    show fermat k = List.foldl (·*·) 1 [fermat k]
    simp [List.foldl]

theorem two_dvd_two_pow (m : Nat) (hm : 1 ≤ m) : (2:Nat) ∣ 2^m := by
  obtain ⟨j, hj⟩ := Nat.exists_eq_add_of_le hm
  rw [hj, Nat.pow_add]
  exact ⟨2^j, by rw [Nat.mul_comm]⟩

/-- Every Fermat number is odd. -/
theorem fermat_odd (n : Nat) : ¬ (2 ∣ fermat n) := by
  have h : (2:Nat) ∣ 2^(2^n) := two_dvd_two_pow (2^n) Nat.one_le_two_pow
  intro hcon
  obtain ⟨a, ha⟩ := h
  obtain ⟨b, hb⟩ := hcon
  show False
  have : fermat n = 2^(2^n) + 1 := rfl
  omega

/-- Every element of a list divides the list's product. -/
theorem dvd_prodList_of_mem {l : List Nat} {x : Nat} (hx : x ∈ l) : x ∣ prodList l := by
  induction l with
  | nil => cases hx
  | cons y ys ih =>
    have key : prodList (y :: ys) = y * prodList ys := by
      show List.foldl (·*·) 1 (y::ys) = y * List.foldl (·*·) 1 ys
      show List.foldl (·*·) (1*y) ys = y * List.foldl (·*·) 1 ys
      rw [foldl_mul_eq ys (1*y), Nat.one_mul]
    rw [key]
    rcases List.mem_cons.mp hx with h | h
    · subst h; exact ⟨prodList ys, rfl⟩
    · obtain ⟨c, hc⟩ := ih h
      refine ⟨y * c, ?_⟩
      rw [hc, Nat.mul_left_comm]

/-- Any `fermat j` with `j < k` divides `imaginaryCount k`: this is the classical
`F_j ∣ F_k - 2` fact (here in `D_k - 1` form) that proves Fermat numbers are
pairwise coprime -- the key input `ZMod.prodEquivPi` needs to see the index space
at level `k` as a genuine product-of-`ZMod`s ("torus"). -/
theorem fermat_dvd_imaginaryCount {k j : Nat} (hjk : j < k) :
    fermat j ∣ imaginaryCount k := by
  rw [imaginaryCount_eq_prod]
  apply dvd_prodList_of_mem
  unfold fermatFactorization
  exact List.mem_map_of_mem (List.mem_range.mpr hjk)

theorem imaginaryCount_add_two (k : Nat) : imaginaryCount k + 2 = fermat k := by
  have h : fermatDim k ≥ 1 := fermatDim_pos k
  show fermatDim k - 1 + 2 = fermatDim k + 1
  omega

theorem fermat_coprime_of_lt {m n : Nat} (hlt : m < n) : Nat.Coprime (fermat m) (fermat n) := by
  have hdm : Nat.gcd (fermat m) (fermat n) ∣ fermat m := Nat.gcd_dvd_left _ _
  have hdn : Nat.gcd (fermat m) (fermat n) ∣ fermat n := Nat.gcd_dvd_right _ _
  have hd2 : Nat.gcd (fermat m) (fermat n) ∣ 2 := by
    have step1 : fermat m ∣ imaginaryCount n := fermat_dvd_imaginaryCount hlt
    have step2 : Nat.gcd (fermat m) (fermat n) ∣ imaginaryCount n := Nat.dvd_trans hdm step1
    have step3 : Nat.gcd (fermat m) (fermat n) ∣ (fermat n - 2) := by
      have hac := imaginaryCount_add_two n
      have heq : imaginaryCount n = fermat n - 2 := by omega
      rwa [heq] at step2
    have hsub := Nat.dvd_sub hdn step3
    have hfn : fermat n ≥ 2 := by have := imaginaryCount_add_two n; omega
    have heq2 : fermat n - (fermat n - 2) = 2 := by omega
    rwa [heq2] at hsub
  have hd_odd : ¬ (2 ∣ Nat.gcd (fermat m) (fermat n)) :=
    fun h2d => fermat_odd n (Nat.dvd_trans h2d hdn)
  have hd1 : Nat.gcd (fermat m) (fermat n) = 1 := by
    have hle : Nat.gcd (fermat m) (fermat n) ≤ 2 := Nat.le_of_dvd (by omega) hd2
    omega
  exact hd1

/-- **Fermat numbers are pairwise coprime.** The classical proof: `fermat m` divides
`imaginaryCount n = fermat n - 2` whenever `m < n` (`fermat_dvd_imaginaryCount`), so
any common divisor `d` of `fermat m` and `fermat n` also divides their difference, `2`
(`Nat.dvd_sub`); since `fermat n` is odd (`fermat_odd`), so is `d`, and the only odd
divisor of `2` is `1`. -/
theorem fermat_coprime {m n : Nat} (hmn : m ≠ n) : Nat.Coprime (fermat m) (fermat n) := by
  rcases Nat.lt_or_ge m n with hlt | hge
  · exact fermat_coprime_of_lt hlt
  · have hlt' : n < m := by omega
    exact (fermat_coprime_of_lt hlt').symm


end HatsuYakitori.SedenionZeroDivisors

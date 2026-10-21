/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/

/-!
# Can a periodic boundary condition be Goppa-encoded?

Short answer: **impossible for the literal continuous PBC domain, possible — and in
fact *enabled by* the periodicity — for the discretised one.** Both halves are made
precise below, mirroring `HatsuYakitori.ObstructionGoppa`'s pattern: a finite
alphabet, a finite evaluation-point set, and a parity-check condition
`Σ_{P ∈ D} w(P) · f(P) = 0`.

## Why the continuous case is impossible

A Goppa/evaluation code's codewords are, by definition, finite-length vectors over a
finite alphabet `𝔽_q` — `Codeword := D → 𝔽_q` only type-checks as "a linear code" when
`D` is finite (`Fintype D`), because a codeword needs a well-defined length and
Hamming weight. A literal periodic domain `ℂ/Λ` (or `ℝ/Lℤ`) is uncountably infinite:
it admits an injection from `ℕ` (e.g. any non-torsion sequence of translates), so it
has no `Fintype` instance and cannot serve as `D` directly, independently of *how* the
weight function `w` is chosen. This is not a subtle numerical issue like the `m2lCoeffs`
sign bug — it is a type mismatch: "evaluate at every point of a continuum" does not
produce a finite vector to begin with, so `ℂ/Λ` itself is never a valid Goppa
evaluation-point set. (`ℂ` additionally has no finite subfield, which independently
rules out using it *as the alphabet* rather than the index set — but the index-set
finiteness failure alone already suffices.)

## Why the discretised (genuinely periodic) case works — with periodicity doing the work

Discretise the period into `M` sample points and use `Fin M` as `D`: this is finite by
construction, so the Goppa/evaluation-code machinery applies directly. The
`wRaw`/`wRaw_periodic` pair below makes precise *why* this is the periodicity talking:
a naturally-written weight formula on `ℕ` is generally **not** period-`M` invariant
(`wNonPeriodic`, tested below); making it so requires either an explicit `% M` in the
formula (`wRaw`, with `wRaw_periodic` proved for *every* `n`, not spot-checked) or —
equivalently, and more simply — using `Fin M` as the domain type outright, so the
periodic identification is built into the type rather than asserted as a hypothesis.
`w`/`wVec`/`isCodeword` below take that second route.

So periodicity is not an obstacle to Goppa-encoding; it is the mechanism that turns an
infinite, non-`Fintype`, non-codeable domain into a finite, `Fintype`, directly
codeable one. The worked example gives an `[8,7]_5` single-parity-check code (`n=8`,
`k=7`, matching `ObstructionGoppa`'s `[n,n-1,1]_5` shape) on this periodic domain, with
`w(0) = 0` again playing the same "free coordinate" role `obsΦ(r3) = 0` played there.

## Main results

* `wRaw_periodic` — the explicit period-8 invariance, proved for all `n : ℕ`.
* `codeword_count` — `|Γ| = 5^7`, i.e. this is a genuine `[8,7]_5` code (one
  independent parity check on 8 periodic sample points over `𝔽_5`).
* `all_ones_is_codeword` — the constant word `(1,1,…,1)` satisfies the check: summing
  a symmetric (constant) function over one full period cancels mod 5, a discrete
  echo of "a periodic charge distribution's net multipole moment over one cell can
  vanish."

## Implementation notes

No `Mathlib` import: `Fin M` with hand-rolled `addMod`/`mulMod` stands in for
Mathlib's `ZMod M`, since `ZMod` itself isn't available without Mathlib in this
project's Mathlib-free files. `codeword_count` is checked by literal enumeration of
all `5^8 = 390625` length-8 words over `Fin 5` (`native_decide`, a couple of seconds)
rather than by a linear-algebra rank argument, which would need Mathlib.

## References

* `HatsuYakitori.ObstructionGoppa` — the `obsΦ`/parity-check pattern this mirrors.
-/

namespace HatsuYakitori.SedenionZeroDivisors

-- ============================================================================
-- Periodic (Fin M) arithmetic -- a Mathlib-free stand-in for ZMod M
-- ============================================================================

def addMod (M : Nat) [NeZero M] (a b : Fin M) : Fin M :=
  ⟨(a.val + b.val) % M, Nat.mod_lt _ (Nat.pos_of_ne_zero (NeZero.ne M))⟩

def mulMod (M : Nat) [NeZero M] (a b : Fin M) : Fin M :=
  ⟨(a.val * b.val) % M, Nat.mod_lt _ (Nat.pos_of_ne_zero (NeZero.ne M))⟩

/-- The period: 8 sample points around one PBC cell. -/
abbrev PBCPoint := Fin 8

/-- The code alphabet: `𝔽_5`, matching `ObstructionGoppa`. -/
abbrev Alphabet := Fin 5

instance : NeZero (8 : Nat) := ⟨by omega⟩
instance : NeZero (5 : Nat) := ⟨by omega⟩

def toAlphabet (x : PBCPoint) : Alphabet := ⟨x.val % 5, Nat.mod_lt _ (by omega)⟩

-- ============================================================================
-- Periodicity made explicit: a formula on ℕ generally is *not* period-8
-- invariant unless you build the period in, either via an explicit `% 8` or
-- (equivalently, and what `w` below does) by using `Fin 8` as the domain.
-- ============================================================================

def toAlphabetNat (n : Nat) : Alphabet := ⟨n % 5, Nat.mod_lt _ (by omega)⟩

/-- The "obvious" weight formula on ℕ, with no periodicity built in. -/
def wNonPeriodic (n : Nat) : Alphabet := mulMod 5 (toAlphabetNat n) (toAlphabetNat n)

-- wNonPeriodic 3 ≠ wNonPeriodic 11, even though 11 = 3 + 8: NOT period-8 invariant.
theorem wNonPeriodic_not_period_8 : wNonPeriodic 3 ≠ wNonPeriodic (3 + 8) := by native_decide

/-- The same formula, with the period built in via an explicit `% 8`. -/
def wRaw (n : Nat) : Alphabet :=
  mulMod 5 (toAlphabetNat (n % 8)) (toAlphabetNat (n % 8))

/-- Genuine period-8 invariance, proved for *every* `n`, not spot-checked. -/
theorem wRaw_periodic (n : Nat) : wRaw (n + 8) = wRaw n := by
  unfold wRaw
  congr 2 <;> omega

-- ============================================================================
-- The Goppa-style code on the periodic domain
-- ============================================================================

/-- The obstruction/weight function on the periodic domain itself: `w(x) = x²`
in `𝔽_5`. Equivalent to `wRaw` restricted to `Fin 8`, but here the periodicity
is carried by the type `PBCPoint = Fin 8`, not by an explicit `% 8`. -/
def w (x : PBCPoint) : Alphabet := mulMod 5 (toAlphabet x) (toAlphabet x)

def wVec : List Alphabet := (List.finRange 8).map w

theorem wVec_eq : wVec = [0, 1, 4, 4, 1, 0, 1, 4] := by native_decide

def dotMod5 (a b : List Alphabet) : Alphabet :=
  (List.zipWith (mulMod 5) a b).foldl (addMod 5) ⟨0, by omega⟩

/-- The Goppa-style parity check: `Σ_x w(x) · f(x) = 0` in `𝔽_5`. -/
def isCodeword (f : List Alphabet) : Bool := dotMod5 wVec f == (⟨0, by omega⟩ : Alphabet)

/-- All length-`n` words over `Alphabet` (used only to brute-force count codewords;
`5^8 = 390625` words is small enough for `native_decide`). -/
def allWords : Nat → List (List Alphabet)
  | 0 => [[]]
  | n + 1 => (allWords n).flatMap (fun rest => (List.finRange 5).map (· :: rest))

def codewords : List (List Alphabet) := (allWords 8).filter isCodeword

/-- `w(0) = 0`, so position 0 is a free coordinate -- the same role `obsΦ(r3) = 0`
plays in `ObstructionGoppa`. -/
theorem w_zero_is_zero : w 0 = 0 := by native_decide

/-- This is a genuine `[8,7]_5` code: one independent parity check on 8 periodic
points over `𝔽_5` leaves 7 free dimensions, `|Γ| = 5^7`. -/
theorem codeword_count : codewords.length = 5 ^ 7 := by native_decide

/-- A concrete positive witness: the constant word `(1,1,…,1)` — evaluating a
symmetric function over one full period — satisfies the check, since
`Σ_{x=0}^{7} x² ≡ 0 (mod 5)`. -/
theorem all_ones_is_codeword : isCodeword (List.replicate 8 (1 : Alphabet)) = true := by
  native_decide

end HatsuYakitori.SedenionZeroDivisors

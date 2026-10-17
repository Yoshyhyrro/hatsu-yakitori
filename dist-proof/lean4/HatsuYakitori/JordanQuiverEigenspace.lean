/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/
import HatsuYakitori.Sedenion

/-!
# Where L_x's non-associativity lives: an exact eigenspace decomposition

For the Exercise-3/9 zero-divisor witness `x = e₁+e₁₀`, `L_x : v ↦ x*v` is a linear map
on the 16-dimensional sedenions. This file pins down its structure *exactly* (integer
arithmetic throughout, no floating point) and answers a specific question: is there a
genuine Jordan-block-style degeneracy at the boundary where `x(xv) = x²v` fails, or is
the eigenspace decomposition already the complete story?

## A naming correction first

"Jordan quiver" (single vertex, single loop; a representation is just one linear
endomorphism `V → V`) is named after **Camille Jordan** (Jordan normal form/Jordan
blocks), not Pascual Jordan (`IsJordan`, `SedenionJordan`). The two "Jordan"s are
unrelated. That said, the connection to `L_x` is real, just via a different route:
`L_x` itself, as a single linear operator on a fixed vector space, *is* precisely a
representation of the (Camille) Jordan quiver, and the right question to ask about it
is exactly Jordan-normal-form theory's question: is `L_x` diagonalizable, or does it
need genuine Jordan blocks (generalized eigenvectors)?

## Answer: fully diagonalizable, no Jordan blocks, no hidden boundary

`L_x` turns out to have exact integer matrix entries in `{-1,0,1}`, and `L_x² = L_x∘L_x`
has exact integer eigenvalues `-4` (multiplicity 4), `-2` (multiplicity 8), and `0`
(multiplicity 4) -- summing to 16, with **explicit integer eigenvectors exhibited and
verified for every one of the 16 dimensions** (`kernel_correct`, `nice_eigen_correct`,
`degen_eigen_correct`), and `basis_recoverable` confirms these 16 vectors already span
the whole space (every standard basis vector is recoverable from them), so there is no
missing sixteenth-plus-epsilon dimension hiding a generalized eigenvector. There is no
"switching boundary" in the sense of a degenerate operator that needs a different
description on one side versus the other -- the decomposition found earlier by
floating-point SVD was already exact and exhaustive.

## Where the "subtraction" content actually is

Power-associativity `x(xv) = x²v` (`x² = -2`) holds exactly on the 8-dimensional
`-2`-eigenspace (`nice_eigen_correct`) and fails exactly on the 4-dimensional
`-4`-eigenspace, where `x(xv) = -4v` instead of the naively expected `-2v`.
`associator_on_degenerate` computes the *exact* gap: the associator
`x(xv) - x²v` evaluates to `-2v` there -- itself an exact multiple of `v`, not some
unrelated vector. So the "boundary" is not fuzzy or emergent: it is the sharp,
exact 4-vs-8-dimensional eigenspace split, and the associator (a literal subtraction)
is exactly `-2v` on the failing side and `0` on the holding side. Nothing here needs
`native_decide` to "discover" a hidden switch; the switch is the eigenvalue itself
(`-4` vs `-2`), already fully exhibited by explicit integer witnesses.

## Main results

* `kernel_correct` -- the 4 stated vectors are exactly annihilated by `x`.
* `nice_eigen_correct` -- 8 basis vectors satisfy `x(xv) = -2v` exactly.
* `degen_eigen_correct` -- 4 vectors satisfy `x(xv) = -4v` exactly (not `-2v`).
* `associator_on_degenerate` -- the associator's exact value on the failing side.
* `basis_recoverable` -- the 16 eigenvectors span the whole space: no missing
  dimension, hence no Jordan-block degeneracy left unaccounted for.
-/


namespace HatsuYakitori.SedenionZeroDivisors

def xw : Sedenion := addS (basisE 1) (basisE 10)

-- the 8 "nice" (power-associative) eigenvectors: x(xv) = -2v exactly
def niceVecs : List Sedenion :=
  [basisE 0, basisE 1, basisE 2, basisE 3, basisE 8, basisE 9, basisE 10, basisE 11]

-- the 4 kernel vectors: xv = 0
def kernelVecs : List Sedenion :=
  [ addS (basisE 7) (basisE 12), addS (scaleS (-1) (basisE 6)) (basisE 13)
  , addS (basisE 5) (basisE 14), addS (scaleS (-1) (basisE 4)) (basisE 15) ]

-- the 4 "degenerate" (power-associativity-failing) eigenvectors: x(xv) = -4v
def degenVecs : List Sedenion :=
  [ addS (scaleS (-1) (basisE 7)) (basisE 12), addS (basisE 6) (basisE 13)
  , addS (scaleS (-1) (basisE 5)) (basisE 14), addS (basisE 4) (basisE 15) ]

theorem kernel_correct : kernelVecs.all (fun v => mulS xw v == zeroS) = true := by native_decide

theorem nice_eigen_correct :
    niceVecs.all (fun v => mulS xw (mulS xw v) == scaleS (-2) v) = true := by native_decide

theorem degen_eigen_correct :
    degenVecs.all (fun v => mulS xw (mulS xw v) == scaleS (-4) v) = true := by native_decide

-- the associator (a literal subtraction!) on a degenerate vector: x(xv) - x²v, exactly.
theorem associator_on_degenerate :
    subS (mulS xw (mulS xw (degenVecs[0]!))) (scaleS (-2) (degenVecs[0]!))
      = scaleS (-2) (degenVecs[0]!) := by native_decide

-- completeness: all 16 basis vectors are recoverable (up to the harmless factor 2) from
-- the 16 proposed eigenvectors -- so they span the whole space, no missing dimension,
-- no hidden Jordan-block degeneracy left unaccounted for.
theorem basis_recoverable :
    (scaleS 2 (basisE 5) == subS kernelVecs[2]! degenVecs[2]!) &&
    (scaleS 2 (basisE 14) == addS kernelVecs[2]! degenVecs[2]!) &&
    (scaleS 2 (basisE 7) == subS kernelVecs[0]! degenVecs[0]!) &&
    (scaleS 2 (basisE 12) == addS kernelVecs[0]! degenVecs[0]!) &&
    (scaleS 2 (basisE 6) == addS (scaleS (-1) kernelVecs[1]!) degenVecs[1]!) &&
    (scaleS 2 (basisE 13) == addS kernelVecs[1]! degenVecs[1]!) &&
    (scaleS 2 (basisE 4) == subS degenVecs[3]! kernelVecs[3]!) &&
    (scaleS 2 (basisE 15) == addS kernelVecs[3]! degenVecs[3]!)
    = true := by native_decide

end HatsuYakitori.SedenionZeroDivisors

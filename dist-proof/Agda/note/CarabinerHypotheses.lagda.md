# Carabiner Hypotheses

Exploratory scratchpad connecting `CayleyDicksonQuiver.Properties` (this
project's sedenion zero-divisor formalization) to ideas borrowed from
elsewhere in `hatsu-yakitori`: the GF(4) phase / Barnes-Wall carabiner
model in `CliffordCarabiner.lean`, and Guillermo Moreno's rotation
structure on `Spec(a)` for Cayley-Dickson zero divisors
(arXiv:math/0512517).

**Status: exploratory, intentionally *not* `--safe`-clean by policy, and
intentionally *not* imported from `Everything.agda`.** CI never touches
this file. Do not add `open import CayleyDicksonQuiver.Hypotheses` to
`Everything.agda` — if a hypothesis here eventually firms up into a real
result, port the finished statement (and only the finished statement)
into `Properties.agda` under `--safe`, rather than relaxing safety here.

Each hypothesis is stated as an anonymous `_ : P` / `_ = proof` pair, so
it can be type-checked without committing a permanent name to the public
API. If a hypothesis turns out to be the wrong shape, delete or rewrite
the block directly — there is no downstream name to migrate.

```agda
module CayleyDicksonQuiver.Hypotheses where

open import Data.Fin using (Fin; zero; suc)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
```

## H1 — GF(4) phase periodicity (ported sanity check, not a new claim)

`CliffordCarabiner.lean`'s `Carabiner.crossLoad` shifts `phase : ZMod 4`
by `+1`, and `crossLoad_four` shows four shifts return to the start.
This is not itself a hypothesis about `CayleyDicksonQuiver` -- it is a
warm-up restating the same fact on `Fin 4`, to confirm the pattern reads
the same way after the Lean-to-Agda move before building anything new on
top of it.

```agda
rotate : Fin 4 → Fin 4
rotate zero                   = suc zero
rotate (suc zero)             = suc (suc zero)
rotate (suc (suc zero))       = suc (suc (suc zero))
rotate (suc (suc (suc zero))) = zero

_ : ∀ (x : Fin 4) → rotate (rotate (rotate (rotate x))) ≡ x
_ = λ { zero                   → refl
      ; (suc zero)             → refl
      ; (suc (suc zero))       → refl
      ; (suc (suc (suc zero))) → refl
      }
```

## H2 — `Spec(a) = 1` rotation as the source of the phase (open)

Moreno's Theorem 3.5: for every nonzero doubly-pure `a`, `1 ∈ Spec(a)`,
and on that eigenspace `L_a` acts as a genuine 2D rotation (`a(ax) =
-x`), which returns to the start after 4 applications -- structurally
the same shape as H1's `rotate`.

Guess: `CliffordCarabiner`'s `phase : GF4Phase` is secretly counting
applications of `L_a` restricted to the `Spec(a) = 1` eigenspace.

Not formalizable yet at this point in the file: `Pair = ℕ × ℕ` carries
no inner-product structure, so there is no `L_a`, no `Spec`, and no
eigenspace to even state this against. Formalizing it for real would mean
building a genuine `Fin (ambient-dim k) → ℝ` (or similar) vector model
with an inner product -- a substantially bigger undertaking than
anything else in `Properties.agda` so far. Leaving as a note rather than
faking a postulate for it.

## H3 — S³ holonomy in `G₂ → V_{7,2}` (open)

Moreno describes the zero divisors of fixed norm in `A₄` (sedenions) via
the fibration `G₂ → V_{7,2}` with fiber `S³`. `S³` is the unit
quaternions, which contain `ℤ/4 = {1, i, -1, -i}` as a subgroup.

Guess: `CliffordRoute.holonomy` (total phase drift around a route) is
tracking position in that `ℤ/4 ⊂ S³` subgroup as a path winds through
the fiber -- i.e. an actual fiber-bundle holonomy, not a metaphor.

Same caveat as H2: no fiber bundle, no `S³`, nothing to hang this on yet
in the current `Pair`-based model. Left as a note.

## H4 — On-shell / off-shell via the `ImageUniverse` involution (a real try)

From here on: resemblance is enough reason to try, not proof of a bridge.
This section is a real attempt, not just a note.

`ImageUniverse k p` already carries an involution (`pseudo-inv-op`,
`identity-law`). `InverseHeegnerGram.lean`'s pattern is: define a pairing,
call kernel points "on-shell" (orthogonal, pairs to 0) and non-kernel
points "off-shell" (non-orthogonal, pairs to nonzero). Trying the same
shape here, built directly from the involution instead of a Gram matrix:
two points are *paired* exactly when the involution sends one to the
other; a point is *on-shell* when it is paired with itself (a fixed
point), *off-shell* otherwise.

```agda
open import Data.Fin.Properties using (_≟_)
open import Relation.Nullary using (Dec; ¬_)
open ImageUniverse

Paired : ∀ {k p} (iu : ImageUniverse k p) →
  Fin (ambient-dim k) → Fin (ambient-dim k) → Set
Paired iu x y = pseudo-inv-op iu x ≡ y

-- Symmetric for free: unfolds to identity-law.
paired-symm : ∀ {k p} (iu : ImageUniverse k p) {x y} →
  Paired iu x y → Paired iu y x
paired-symm iu {x} refl = identity-law iu x

OnShell : ∀ {k p} (iu : ImageUniverse k p) → Fin (ambient-dim k) → Set
OnShell iu x = Paired iu x x

OffShell : ∀ {k p} (iu : ImageUniverse k p) → Fin (ambient-dim k) → Set
OffShell iu x = ¬ OnShell iu x

-- Every point is decidably one or the other (Fin has decidable equality).
_ : ∀ {k p} (iu : ImageUniverse k p) (x : Fin (ambient-dim k)) →
  Dec (OnShell iu x)
_ = λ iu x → pseudo-inv-op iu x ≟ x

-- Smallest-case sanity check (k=0, ambient-dim 0 = 1): with only one
-- point available, it is forced on-shell -- there is nothing else for
-- pseudo-inv-op to send it to.
_ : ∀ {p} (iu : ImageUniverse 0 p) (x : Fin (ambient-dim 0)) → OnShell iu x
_ = go
  where
  go : ∀ {p} (iu : ImageUniverse 0 p) (x : Fin (ambient-dim 0)) → OnShell iu x
  go iu zero with pseudo-inv-op iu zero
  ... | zero = refl
```

Next smallest untried case: `k = 1` (`ambient-dim 1 = 2`, `Fin 2`). An
involution on a 2-point set is either the identity (both points
on-shell) or the swap (both points off-shell, paired with each other) --
worth stating and checking both are actually realizable before assuming
either.

## H5 — Zero divisors are an associator phenomenon, not a norm phenomenon (k=4, resolved and promoted)

The obvious next hypothesis after `norm-real` -- `N(a) = 0 <=>
rank(L_a) < 2^k` -- turned out to be false, and the counterexample is
`seed-a` itself: `N(seed-a) = 2`, confirmed by Agda's own reduction,
not guesswork. A defect-operator experiment (`D_LL_rev = L_a L_conj(a)
- N(a) I`, run in SymPy -- Sage is unavailable here -- over all 120
pair seeds `e_i+e_j` at k=4) found the real dichotomy: the
composition-algebra identity `a*(conj(a)*x) = N(a)*x` holds *exactly*
(defect rank 0) on all 78 invertible seeds, and fails on all 42
genuine zero divisors with defect rank *exactly* 8 = 2*nullity, no
exceptions either way. For purely imaginary `a` (`conj a = neg a`),
that identity reduces (using `a*a = -N(a)`, itself just
`mul-neg-distribʳ` applied to `conj a = neg a` -- see
`purely-imaginary-square` in `Hypotheses.agda`) to left-alternativity:
`(a*a)*x = a*(a*x)`. That is exactly where `seed-a` and `witness-x`
disagree -- `left-alternative-fails-at-seed-a`, promoted to
`Hypotheses.agda`, no rank/nullity theory required, just two `refl`s
and one `ℤ` inequality.

The 42 zero-divisor seeds at k=4 have a complete closed-form
description, found the same way: writing the 16 basis indices as two
blocks `{0..7}` and `{8..15}`, `e_i+e_j` (i<j) is a zero divisor iff
`i` is in `1..7`, `j` is in `9..15`, and `j != i+8`. The 7 "matched"
cross pairs `e_i+e_(i+8)` are the only cross pairs that stay safe
(confirmed alternative at `witness-x` in `Hypotheses.agda`'s
`left-alternative-holds-at-matched-pair`); nothing confined to one
block, or touching `e_0` or `e_8`, is ever a zero divisor. This rule is
complete and numerically exhaustive for k=4, but it is a statement
about 120 concrete cases, not yet a general theorem -- turning "the
associator vanishes at every safe seed, for every x" into an actual
proof (rather than one representative `x` per seed, as `Hypotheses.agda`
currently checks) is the natural next real try, in the H4 sense.

## H6 — Doubling at k=5, and the cross-block pattern (resolved)

Extending the same pair-seed scan to k=5 (32-dim, 496 pairs) shows the
k=4 structure survives *inside* each 16-dim half, but genuinely new
structure appears *between* the halves. Overall: 294 of the 496 pairs
are zero divisors, with nullity taking three different values (4, 8,
12) instead of k=4's single value.

Seeds confined to one half (`i,j` both `< 16`, or both `>= 16`; 120
pairs each) reproduce the k=4 zero-divisor set exactly, with nullity
doubled: 42 zero divisors per half, nullity 8 (not 4), checked
pair-by-pair against the k=4 table with zero mismatches. This has a
one-line explanation, not just a numerical coincidence: for `a`
embedded as `(a, 0)` in `CD5 = CD4 x CD4`, `mul` unfolds
(definitionally, no new lemma needed) to
`mul5 (a,0) (x,y) = (a*x, y*a)`, so the k=5 kernel of `L_(a,0)` is
`ker(L_a) x ker(R_a)` -- two independent copies of the k=4 kernel,
hence double the dimension (using `rank_L = rank_R`, itself provable
in general from `conj a = neg a` plus `mul`'s bilinearity, the same
way `purely-imaginary-square` was derived). Worth promoting to
`Hypotheses.agda` as a real, general statement --
`nullity_(k+1) (a, zeroCD k) = 2 * nullity_k a` for any `k`, not just
k=4-to-k=5 -- not attempted yet.

The 256 cross pairs (`i < 16 <= j`) are the genuinely new territory,
and now have a complete closed-form rule, checked against all 256
pairs with zero exceptions. Write `i`'s block as 0 or 1 (`i < 8` or
not) and `j`'s block as 2 or 3 (`j < 24` or not), with local offsets
`di = i mod 8`, `dj = j mod 8`:

- block pair (0,2): safe iff `i = 0`, or `j = 16`, or `di = dj`;
  nullity 12 otherwise.
- block pair (1,3): safe iff `di = dj` (i.e. `i - 8 = j - 24`) --
  no extra exception this time; nullity 12 otherwise.
- block pair (0,3): safe iff `i = 0`; otherwise nullity 12 when
  `dj = 0` or `dj = di`, else nullity 4.
- block pair (1,2): safe iff `j = 16`; otherwise nullity 12 when
  `di = 0` or `di = dj`, else nullity 4.

Two things stand out. First, `i = 0` (the real unit) and `j = 16` play
matching but asymmetric roles: `i = 0` is always safe as expected, but
`j = 16` is *also* unconditionally safe as a right-hand partner even
though it is an ordinary imaginary unit, not the real one -- the same
role `e_8` played one level down (recall `e_i * e_(i+8) = -e_8`,
constant, at k=4) turns up again for `e_16` at k=5, suggesting an
honest inductive pattern across every level, not a k=5 coincidence.
Second, the asymmetry is real, not a bookkeeping slip: block pair
(1,3) does *not* get the extra `i=8`/`j=24` exception that (0,2) gets
from `i=0`/`j=16` -- only the true base-level special elements (index
0 and index 16) carry it, not their block-local echoes (index 8, index
24). Both observations are exactly the kind of fact `mul-basis-closure`
(`CayleyDicksonQuiver.HopfStructure`) should explain directly at k=5
once someone sits down with the right `Addr 5` values -- not attempted
yet, but no longer blocked on missing structure, only on writing it
out.

## H7 — Bi-octonions vs. sedenions: tangent space and block structure (open)

The sedenions are not the only 16-dimensional zero-divisor algebra:
complexifying the octonions (bi-octonions, `O + I*O`, `I^2 = -1`) does
too, by the general classical fact that complexifying any composition
algebra introduces zero divisors. This is a genuinely different
algebra from the sedenions -- the product `(a,b)(c,d) = (ac-bd,
ad+bc)` is the ordinary complex-bilinear extension, built entirely
from the octonions' own multiplication with no conjugate anywhere,
unlike the Cayley-Dickson doubling step the sedenions use. `1 + I*e_1`
is the simplest such example: `(1)(1) - e_1*e_1 = 1-(-1) = 0`. This
one fact -- `bio-mul x-bio y-bio = (zeroCD 3, zeroCD 3)` -- is now
checked by `refl` in `HopfStructure_Hypotheses.agda`, the same way
`seed-a`/`witness-x` are for the sedenions.

Comparing the two algebras at these zero-divisor points with the
tangent map of `(x,y) -> x*y` (i.e. `(dx,dy) -> dx*y + x*dy`, an
`n x 2n` matrix for `n=16`) found a real structural difference:

  - SED (`seed-a`, `witness-x`): rank of the tangent map is exactly 16
    -- the maximum possible, i.e. a smooth point of the "product
    vanishes" locus. Checked not just for `seed-a` but for all 42
    sedenion pair-seed zero divisors (each with its own kernel
    witness): rank 16 in every case, no exceptions.
  - BIO (`1 + I*e_1`, its own kernel witness `1 - I*e_1`): rank of the
    tangent map is only 10 -- a genuinely singular point, with a
    22-dimensional tangent space instead of the generic 16. `ker(L_x)`
    is already 8-dimensional here (vs. 4 for a typical sedenion
    pair-seed), which mostly accounts for the excess on its own.

Decomposing both `L_x` and `R_y` into their natural 4x4 quaternion
blocks (`H_a..H_d`, the four dimension-4 pieces both `CD 4` and
`O + I*O` split into) sharpened this further: at this specific point,
BIO's `L_x` and `R_y` have *identical* block-support patterns, and that
shared pattern splits cleanly into two disconnected pairs of blocks
(`{H_a,H_c}` and `{H_b,H_d}`, no cross terms at all) -- a genuine
block-flow cut. SED's `L_x` and `R_y` do not match each other's
pattern at all: `L_x` has the same two-way split BIO shows, but `R_y`
is fully cyclically connected (`H_a<->H_b<->H_c<->H_d<->H_a`) -- a
real asymmetry, consistent with the sedenions' product genuinely not
being commutative-like the way the bi-octonion product is.

That block-flow cut does NOT survive genericity, though, and this is
the one part of H7 checked carefully rather than off one example: a
one-parameter family of bi-octonion zero divisors through the same
point (`x = s + I*(e_1+t*e_4)`, `y = s - I*(e_1+t*e_4)`,
`s=(1+u^2)/(1-u^2)`, `t=2u/(1-u^2)`, so `s^2-t^2=1` identically and
`x*y=0` holds for every `u`) shows the cut is a feature of `u=0`
specifically: symbolically in `u`, and concretely at `u=1/2`, all four
blocks are connected with no cut, in both `L_x` and `R_y`. What does
survive genericity: `L_x` and `R_y` still match each other's block
pattern exactly at every `u` checked, cut or no cut -- so the BIO/SED
asymmetry (`L_x = R_y`-shaped vs. not) looks like a real, level-
independent difference between the two algebras, while the specific
two-block cut was a `u=0` coincidence, not evidence of one.

None of the rank or block-connectivity claims above are formalized --
they need real linear algebra (matrix rank, over a function field for
the parametrized family) this project does not have, the same gap
already on record for `zero-divisor-has-gen-inv`. What is fully
checked is the elementary product fact establishing `1+I*e_1` as a
genuine zero divisor in the first place.

## H8 — Smith normal form of `L_x`: torsion follows nullity at pair seeds and survives deformation (numerical; kernel basis checked)

Motivation, from the Ext computations in
`AbelianCurseHypotheses.lagda.md` (AC6--AC8): the integer matrix `L_x`
of left multiplication `y -> x * y` on `CD k` is a square integer matrix,
hence a two-term complex `ℤ^n -> ℤ^n` of the same shape as the
coboundary operator there. Its kernel is the set of zero-divisor
partners of `x`; its cokernel is `ℤ^ν ⊕ torsion`, with `ν = nullity`
(the free rank of the cokernel equals the nullity because the matrix is
square -- automatic, not a finding).

Experiment (SymPy, not Sage, which is unavailable here; the scripts are
scratch and are not added to the repository). The multiplication is the
one of `Hypotheses.mul`, `(a,b)(c,d) = (ac - d̄b, da + bc̄)`; as a
convention check the script reproduces `seed-a * witness-x = 0`. For
every pair seed `x = e_i + e_j` (`i < j`), the Smith normal form of
`L_x` over `ℤ`:

```
k=3 (28 pairs)   nullity 0:  1^4 2^4                          28 pairs
k=4 (120 pairs)  nullity 0:  1^8 2^8                          78 pairs
                 nullity 4:  0^4 1^8 2^4                      42 pairs
k=5 (496 pairs)  nullity 0:  1^16 2^16                       202 pairs
                 nullity 4:  0^4 1^16 2^12                    84 pairs
                 nullity 8:  0^8 1^16 2^8                     84 pairs
                 nullity 12: 0^12 1^16 2^4                   126 pairs
```

The k=4 zero-divisor set agrees with the closed form of H5 on all 120
pairs, and the k=5 counts (84 + 84 + 126 = 294 zero divisors) agree with
H6.

Observed pattern, checked only at these seeds: the Smith form is
`1^(n/2) 2^(n/2 - ν) 0^ν`, i.e. the cokernel is
`ℤ^ν ⊕ (ℤ/2)^(n/2 - ν)`. So at pair seeds the Smith form carries no
information beyond the nullity, and its torsion lives at the prime 2,
which is `N(x)` for these seeds. (Equivalently, `L_x` has rank `n/2`
modulo 2 at every pair seed.) On the invertible seeds this is the
expected shape, since `L_x̄ L_x = N(x) I` holds exactly there (H5) and
forces every invariant factor to divide 2; for zero divisors that
argument is unavailable, and the `1, 2, 0` pattern is empirical.

The more interesting observation is for deformed seeds
`x = e_i + c e_j` at `k = 4`, `c = 2, 3`:

```
c=2 (N=5):  78 seeds: 1^8 5^8          42 seeds: 1^12 15^4
c=3 (N=10): 78 seeds: 1^8 10^8         42 seeds: 1^8 2^4 40^4
```

All of these have nullity 0: no zero divisors remain, so the kernel
sees nothing. Yet the cokernel still splits the seeds into the same
78 / 42 classes. For `c = 2, 3, 5` the 42 seeds with `det(L_x) != N(x)^8`
form exactly the H5 zero-divisor set (checked by set equality), and the
other 78 have `det = N(x)^8`. In words: the kernel part (Ext^0-like)
vanishes after deformation while the torsion of the cokernel
(Ext^1-like) still remembers which seeds were zero divisors. A caution:
`det != N^8` is the failure of the composition identity (the H5
dichotomy) seen through the determinant, so the new content is that it
is visible in the cokernel after the nullity is gone, and that the
Smith form is finer than the determinant (at `c = 2` an extra prime 3
appears, `15 = 3 * 5`, on the former zero-divisor seeds only). A sample
of 60 random three-term seeds `e_i + e_j + e_l` at `k = 4` gave three
Smith types (`1^8 3^8`, `1^12 3^4`, `1^12 3^2 15^2`); not analyzed.

Checked in Agda: `SedenionKernelSeed` verifies, one `refl` each, four
explicit kernel vectors of `L_x` for `x = e1 + e10`
(`e7 + e12`, `-e6 + e13`, `e5 + e14`, `-e4 + e15`). Not checked: the
nullity being exactly 4, and every Smith-form statement above -- the
project has no rank or Smith machinery at size 16.

On a possible bridge to the Ext computations: a brute-force search over
diagonal `A`, `B` with entries in `0..5` finds `T` with the same Smith
data as `L_{e1+e10}` (for instance `A = 0`, `B = diag(0,1,1,2)`: the
entries `b_j - a_i` are `0^4 1^8 2^4`), and likewise for the invertible
seeds (`A = 0`, `B = diag(1,1,2,2)`). This identifies two cokernel
groups and nothing more: such realizations are cheap for small Smith
data, and no map from `L_x` to a coboundary operator is known. Nothing
in this section involves a Hodge structure, so no claim about Hodge
torsion is made or tested here.

Follow-up at `k = 5`, `c = 2` (all 496 pair seeds): the nullity is 0 for
every seed, the bad set `{det != N(x)^16}` equals the 294-element
zero-divisor set of `c = 1`, and the Smith form separates the four
nullity classes of `c = 1`:

```
nu(c=1) = 0   (202 seeds):  1^16 5^16
nu(c=1) = 4   ( 84 seeds):  1^20 5^8 15^4
nu(c=1) = 8   ( 84 seeds):  1^24 15^8
nu(c=1) = 12  (126 seeds):  1^20 3^8 15^4
```

These multisets fit a closed form for the determinant, found from them
and then checked directly against every seed computed (all 120 seeds at
`k = 4` for `c = 1, 2, 3, 5`, all 496 at `k = 5` for `c = 2`):

```
|det L_x| = (c^2 - 1)^ν (c^2 + 1)^(n/2 - ν),    x = e_i + c e_j,
```

with `ν` the nullity of `L_x` at `c = 1`. At `c = 1` it reproduces
`det = 0` for `ν > 0` and `2^(n/2)` for `ν = 0`. At `c = 2` this says
`det = 3^ν 5^(n/2 - ν)`, so the determinant alone already recovers `ν`
(it is the 3-adic valuation); the Smith form is finer but not needed to
separate the classes. The shape is compatible with the rank-`2ν` defect
of H5 (`det^2` has the factor `c^2 - 1` to the power `2ν`). H10 derives
the formula from one finite lemma about the anticommutator of two left
multiplications; that lemma is checked numerically (`k = 3` to `6`),
not proved.

Remaining scans, each cheap relative to a blind search: `c = 3` at
`k = 5`; and `k = 6`, which needs a faster Smith-form routine than
SymPy. (Right multiplication `R_x` against `L_x` is settled for
imaginary seeds by H9: the two are unimodularly equivalent.) The
mod-`p` side of the
same data (which primes carry the torsion) is recorded in the AC5
addendum of `AbelianCurseHypotheses.lagda.md`.

## H9 — No asymmetric annihilators in the sedenions; `R_x` is unimodularly equivalent to `L_x` for imaginary `x` (short argument; basis facts checked)

Question, from an experiment design: are there sedenions `x`, `y` with
`x y = 0` and `y x != 0`?

Answer for `CD 4`: no. If `x y = 0` with `x, y != 0`, then `x` and `y` are
purely imaginary and `y x = 0`. The argument uses two facts, each
bilinear or linear in its arguments and therefore reducible to the
basis:

- (F1) `conj (x y) = conj y * conj x`;
- (F2) for `i > 0`, the left multiplication matrix `L_{e_i}` is
  skew-symmetric. It is a signed permutation matrix, hence skew exactly
  when `L_{e_i}^2 = -I`, i.e. `e_i (e_i e_j) = - e_j` for all `j`.

Both are checked in Agda on the basis, by `refl`, in
`CayleyDicksonQuiver.AbelianCurse.SedenionBasisFacts`: 256 facts for
(F1) and 240 for (F2) (a copy with one deliberately false statement was
confirmed to be rejected). They were also checked numerically on all 256
basis pairs and on 300 random integer pairs.

The argument. Write `x = x0 + x'` with `x'` imaginary.

1. `L_x = x0 I + L_{x'}` with `L_{x'}` skew by (F2), so
   `L_x^T L_x = x0^2 I + L_{x'}^T L_{x'}` is positive definite when
   `x0 != 0`. Hence a nonzero `x` with some `y != 0`, `x y = 0`, has
   `x0 = 0`.
2. Let `x` be imaginary and nonzero, `y = y0 + y'`, `x y = 0`. Then
   `y0 x + x y' = 0`. Pair with `x`: `<x y', x> = - <y', x x> =
   N(x) <y', 1> = 0`, using skewness and `x x = - N(x)` for imaginary `x`
   (which follows from `e_i^2 = -1` and anticommutation of distinct
   imaginary units, itself a consequence of (F1)). So `y0 N(x) = 0`
   and `y0 = 0`.
3. Both are imaginary, so by (F1)
   `0 = conj (x y) = conj y * conj x = (-y)(-x) = y x`.

The argument is elementary linear algebra written out by hand here; it
is NOT formalized. Only the basis facts it rests on are. It also does
not claim anything for other Cayley-Dickson levels.

Corollary: for imaginary `x`, `y x = conj (conj x * conj y) =
- conj (x * conj y)`, i.e. `R_x = - C L_x C` with `C = diag(1, -1, ..., -1)`
(a unimodular matrix with `C^2 = I`). So `R_x` and `L_x` have the same
kernel dimension and the same Smith normal form up to sign, and
`{y : x y = 0} = {y : y x = 0}`. Checked numerically: `R_x = - C L_x C`
for all 420 imaginary seeds `e_i + c e_j`, `c = 1, -1, 2, 3`.

Numerical search (SymPy): over the 210 seeds `e_i ± e_j`
(`1 <= i < j <= 15`), the integer kernel vectors of `L_x` (336 in all)
all have zero real part, and none has `y x != 0`.

A caution recorded from the search design this came from: a hand-written
basis multiplication routine disagreed with `Hypotheses.mul` on 115 of
the 256 basis pairs (and was not anticommutative on distinct imaginary
units), and with it the same search reported 218 spurious "asymmetric"
pairs (for instance `x = e1 + e3`, `y = 1 + e2`, although `e1, e2, e3`
span a copy of the quaternions, where `e1 + e3` is invertible). Any such
routine should be validated against `mul` before a search is trusted:
agreement on all 256 basis pairs, `e_i^2 = -1`, anticommutation.

## H10 — The anticommutator of two left multiplications: `S³ = 4S`, and the determinant formula of H8 as a consequence (numerical, `k = 3` to `6`)

Notation: `L_i = L_{e_i}` for `i >= 1`, and `S_ij = L_i L_j + L_j L_i`
for `i != j`.

What is already available: each `L_i` is skew-symmetric and
`L_i^2 = -I` (H9; both are Agda-checked on the basis in
`SedenionBasisFacts`, as `e_i (e_i e_j) = - e_j`). Elementary
consequences: `S_ij` is symmetric (because `(L_i L_j)^T = L_j L_i`), and
for `x = e_i + c e_j`,

```
L_x^T L_x = - L_x^2 = (1 + c^2) I - c S_ij.
```

In terms of the algebra, `S_ij z = e_i (e_j z) + e_j (e_i z)` equals,
up to sign, the polarized left alternator `[e_i, e_j, z] + [e_j, e_i, z]`
(distinct basis units anticommute), so `S_ij = 0` exactly when the
Clifford relations `L_i L_j = - L_j L_i` hold.

Observed (all pairs `i < j`, `k = 3, 4, 5, 6`; plain integer matrices,
not Agda): `S_ij` is symmetric with trace 0, satisfies

```
S_ij^3 = 4 S_ij,    rank S_ij = 2 ν_ij,
```

where `ν_ij` is the nullity of `L_{e_i + e_j}`. Counts of
`(rank S, ν)`:

```
k=3:  (0,0): 21                          -- all pairs anticommute (octonions)
k=4:  (0,0): 63   (8,4): 42              -- the 42 zero-divisor pairs
k=5:  (0,0): 171  (8,4): 84  (16,8): 84  (24,12): 126
k=6:  (0,0): 435  (8,4): 252 (16,8): 168 (24,12): 168 (32,16): 168
      (40,20): 168 (48,24): 252 (56,28): 342
```

The totals agree with H5 and H6: at `k = 3` the `L_i` satisfy the Clifford
relations (the standard action of `Cl_7` on the octonions, noted here, not
re-proved); at `k >= 4` a pair `e_i + e_j` is a zero divisor exactly when
`L_i` and `L_j` fail to anticommute.

Consequence for the determinant. Assume `S³ = 4S` (the one fact not
derived). `S` is symmetric with trace 0, so its eigenvalues lie in
`{0, 2, -2}` with `2` and `-2` of equal multiplicity `m`. Then
`L_x^T L_x` has eigenvalues `1 + c^2` (multiplicity `n - 2m`),
`(c - 1)^2` (multiplicity `m`) and `(c + 1)^2` (multiplicity `m`). At
`c = 1` the kernel of `L_x` has dimension `m`, so `m = ν`, and

```
|det L_x| = (c^2 + 1)^(n/2 - ν) |c^2 - 1|^ν.
```

This is exactly the formula recorded in H8. It also recovers the H5
defect: at `c = 1`, `L_x̄ L_x = 2 I - S`, so the defect has rank `2ν`. So the
H8 formula is no longer a free-standing empirical fact: it is reduced to
the finite lemma `S_ij³ = 4 S_ij`, which holds in every case computed
(`k = 3` to `6`) and has not been proved for general `k`.

On the free-independence test of the experiment design this came from.
For the seeds `x = e1 + e10` and `y = e2 + 2 e11` (so `A = L_x`,
`B = L_y`), in exact arithmetic:
`τ(A) = τ(B) = τ(AB) = 0`, `τ(ABAB) = -6`, `τ(A²) = -2`, `τ(B²) = -5`,
`τ(A²B²) = 10 = τ(A²)τ(B²)`. Two remarks. First, `τ(ABAB) = 0` is a
necessary condition for free independence of centered elements, and
exact free independence of two non-scalar unital subalgebras of
`(M_N, tr/N)` is impossible: nonzero centered `a, b` that were free would
make the words `(a b)^m` (`m = 1, 2, ...`) nonzero and linearly independent,
which cannot happen in a space of dimension `N^2` (standard; sketch only).
So the test can only fail at fixed size, and a failure is not evidence
about anything else; freeness is an asymptotic notion. Second, a more
informative single number here is the ad hoc ratio
`r = τ(ABAB) / τ(A²B²)`, which is `+1` for commuting independent
elements, `0` for free ones and `-1` for anticommuting ones (the
Clifford case above): this pair has `r = -3/5`, between the anticommuting
and the free value, and neither `AB + BA` nor `AB - BA` is zero.

The other half of that script (nullity modulo `p` against rational
nullity) repeats the computation of the AC5 addendum: exceptional primes
`{2}` for `L_x` (rational nullity 4) and `{3, 5}` for `L_y` (rational
nullity 0), within primes below 50. A finite set of exceptional primes is
eventual constancy, which is the opposite of the "impossibility" its
label suggests; it does not involve any choice of ultrafilter.

## H11 — Left multiplications by independent random elements of `CD k` are not asymptotically free (numerical, `k = 3` to `12`)

Question: do `A = L_x` and `B = L_y`, for independent random `x`, `y`,
become asymptotically free (Voiculescu) in `(M_n, tr/n)`, `n = 2^k`, as
`k` grows?

Why fixed seeds cannot answer it. For `x` in `CD 4`, embedded in `CD (k+1)`
by `x -> (x, 0)`, the doubling formula gives `x (c, d) = (x c, d x)`, so
`L_x` on the larger algebra is a direct sum of copies of `L_x` and `R_x`
(with conjugation twists at higher levels). Its normalized moments are
therefore independent of `k`. An asymptotic statement needs seeds whose
support grows with `k`.

Set-up (plain floating-point matrices, not Agda). The structure constants
`e_i e_j = σ(i,j) e_{i xor j}` are generated by the doubling recursion and
were validated against the recursive multiplication on all basis pairs for
`k <= 5`; `L_i^2 = -I` and `S_ij^3 = 4 S_ij` were re-checked from the table.
Ensembles: dense seeds `x`, `y` (imaginary, Gaussian coefficients,
normalized to `|x| = |y| = 1`); two random disjoint pair seeds; and three
calibration controls: random Gaussian skew-symmetric matrices (Wigner, known
to be asymptotically free), the untwisted group algebra of `Z_2^k` (all signs
`+1`: commuting, independent), and translation-invariant magnitudes
`x[w xor z]` with i.i.d. antisymmetric random signs in place of the
Cayley-Dickson signs.

Exact preliminaries (given `L_i^2 = -I` from H9 and `tr S_ij = 0`, the
latter checked numerically): with `α = τ(A²)`,

```
A² = - |x|² I + P,    P = Σ_{i<j} x_i x_j S_ij,    τ(P) = 0,    α = - |x|²,
τ(A⁴) / τ(A²)² = 1 + τ(P²) / |x|⁴.
```

So the centered square `P = A² - α` is exactly a combination of the
anticommutator defects of H10; at `k = 3` (Clifford) `P = 0` and the
ratio is 1.

Quantities (all normalized by `L²`-norms, `P = A² - α`, `Q = B² - β`):
`ABAB = τ(ABAB)`, `PQPQ = τ(PQPQ)`, `AQAQ`, `PBPB`, `ABPB`, and the
kurtosis `κ = τ(A⁴)/τ(A²)²`. For free centered elements all the mixed
quantities vanish and `κ → 2` for semicircular marginals.

Dense Gaussian seeds in `CD k` (mean ± standard deviation over samples;
3 samples at `k = 12`, more below):

```
 k     n    ABAB            PQPQ           κ
 6    64    -0.134±0.094    +0.143±0.071   1.790
 8   256    -0.036±0.050    +0.142±0.042   1.953
10  1024    -0.003±0.023    +0.148±0.011   1.981
12  4096    -0.002±0.005    +0.164±0.004   2.002±0.013
```

`AQAQ` and `PBPB` are within about ±0.01 of 0 for `k >= 9`, and the first
mixed moments (`τ(AB)`, `τ(A²B²) - τ(A²)τ(B²)`, `τ((AB)³)`) also tend
to 0. `ABPB` is exactly 0 in every sample, but that carries no information:
it is the trace of a product with an odd number of skew-symmetric factors,
which vanishes by transposition and cyclicity.

Controls, same quantities: the Wigner skew pair tends to 0 everywhere with
standard deviation of order `1/n` and `κ = 2.000`; the untwisted group
algebra gives `ABAB → +1` (commuting independence); the random-sign
translation-invariant ensemble gives `PQPQ = 0.000±0.001` at `k = 11` and
`κ → 1.999`, i.e. it behaves like the free case.

Reading. At low order the pair looks free: the marginal fourth moment tends
to the semicircle value 2, and the first mixed moments vanish. But the
alternating moment of the centered squares, `τ(PQPQ)`, stays between about
0.14 and 0.17 for `k >= 6` and does not decay, whereas it is 0 for a free
pair. One non-vanishing alternating moment of centered polynomials in `A`
and `B` is enough to rule out asymptotic freeness for this ensemble. The
random-sign control shows that this comes from the Cayley-Dickson sign
structure and not from the translation-invariant magnitudes. The value of
the limit is not identified (the numbers drift slightly upward, `0.143` at
`k = 8` to `0.164` at `k = 12`, with few samples at the top).

Reduction to the matrices `S_ij`. Take `x`, `y` uniform on the unit
sphere of the imaginary part, so `E[x_i² x_j²] = 1 / (n (n + 2))` for
`i != j` and `E[x_i x_j x_k x_l] = 0` for index pairs `{i, j} != {k, l}`.
Write `p, q` for index pairs, `S_p = S_ij`, `N = n (n - 1) / 2`, and

```
s_k = mean_p τ(S_p²)          (= 4 × average rank fraction of S_p),
m_k = mean_{p,q} τ(S_p S_q S_p S_q).
```

Then, exactly,

```
E τ(P²) = N s_k / (n (n + 2)),    E κ = 1 + (n - 1) s_k / (2 (n + 2)),
E τ(PQPQ) / (E τ(P²) E τ(Q²)) = m_k / s_k².
```

So the limits of `κ` and of the `PQPQ` ratio are questions about the
deterministic matrices `S_ij` only. Computed (`k = 4, 5`: all pairs and all
pairs of pairs; `k = 6, 7`: `s_k` over all pairs, `m_k` over random pairs of
pairs, 30000 and 4000 samples):

```
 k    n    s_k      m_k       m_k / s_k²    predicted E κ    sampled κ (above)
 4   16   0.8000   0.0000    0.000          1.33            1.33
 5   32   1.3548   0.2424    0.132          1.62            1.61
 6   64   1.6667   0.4078    0.147          1.80            1.79
 7  128   1.8307   0.5254    0.157          1.89            1.89
```

The predicted `κ` matches the sampled value at every `k` shown, and the
ratio `m_k / s_k²` matches the sampled `PQPQ` (`0.115` to `0.139` at
`k = 5`, about `0.14` at `k = 6`, `0.134` to `0.142` at `k = 7`, within the
sampling noise). Two consequences: `s_k` increases toward 2 (average rank
fraction toward `1/2`), which is why `κ → 2`; and `m_k / s_k²` is
increasing (`0, 0.132, 0.147, 0.157`), so the sampled values above `0.14`
are not an artifact of finite sampling, but whether it converges, and to
what, is open (the `k = 12` sample, `0.164`, suggests a limit above
`0.16`). The `k = 4` ratio `0` is exact (the sampled `PQPQ` there is
`-0.027±0.386`, consistent with it).

Sparse seeds do not give a limit: for two random disjoint pair seeds the
standard deviation of `ABAB` stays at about 0.3 to 0.4 up to `k = 9`, with
mean near 0. The moments follow the discrete classification of H5 and H10
(which pairs anticommute, which have `rank S_ij = 2ν`) instead of
self-averaging.

Not claimed: any statement for other distributions of seeds, any proof of
the non-vanishing (the limit of `τ(PQPQ)` would have to be computed from
the correlations among the `S_ij`, which is not done), and any relation to
AC5 or to IUT.

## H12 — Experiment plan: is the quiver's path structure recoverable from mod-`p` data? (design; one pilot run, nothing else)

Question. `CayleyDicksonQuiver.agda` defines vertices
`(kernel-dim : ℕ, signature : List Pair)`, arrows that strictly decrease
`kernel-dim` (and require the target to be positive), free concatenation of
paths (`path-multiply`, line 78 region) and a `PathEquiv` with only
reflexivity, symmetry and transitivity (no generating relations). Is this
structure recovered from the data visible after reduction modulo `p`, or in
`𝒜/𝔪_U`? The plan below is built to kill that claim or to find the first
place where something survives. It is pre-registered: each experiment
states its input, its computation and its decision rule before it is run.

Scope and exclusions. The plan does not use `SecondOperatorLemmas.agda`, nor
anything downstream of it: `Ext1Torsion`, `KoszulToy` (through
`Ext1Torsion`), and `Everything` (which imports `SecondOperatorLemmas`) are
all outside it, as are AC7 and AC8 and any argument via the left-kernel
lemma, the Smith-form extractor, or `AllZero`. Allowed: `CayleyDicksonQuiver`,
`Hypotheses`, `Properties`, `SedenionBasisFacts`, `SedenionKernelSeed`,
`KummerFrobenius` (which imports nothing from the project), and plain
rank / Smith computations over `ℚ`, `ℤ` and `F_p` written for the purpose.
Agda can certify a lower bound on a kernel dimension (explicit independent
kernel vectors, as in `SedenionKernelSeed`) but an upper bound needs a
certificate such as a non-vanishing minor, which the project does not have
at size 16; so the decisive experiments are numerical, and say so.

Step 0 — what is already fixed and what is not (no computation).
`CayleyDicksonQuiver.agda` alone does not say how a `Pair` acts on a vector
space, but `Properties.agda` (lines 322 to 328) does:
`get-linear-map (i , j) = mul 4 (add 4 (seedVec i) (seedVec j))`, left
multiplication by the seed `e_i + e_j` ("the concrete zero-divisor
candidate `Pair` is meant to name"). So the reading `ι(i, j) = L_{e_i + e_j}`
(called I1 below) is the repository's own, and a signature is read as the
stacked matrix, `K(σ) = ∩_{p ∈ σ} ker ι(p)`. What is not fixed:

- the vertex invariant: `compute-kernel-dim = 16 ∸ #pairs` is declared a
  conservative stand-in, not a rank-based dimension. For a single seed it
  is far from the rank-based value: over `ℚ` (computed outside Agda) the
  kernel of `L_{e_i + e_j}` on `CD 4` has dimension 4 for exactly 42 of
  the 120 pairs `i < j` (`1 ≤ i ≤ 7`, `8 ≤ j ≤ 15`, `j ≠ i + 8`) and 0 for
  the other 78, whereas the stand-in gives `16 ∸ 1 = 15` for every pair.
  Over the next levels the kernel dimensions of the seeds are again
  multiples of 4 but not powers of 2: 4, 8, 12 at level 5 (294 of 496
  pairs), and 4, 8, ..., 28 at level 6 (1518 of 2016);
- the relations of the path algebra: `ZeroDivisor-associator-type : Pair ->
  AssociatorType` (four values) is a `postulate`. `PathEquiv` has no
  generating relation (only `equiv-refl`, `-sym`, `-trans`), so it is
  equality (`equiv⇒≡`, `Properties.agda`), and
  `associator-determines-equiv` ("arrows of equal associator type give
  equivalent one-step paths") cannot be proved as a lemma: for ANY
  function `ZeroDivisor-associator-type` it is false
  (`associator-determines-equiv-false`; between two fixed vertices an
  arrow is an arbitrary pair of naturals, and four values cannot be
  injective on five pairs). The intended relations therefore have to be
  added as a constructor of `PathEquiv`, not derived; experiment 6 below
  is to be read against that. Until then a functor from the path
  category to anything (for instance `Arrow ↦ get-linear-map`) is
  unconstrained by relations, so its well-definedness is not a test.

Interpretations still open, to be used only if the author intends to change
the repository's reading:

- I2: `ι` encodes one linear condition per pair, so that "one dimension per
  pair" is literally true (the reading suggested by the proxy).
- I3: any other interpretation the author specifies.

Until a different `ι` is specified, the plan is stated for I1 and kept
`ι`-parametric.

Pilot (already run, `k = 4`, I1). The 42 seeds each have `dim K = 4` (proxy:
15). For the 861 unordered pairs of seeds, `dim K(a, b)` is `0` for 819 pairs
and `2` for 42 pairs, never `4`. Among 400 random triples no chain
`4 > d2 > d3 > 0` occurs (chains: `(4,0,0)` 390 times, `(4,2,0)` 10
times). So under I1 almost every arrow would land at dimension 0, which the
Agda `Arrow` forbids (`n > 0`). Over `F_p`, `p < 50`: the dimension differs
from `ℚ` only at `p = 2` (all 861 pairs and all 400 triples); at odd primes
it agrees everywhere. These are the only facts established so far.

Experiments, cheapest first. "Kill" means the claim fails for the
interpretation tested; "sprout" means something survives and is worth a
sharper question.

1. Vertex layer (V). Compute `dim K(σ)` over `ℚ` for signatures of length
   1 to 6, `k = 4, 5` (sampled at `k = 6`). Compare with
   `compute-kernel-dim`. Kill (under `ι`): the proxy differs from `dim K` on a
   positive fraction of signatures (already true under I1). Sprout: an `ι`
   (I2 or I3) on which the proxy equals `dim K` on a nontrivial family.
2. Composition layer (C1), the quickest decisive kill of the weakest
   reading. Look for `σ1, σ2, σ1', σ2'` with equal `dim K(σ1) = dim K(σ1')`
   and `dim K(σ2) = dim K(σ2')` but `dim K(σ1 σ2) != dim K(σ1' σ2')`. If one
   exists, no functor that remembers only dimensions respects
   concatenation. Under I1 this already holds (singletons 4, 4; pairs 0 or
   2), so the dimension-only reading is killed for I1. Repeat for I2/I3.
3. Reachability census (R). Count valid chains (strictly decreasing, always
   positive) by length for `k = 4, 5, 6`. Kill (under `ι`): the maximal
   length stays at most 2 for every `k` tested, so paths of length at
   least 3 have no linear-algebraic counterpart. Sprout: the maximal
   length grows with `k` (kernel dimensions at `k = 5, 6` already take many
   values, H6, so longer chains are possible there).
4. Good-prime layer (G). For every valid chain, find the set `B(σ)` of
   primes `p` at which any dimension in the chain differs between `ℚ` and
   `F_p`, and check `B(σ)` against the primes dividing the elementary
   divisors of the stacked matrix over `ℤ` (computed with plain Smith form,
   not through any Ext machinery). Kill (of the uniform forgetful
   functor): `B(σ)` is unbounded as `|σ|` or `k` grow, i.e. new bad primes
   keep appearing. Sprout (and a kill of ultrafilter dependence at this
   layer): `B(σ) ⊆ {2}` throughout, because then every stalk `𝒜/𝔪_U` sees the
   same chain as `ℚ`.
5. Faithfulness layer (F), the core of "recovery". The subspace
   `K(σ)` depends only on the set of pairs in `σ`, whereas the Agda vertex
   remembers the ordered list. Measure how much of the labelled structure
   is determined by the unlabelled arrangement of the subspaces
   `ker ι(p)` up to `GL_n(F_p)`: compute the dimensions of all sums and
   intersections of subfamilies of the `ker ι(p)` and count the classes of
   the 42 seeds (resp. of ordered paths) that share the same invariant.
   Kill: many seeds share one invariant, so the arrow labels cannot be
   recovered from the arrangement (recovery is then by labelling, i.e. by
   fiat). Sprout: the invariant separates the seeds into few classes that
   still carry the structure of H5 (which pairs anticommute, `rank S`).
6. Relations layer (P). `PathEquiv` has no generators, but the data force
   relations: `K(σ)` is invariant under permuting `σ`. Record the relations
   that hold for every `ι` considered (permutation invariance; idempotence
   if a pair is repeated). Sprout: these relations exist and the free path
   algebra does not satisfy them, so any recovery would be of a quotient of
   the Agda path algebra, not of the algebra as defined.
7. Ultrafilter layer (U), run only if layers 4 to 5 leave anything open.
   The only way a stalk can differ from the generic fibre is a
   non-eventually-constant input. Take `p`-dependent pairs, for example
   `x_p = 1 + c_p e_1` with `c_p^2 = -1 (mod p)` for `p ≡ 1 (mod 4)`
   (zero divisor of the quaternion algebra over `F_p` exactly when
   `-1` is a square), and test whether the vertex label (here the
   nullity of `L_{x_p}` over `F_p`) depends on whether
   `{p ≡ 1 mod 4} ∈ U`. Kill: every `ℤ`-definable input gives an
   eventually constant chain (already implied by H8 and the AC5 addendum),
   so no `U` enters. Sprout: a Kummer- or Frobenius-defined family whose
   chain depends on the residue class `a_U` (AC5 addendum, AC9) or, worse,
   on non-abelian data (the cube example): that is the first place where a
   path-algebra feature could depend on the choice of ultrafilter.

Controls and hygiene. Before any run, validate the multiplication routine
against `Hypotheses.mul` on all 256 basis pairs (a hand-written table once
produced 218 spurious results, H9). Use random non-zero-divisor seeds as a
negative control (kernels are 0, so no chain). Report counts, not
impressions: every experiment writes the number of signatures checked, the
number satisfying each condition, and the primes involved.

Stopping rule. After experiments 1 to 3 under I1: if chains of length
at least 3 do not exist for `k = 4, 5, 6`, declare the recovery claim
killed for I1 and move to I2 or I3 only if the author supplies it. If
experiment 5 separates the seeds and experiment 4 gives `B ⊆ {2}`, the
surviving statement is narrow: the vertex layer (labels) is visible modulo
`p` away from `p = 2`, and nothing more about arrows or paths is.

Not tested: any claim about IUT, and anything that depends on
`SecondOperatorLemmas`.

## H13 — The block structure of `L_{e_i + e_j}`: nullity as a count of singular orbits, and an extra translation invariance of the Cayley-Dickson signs (numerical, `k = 4, 5, 6`)

Setting. Write `e_i e_m = S[i,m] e_{i xor m}` and `x = e_i + e_j` with
`i != j`, both at least 1. Then `L_x e_m = S[i,m] e_{m xor i} + S[j,m]
e_{m xor j}`, so `L_x` preserves the span of each coset
`{a, b, c, d} = {m, m xor i, m xor j, m xor i xor j}` of the subgroup
`<i, j>`. On such a coset `L_x` maps `span{a, d}` to `span{b, c}` by

```
M1 = [[S[i,a], S[j,d]], [S[j,a], S[i,d]]]
```

and `span{b, c}` back to `span{a, d}` by
`M2 = [[S[i,b], S[j,c]], [S[j,b], S[i,c]]]`. All entries are `±1`, so a
block is singular exactly when the product of its four entries is `+1`,
i.e. when

```
ι(i, j, m) = S[i,m] S[j,m] S[i,l] S[j,l] = +1,      l = m xor i xor j,
```

and a singular block has rank 1. Counting each block once for each of its
two indices `m`:

```
nullity(L_x) = #{ m : ι(i, j, m) = +1 } / 2 .
```

Checked against a direct rank computation for every pair: all 105, 465 and
1953 pairs at `k = 4, 5, 6`. The trivial coset `{0, i, j, i xor j}` was
never singular in these cases.

Given `L_i^2 = -I`, i.e. `S[i,m] S[i,i xor m] = -1` (H9; Agda-checked on the
basis at `k = 4`), the two blocks of a coset are simultaneously singular:
`S[i,b] = -S[i,a]`, `S[j,c] = -S[j,a]`, `S[j,b] = -S[j,d]`,
`S[i,c] = -S[i,d]` give `M2 = - M1^T`. So `ι` is constant on each coset
(verified numerically for all pairs at `k = 4, 5, 6`) and

```
nullity = 2 × (number of singular cosets).
```

This is the block-diagonal annihilator structure that a comment in
`SecondOperatorLemmas.agda` refers to as "note AC7"; it appears to mean this
section, not the AC7 of `AbelianCurseHypotheses.lagda.md` (Ext^1 with
torsion). This section does not use that file.

An extra regularity of the Cayley-Dickson signs. Let
`H_ij = { h : ι(i, j, m) = ι(i, j, m xor h) for all m }`, a subgroup of
`Z_2^k` containing `<i, j>`. For the true signs `|H_ij| >= 8` for every
pair; the number of singular cosets is then a multiple of `|H_ij| / 4`,
so the nullity is a multiple of `|H_ij| / 2`. Observed `(|H_ij|, nullity)`
(pairs per class):

```
k=4:  (8, 4): 42   (16, 0): 63
k=5:  (8, 4): 84   (8, 12): 126   (16, 8): 84   (32, 0): 171
k=6:  (8, 4): 252  (8, 12): 168   (8, 20): 168  (8, 28): 342
      (16, 8): 168 (16, 24): 252  (32, 16): 168 (64, 0): 435
```

This explains why every nullity seen in H5, H6 and H10 is a multiple of 4,
and gives the finer divisibility seen there (multiples of 8 when
`|H| = 16`, of 16 when `|H| = 32`). Non-zero-divisor pairs have
`ι ≡ -1`, so `H_ij` is the whole group. Why `|H_ij| >= 8` holds, and what
`H_ij` is in terms of the algebra, was not determined.

Null models (distribution over all pairs). Three sign systems were compared
(`k = 4`: 105 pairs, `k = 5`: 465 pairs; random models averaged over 20
samples):

- the true Cayley-Dickson signs: `nullity ∈ {0, 4}` at `k = 4` (60% / 40%)
  and `∈ {0, 4, 8, 12}` at `k = 5` (36.8% / 18.1% / 18.1% / 27.1%);
- independent random signs with anticommutation and `S[i,i] = -1` (the
  model of the experiment design this section came from): a symmetric bell
  curve of `Σ_m ι` around 0. It also violates `L_i^2 = -I`, so its
  rejection says little;
- a fairer null: uniform samples from all sign systems with anticommuting
  imaginary units and `L_i^2 = -I` (an affine space over `F_2` of dimension
  35 at `k = 4` and 155 at `k = 5`, containing the Cayley-Dickson signs).
  There the nullity takes all even values `0, 2, 4, ...`, with nullity 0 in
  11.1% (`k = 4`) and 0.7% (`k = 5`) of the pairs, and `|H_ij| = 4` for
  49.5% (`k = 4`) and 72.5% (`k = 5`) of the pairs, whereas the true signs
  never have `|H_ij| = 4`.

Reading. The nullity condition is not an independent sign pattern: beyond
anticommutation and `L_i^2 = -I` the Cayley-Dickson signs carry a further
translation invariance (`|H_ij| >= 8`) and a strong concentration at
nullity 0, which the fair null does not reproduce. Not shown: that `ι` is or
is not a component of some forgetful functor (no such functor is defined here,
and none of the three sign systems is one); any link to the associator types of
`Properties.agda`; any statement for `k >= 7`. The identification of the
nullity with the number of singular cosets is exact for every pair computed,
and elementary.

## H14 — A `ℂ³`-based doubling tower is a product artifact; a `p`-dependent seed gives the first vertex label that depends on the residue class of `p` (numerical)

First, the experiment design with base algebra `ℂ ⊕ ℂ ⊕ ℂ` (dimension 6),
doubled to 12, 24 (and here also 48), with the pair `u = e_1` and
`v = (0, ε_1)` (the first basis vector of the upper half, `ε_1` the
idempotent of the first factor) and the complex
`V -> V ⊕ V -> V` given by `D1 = [T1; T2]`, `D2 = [T2, T1]`, `T = L_·`.

Observed (exact integer matrices): `{T1, T2} = 0` and `D2 D1 = 0` at every
dimension, and the middle homology is

```
dim 12: H^1 = 16     dim 24: H^1 = 32     dim 48: H^1 = 64     (= 4 dim / 3),
```

with `H^0 = H^2 = 2 dim / 3`. `T1` and `T2` are nonzero on only `dim / 3`
columns, and `dim ker L_u = 2 dim / 3`.

Explanation. The doubling formula acts coordinatewise on the three factors
of the base, so the doubled algebras are products of three copies:
`ℍ³` (12), `𝕆³` (24), `𝕊³` (48). Genuine Cayley-Dickson zero divisors
exist only from `𝕊` on, and the pair `(e_1, e_8)` anticommutes in `𝕊` with
both operators invertible (a non-zero-divisor pair in the classification of
H10). Both operators live in the first factor only, so the complex splits
by factor: the first factor contributes 0 (a Clifford pair, `T1` invertible
there), and the other two factors (each of dimension `dim / 3`) carry zero
operators, so each contributes `2 (dim / 3)` to `H^1` (the whole of `V_j ⊕ V_j`);
together `4 dim / 3`, exactly the number above. So that homology measures
the dimension of the two factors the seeds do not touch; it contains no
information about Cayley-Dickson zero divisors. Two further remarks: with
anticommuting operators this is not the Koszul complex of commuting
operators used for `Ext^i` in AC8; and "the A/0 invariant" is not defined
by the experiment.

What the finite product does model. `ℂ³` is a finite analogue of
`𝒜 = ∏ F_p` (a ring with idempotents, evaluation at a factor playing the
stalk). The same holds for any section `x = (x_1, x_2, x_3)` over a product:
`L_x = ⊕ L_{x_j}`, so nullity (and every rank-type invariant) is the sum
over factors, and the stalk at factor `j` sees only `x_j`. This is structural
and was not computed; it implies that no non-additive phenomenon can come
from a finite product unless an operator mixes the factors.

Where something does appear (`CD_k` over `F_p`, `k = 1` to `4`, all odd
primes below 100). Take the `p`-dependent seed `x_p = e_0 + c_p e_1` with
`c_p^2 ≡ -1 (mod p)` when `p ≡ 1 (mod 4)` and `c_p = 1` otherwise. Then

```
nullity of L_{x_p} over F_p  =  n / 2   if p ≡ 1 (mod 4),      0   if p ≡ 3 (mod 4)
```

in every case computed, whereas the fixed integer seed `e_0 + e_1` has
nullity 0 over `ℚ` and a nonzero nullity over `F_p` only at `p = 2` (value 8
at `k = 4`). So for a `p`-dependent section the vertex label is the
indicator sequence of the primes `≡ 1 (mod 4)`, scaled by `n/2`: not
eventually constant, and its value at a stalk `𝒜/𝔪_U` is `n/2` exactly when
`{p ≡ 1 mod 4} ∈ U`. This is the "sprout" of layer U in H12: the
Euler-criterion sequence of the AC5 addendum appears as a vertex label of
the quiver. It is elementary (the quaternion algebra over `F_p` is split,
and `1 + c e_1` has norm `1 + c²`); only the numerical check was done.

Hypothesis, not tested. Over `𝒜`, a vertex label is a class in `ℕ^ℕ`
modulo finite support, and "strictly decreasing" is a condition that holds
on a set of primes; an arrow would then exist at the stalk `U` exactly when
its support set belongs to `U`. For inputs defined over `ℤ` every such
support set is finite or cofinite (H8 and the AC5 addendum), so the quiver
does not depend on `U`; only `p`-dependent inputs, as above, can make an
arrow depend on `U`. Nothing here bears on the readings I2 and I3 of `Pair`
in H12: neither of them is constrained by these computations.

## H15 — Layer U in an example: with two-term seeds the existence of a chain depends on `p mod 4` (numerical, `k = 3, 4`; conditional on the seed vocabulary)

Setting (H12, experiment 7; interpretation I1 extended by a coefficient).
Over `F_p` take `f = L_u`, `g = L_v` with the two-term seeds
`u = e_1 + c e_2`, `v = e_3 + c e_4`, where `c^2 = -1 (mod p)`, and the
quantities `z = [f, g]`, the unipotent elements `1 + f`, `1 + g`, `1 + z`,
and the chain of common-kernel dimensions
`n > ν1 = nullity f > ν2 = dim(ker f ∩ ker g) > 0` (the `shrink`
condition of `CayleyDicksonQuiver.agda`).

Observed (odd primes `p = 5, 13, 17, 29, 37`, so `p = 1 (mod 4)`; and
`p = 3, 7, 11, 19, 23`; dimensions 8 and 16):

- two-term null seeds exist only for `p = 1 (mod 4)`, and there
  `f² = g² = 0`, `fg + gf = 0`, `z = fg - gf != 0`, `fz = gz = z² = 0`, and
  the relation `(1 + f)(1 + g) = (1 + g)(1 + f)(1 + z)` holds. The chain exists:
  `16 > 8 > 4 > 0` at `k = 4` and `8 > 4 > 2 > 0` at `k = 3`;
- the control `u = e_1 + e_2`, `v = e_3 + e_4` (`c = 1`, norm 2, nonzero
  modulo every odd `p`) fails every relation (`f² != 0`), has `ν1 = 0`, and
  has no chain, for every `p` tried: it does not depend on `p mod 4`;
- for `p = 3 (mod 4)` no `c` with `c² = -1` exists, so the two-term null seeds
  do not exist. This case was not a test in the original design (it printed
  that no root exists and stopped); it is read here as "no such arrow".

Caveat that limits the reading. For `p = 3 (mod 4)` there are still null seeds
with three nonzero coefficients: any `(a, b, d)` with `a² + b² + d² = 0 (mod
p)` (such triples exist for every `p`; checked for `p = 3, 7, 11, 19, 23`).
Taking `u` supported on `e_1, e_2, e_3` and `v` on `e_4, e_5, e_6` gave the same
relations and the same chain `16 > 8 > 4 > 0` at `k = 4` for each of those `p`.
So the dependence of the chain on `p mod 4` is a statement about the seed
vocabulary (two nonzero coefficients), not about the algebra: with
three-term seeds the arrow exists at every stalk.

What the relations do and do not show. The Heisenberg-type relation is an
algebraic consequence of `f² = g² = 0` and `fg = -gf`, which hold here because
`e_1, ..., e_6` all lie in the lower half of `CD 4` where `S_ij = 0` (H10), i.e.
inside an octonionic subalgebra, and `u`, `v` are null and orthogonal. There
is no sedenion-specific content in these relations; the numbers at `k = 3` and
`k = 4` agree for that reason. The new information is the chain
(`ν1`, `ν2`) and its existence as a function of `p` and of the seed shape.

Reading for AC5. For the two-term vocabulary the support of this arrow in the
primes is `{p = 1 (mod 4)}`, so at the stalk `𝒜/𝔪_U` the arrow exists exactly
when `{p = 1 mod 4} ∈ U`, an instance of the hypothesis at the end of H14
(arrows with `U`-dependent existence). With the three-term vocabulary the
support is all primes, so no `U` is involved. This ties the AC5 mechanism (a
choice of `U` deciding whether `-1` is a square) to the quiver only through
what the vocabulary of `Pair` allows; it says nothing about the readings I2
and I3 of `Pair`.

Not done: chains of length 3 or more with `p`-dependent seeds; seeds in the
upper half of `CD 4` (where `S_ij != 0` and the sedenion-specific structure
enters); `p = 2`; any claim about the full path algebra rather than the one
arrow and its successor.

## H16 — Layer U with genuine zero-divisor structure (`S_ij != 0`): a cover with a non-abelian existence condition (numerical, `k = 4`; conditional on the cover)

Setting (H12 experiment 7, H15 continued in the upper half of `CD 4`).
Let `X` be the scheme `c2^3 = 2`, `c1^2 = -(1 + c2^2)`, a cover of degree 6
over `Spec ℤ` (the second equation says the seed is a null vector), and
let `N_p = #X(F_p)` be the number of its `F_p`-points ("sheets"). Seeds:

- (A) `u = e_1 + c1 e_2 + c2 e_8` (the experiment design this section came
  from);
- (B) `u = e_1 + c1 e_2 + c2 e_10`.

Which pairs carry the zero-divisor structure (rank of `{L_i, L_j}` at
`k = 4`): `(1,2)`, `(1,8)`, `(2,8)`, `(2,10)`: `0`; `(1,10)`: `8`;
`(3,12)`: `8`; `(4,12)`: `0`. So (A) lives entirely in the region
`S_ij = 0` (H10), and (B) contains the zero-divisor pair `(1,10)`.

Observed, for the primes `5 <= p < 80` and, for the distribution of `N_p`,
the 781 primes in `[5, 6000)`:

- (A): on every sheet `nullity L_u = 8`. This is the same value as for the
  octonionic seeds of H15 and follows from `L_u^2 = -N(u) I + Σ x_i x_j S_ij`
  (with all `S_ij = 0` and `N(u) = 0`, `L_u^2 = 0`); it carries no
  sedenion-specific information.
- (B): on every sheet `nullity L_u = 4`, the rank of `L_u^2` is 8, so
  `L_u^2 != 0` (here `L_u^2 = c2 S_{1,10}`): the seed is not square-zero, as
  expected from the zero-divisor pair.
- chains: with the second seed `v = e_3 + c1 e_4 + c2 e_12` the common
  kernel is 0 on every sheet (`(ν1, ν2) = (4, 0)`), so no chain. A search over
  all `v = e_a + c1 e_b + c2 e_d` (distinct `a, b, d` in `1..15` outside
  `{1,2,10}`, 1320 candidates per sheet) at `p = 5, 11, 31, 43, 47` finds,
  on every sheet, candidates giving `16 > 4 > 2 > 0` (28 to 32 of them for
  `p >= 11`; 320 at `p = 5`, a ramified prime); almost all other candidates
  give 0.
- `N_p` over `[5, 6000)`: `0` for 478 primes, `1` only at `p = 5`, `2` for 242,
  `4` for 47, `6` for 13 primes; sheets exist for 38.8% of the primes.
- "A sheet exists" is not a function of `p mod m`. Among primes at least 7
  (excluding `p = 5`, the only prime with a single sheet, which is ramified for
  the quadratic cover): for `m = 3, 4, 8, 12, 24, 36, 72, 120, 360` there are
  two primes in the same class modulo `m`, one with `N_p = 0` and one with
  `N_p > 0` (for example `(11, 23)` for `m = 12`, `(7, 31)` for `m = 24`,
  `(7, 127)` for `m = 120`, `(23, 383)` for `m = 360`).

Reading for AC5. On this cover, an arrow `16 > 4` exists at the prime
`p` exactly when `X(F_p)` is nonempty, and a chain of length 2 exists on
every nonempty fibre tested. So at the stalk `𝒜/𝔪_U` the arrow exists
exactly when `{ p : N_p > 0 } ∈ U`. Unlike the set `{p = 1 mod 4}` of H15,
this set is not determined by residue classes: two nonprincipal
ultrafilters inducing the same element `a_U ∈ Ẑ^×` (AC5 addendum) can
disagree on whether the arrow exists. That the set is not a congruence set
is supported by the clashes above and is what one expects from a cover
whose function field contains `ℚ(∛2)`, a non-abelian cubic field (compare
AC9); it was not proved here. This is the first place in the quiver
programme where a non-abelian Frobenius condition enters the existence of an
arrow.

Caveat that limits the reading, as in H15. Without the constraint
`c2^3 = 2` the seeds `e_1 + a e_2 + b e_10` with `a² + b² + 1 = 0` form a
conic, which has `F_p`-points for every `p`; checked for all primes
`5 <= p < 60`, each point has nullity 4 (the value of the pair `(1,10)` itself).
So the first arrow exists at every stalk in the larger vocabulary, and the
non-abelian dependence above comes entirely from the cubic constraint that
defines the cover, not from the algebra. What the experiment shows is how a
restricted vocabulary of seeds can make the existence of an arrow depend on
non-abelian Frobenius data.

Also recorded, from the same structure: for a pair in the zero-divisor class
the two-term seed `e_i + c e_j` has `L_x^2 = -(1 + c^2) I + c S_ij`, whose
eigenvalues are `-(1 + c^2)`, `-(c - 1)^2`, `-(c + 1)^2`; it is singular
exactly when `c^4 = 1` (when the pair carries zero-divisor structure). This is
the derivation behind the determinant formula of H8/H10, and it was not tested
separately here.

Not done: a length-3 chain on the cover; the Galois group of the closure of
`X` (and hence the density of `{ p : N_p > 0 }`); other pairs of the
zero-divisor class; `p = 2, 3`; any statement about the whole path algebra.

## H17 — Plan for formalizing the finite Heisenberg group `H_3(F_p)` in Agda: what to settle by experiment first (pilot run; plan only for the rest)

Context. H15 found, for lower-half seeds `u = e_1 + c e_2`, `v = e_3 + c e_4`
with `c^2 = -1 (mod p)`, that `f = L_u`, `g = L_v` satisfy `f² = g² = 0`,
`fg = -gf`, and the Heisenberg-type relation. The question here is what to
check before turning that into Agda.

What was established in the pilot (numerical, except the Agda items).

- The group `⟨1 + f, 1 + g⟩` has order exactly `p³` for `(p, k) = (5, 3),
  (5, 4), (13, 4), (17, 4)`: `f, g, z = fg - gf` are linearly independent
  modulo `p`; the set `{(1 + af)(1 + bg)(1 + cz)}` is closed under
  multiplication (all pairs for `p = 5`, a sample of 4000 otherwise); every
  element has order dividing `p`; the center has `p` elements, namely
  `{1 + cz}`, and commutators lie in it. The algebra generated by `f, g` has
  dimension 3 (`f, g, fg`).
- In the coordinates `(a, b, c) ↔ (1 + af)(1 + bg)(1 + cz)` the product is
  `(a, b, c)(a', b', c') = (a + a', b + b', c + c' - b a')`, and
  `(a, b, c) ↦ (a, b, c + ab)` is an isomorphism onto the standard law
  `(x, y, w)(x', y', w') = (x + x', y + y', w + w' + x y')` of the unitriangular
  group (3000 random pairs for each `(p, k)` above; derived by hand first). An
  earlier check in this session used the wrong coordinates and reported a
  mismatch; the discrepancy was in the test, not in the group.
- Where it fails. For seeds with genuine zero-divisor structure (H16, case
  (B), `p = 5, 11, 31`) `f` is not nilpotent, `f² != 0`, `fg + gf != 0`, the
  Heisenberg relation fails, and the algebra generated by `f, g` has dimension
  128 (`p = 5`, closed) or at least 256 (`p = 11, 31`, search capped): the
  generated group is not a `p`-group. So the Heisenberg structure is a
  phenomenon of the region `S_ij = 0` (a Clifford / octonionic situation),
  consistent with H15.
- Agda feasibility (the files are scratch unless stated). Integral relations:
  `HeisenbergSeedRelations.agda` and `CDBilinear.agda` (this repository)
  prove `u_c (u_c y) = -N y`, `v_c (v_c y) = -N y`,
  `u_c (v_c y) + v_c (u_c y) = 0`, `N = 1 + c²`, for EVERY natural number `c`
  and every basis vector `y = basisF i`, `i : Fin 16`. Two ingredients.
  (1) Finitely many basis facts independent of `c` (`L_a² = -I` for
  `a = 1, 2, 3, 4`; `L_a L_b + L_b L_a = 0` for the pairs `(1,2)`, `(3,4)`,
  `(1,3)`, `(1,4)`, `(2,3)`, `(2,4)`), each one statement over `Fin 16`,
  closed by reflection (`CD k` has decidable equality `eqCD`, `all?` decides,
  `toWitness` turns the computed `yes` into the proof). (2) Bilinearity:
  `CDBilinear` proves, at every level `k` and with no postulates, that
  `mul` is additive in each argument, develops the calculus of n-fold sums
  `tms`, and proves two seed lemmas (`sq-seed`, `uv-seed`) turning the basis
  facts into the statements for all `c`. The cases
  `(p, c, N) = (5, 2, 5), (13, 5, 26), (17, 4, 17)` are instances (about 40
  seconds in total). Controls: the same reflection fails for the
  zero-divisor pair `(1, 10)` (where `S != 0`), for a wrong sign of `L_1²`,
  and a wrong constant `N = c²` is a type error; so the route works exactly
  in the lower half of `CD 4` and is not vacuous. An earlier version of this
  file checked only `c < 30`; it is superseded.
  Exhaustive group law: associativity of the law above over `(Z/p)³`
  checked by brute force in Agda in about 5 seconds for `p = 3` and 155
  seconds for `p = 5` (about 2 million triples); the cost grows like `p^6`,
  so `p = 7` would take of the order of an hour and larger `p` are out of
  reach; a variant claiming commutativity was rejected. The standard library
  (Agda 2.6.3, 1.7.3) has `Algebra.Solver.Ring` (commutative rings) but no
  ring `Z/n`.

Design of the formalization (three layers).

- L1, abstract group: `Heis(R)` for a commutative ring `R`, carrier `R³`,
  law `(a, b, c)(a', b', c') = (a + a', b + b', c + c' - b a')`.
- L2, relations: the integral identities of the pilot, proved for all `c`
  (see above).
- L3, bridge: for elements `f, g` of an associative ring with `f² = g² = 0`
  and `fg = -gf`, the map `(a, b, c) ↦ (1 + af)(1 + bg)(1 + cz)` is a
  homomorphism from `Heis(R)`. This is a statement about rings in general, with
  no Cayley-Dickson content; the Cayley-Dickson content is only L2.

Experiments, in the order to run them; each has its decision rule.

1. Route for generic `p` (L1). (a) Prove the group axioms of `Heis(Z)` with
   the ring solver (associativity, identity, inverse `(-a, -b, -c - ab)`).
   Success: typechecks in about a minute. Failure: the solver cannot expand the
   triple product, then fall back to hand rewriting. (b) Build `Z/p` as a
   congruence on `Z` (a setoid `x ≡ y (mod p)`), prove that the law respects it,
   and measure the effort. (c) Keep the brute-force check for `p = 3, 5` as a
   cross-check of whichever route is taken. Decision: take (a) plus (b) if both
   work; the brute-force route stays an instance check only.
2. Group facts for generic `p` (L1). Prove the `n`-th power formula
   `(a, b, c)^n = (n a, n b, n c - (n(n-1)/2) b a)` by induction over `Z`, then
   specialize to `n = p` (odd `p`, so `p | n(n-1)/2`) to get exponent `p`;
   prove that `{(0, 0, c)}` is central and is the derived subgroup. Success: all
   three over `Z` with a `p`-divisibility hypothesis; they are not yet
   attempted.
3. Bridge (L3). Bilinearity of `mul` and the `tms` calculus now exist
   (`CDBilinear`), but the bridge itself is a statement about an abstract
   associative ring and does not need them. Prove the homomorphism property in
   an abstract associative ring, in two forms: `f z = g z = 0`, `z² = 0` and `z` central as
   consequences of the relations, and then the law above. The ring solver is
   commutative, so non-commutative steps need manual equational reasoning;
   measure how long the shortest proof of `(1 + f)(1 + g) = (1 + g)(1 + f)(1 + z)`
   from the relations is before committing.
4. Faithfulness (the group embeds). Show that `f, g, z` are linearly
   independent modulo `p` by exhibiting three entries of the `16 × 16` matrices
   where the `3 × 3` minor is nonzero modulo `p` (read off from the computed
   matrices), checked by `refl` for `p = 5, 13, 17`. Success: the embedding is
   injective as a statement of finitely many integer entries.
5. Scope (negative statement). For the `p = 5` seeds of H16 (B), check that
   `L_u² != 0` modulo 5 by one explicit nonzero entry (a finite
   `refl`-style statement). Success: the Heisenberg structure is shown to be
   specific to the lower-half region, in Agda and not only numerically.
6. Link to the quiver (hypothesis; tautological in part). Read the vertex
   label as the dimension of the invariants `V^H` of the subgroup
   `H = ⟨1 + f_1, ..., 1 + f_m⟩ ⊂ GL_n`: then `V^{⟨1 + f⟩} = ker f`
   (`ν1 = 8` in H15) and `V^{⟨1 + f, 1 + g⟩} = ker f ∩ ker g` (`ν2 = 4`), so
   the chain `16 > 8 > 4` of H15 is the chain of fixed-point dimensions of
   `1 ⊂ ⟨1+f⟩ ⊂ ⟨1+f, 1+g⟩`. This holds for every seed (it is `(1 + f) x = x`
   iff `f x = 0`), including those where the group is not a `p`-group, so it
   adds no information about Heisenberg; whether it is the right reading of
   `kernel-dim` for the Agda quiver is a question for the author.

Not claimed. Nothing about `H_3(F_p)` itself is formalized in Agda in this
repository yet; the pilot facts above are numerical. Nothing here concerns
the readings I2 and I3 of `Pair`. The statement that the group is the full
`H_3(F_p)` rests on the order `p³` and the explicit isomorphism in the
checked cases, not on a general proof.

## Not pursuing

Went looking for a literature connection between Cayley-Dickson
zero-divisor combinatorics and the Butcher group / Connes-Kreimer Hopf
algebra of rooted trees. Found none -- the two areas (real
zero-divisor/Stiefel-manifold algebra vs. rooted-tree renormalization
combinatorics) appear to be genuinely separate in the literature. Not
carrying this one forward.
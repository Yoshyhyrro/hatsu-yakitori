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

## H6 — Doubling at k=5, and the still-open cross-block pattern (open)

Extending the same pair-seed scan to k=5 (32-dim, 496 pairs, ~28s in
SymPy) shows the k=4 structure survives *inside* each 16-dim half, but
genuinely new structure appears *between* the halves. Overall: 294 of
the 496 pairs are zero divisors, with nullity now taking three
different values (4, 8, 12) instead of k=4's single value.

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

The 256 cross pairs (`i < 16 <= j`) are the genuinely new territory:
210 of them are zero divisors. Splitting further by 8-index quadrant
(`0..7`, `8..15`, `16..23`, `24..31`) shows real structure --
quadrants `(0,2)` and `(1,3)` (42 and 56 zero divisors out of 64 pairs
respectively) have a single nullity value (12) among their zero
divisors, while `(0,3)` and `(1,2)` (56 zero divisors out of 64 pairs,
each) are mixed: 14 pairs at nullity 12, 42 at nullity 4, in both --
but no closed-form rule has been found yet, unlike k=4's clean
`j != i+8`. Left as a numeric lead, not a hypothesis: the
quadrant-mixed cases are the place to look next, probably against
Moreno's actual classification of sedenion-pair zero divisors rather
than by guessing from this table alone.

## Not pursuing

Went looking for a literature connection between Cayley-Dickson
zero-divisor combinatorics and the Butcher group / Connes-Kreimer Hopf
algebra of rooted trees. Found none -- the two areas (real
zero-divisor/Stiefel-manifold algebra vs. rooted-tree renormalization
combinatorics) appear to be genuinely separate in the literature. Not
carrying this one forward.
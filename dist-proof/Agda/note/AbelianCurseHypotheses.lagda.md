# Abelian Curse Hypotheses

Exploratory scratchpad for the "Abelian Curse" working hypothesis. The
most defensible reading found so far, arrived at only after trying
several settings below, is that the coarse map

```
T = U : X_structured -> X_underlying
```

is specifically a *forgetful/abelianization* functor: `X_structured` is
a genuinely noncommutative object (a group, an associative or Lie
algebra), `X_underlying` is its abelianization (`G / [G,G]`, or the
degree/depth-one part of a graded Lie algebra), and `U` is the quotient
map. The question is whether `U` provably loses information -- whether
there exist `x != y` with `U(x) = U(y)` -- and, if so, whether a second
map `S` recovers exactly what `U` does not, no more and no less. The
shape of a single instance is recorded, independent of the setting, as
`Algebra.Separates.Separates`.
`CayleyDicksonQuiver.AbelianCurse.SecondOperator` is the stub for
stating instances against that shape; nothing is proved there yet.

Six settings have been tried. Two (AC2, AC3) fit the abelianization
reading directly, and AC3 now has a complete, provable answer rather
than an open search. Four more (AC1, AC3b, AC4, AC5) were investigated
under the same working hypothesis, on the strength of a superficial
resemblance ("a coarse invariant collides some objects; a finer one
separates some of them back out") -- but on inspection none of the
four has a noncommutative `X_structured` being abelianized at all, so
none is filed here as a confirmed instance of the Abelian Curse
specifically, even though the
underlying computations are correct and are kept below for the record.
None of the four is tied to Cayley-Dickson zero divisors directly; that
connection, if any, is still open.

**Status: exploratory notes, not proofs.** The Agda files this note
points to under `CayleyDicksonQuiver.AbelianCurse/` are, as of this
writing, `--safe`-clean and hole-free on their own terms -- but that is
because each proves only a small, concrete instance, not a general
theorem. This file is prose plus pointers, not itself meant to
type-check, and CI never touches it. Do not import anything under
`CayleyDicksonQuiver.AbelianCurse` from `Everything.agda` while the
direction is still being chosen.

## Confirmed instances

### AC2 — Depth-two canonical generators, Ihara bracket, period polynomials

Following Sakugawa, "On the Galois action on the fundamental group of
$\mathbb{P}^1 \setminus \{0, \pm 1, \infty\}$ ..." (arXiv:2402.13406),
Theorem 4.2 (after Brown, "Depth-graded motivic multiple zeta values",
Definition 7.1): the canonical depth-one generators
`sigma m = ad(e0)^(2m)(e1)` of the depth-graded motivic Lie algebra
`d` satisfy a linear relation under the Ihara bracket exactly when the
matching combination of `x^(2i)y^(2j) - y^(2i)x^(2j)` is a restricted
even period polynomial, i.e. satisfies equations (4.2)-(4.5) of that
paper.

`X_structured = d`, the full depth-graded Lie algebra; `X_underlying =
d^{ab} = d / [d,d]`, which is exactly its depth-one part -- the
`sigma m` freely, with no relations among them at depth one. `[d,d]`
is depth two and beyond: precisely where relations like the one below
live, invisible to `U` (looking only at depth one) by construction.

Ported in full to `CayleyDicksonQuiver.AbelianCurse.{FreeLie,
IharaBracket, PeriodPolynomial, DepthTwoRelations}`; all four modules
are `--safe`-clean with no holes or postulates. Concrete facts checked
by Agda's own reduction (`refl`), not asserted:

- `FreeLie.jacobi-1-2-3`, `jacobi-1-2-4`: the Jacobiator vanishes on
  `(sigma 1, sigma 2, sigma 3)` and `(sigma 1, sigma 2, sigma 4)`
  (spot checks, not a general proof of the Jacobi identity).
- `IharaBracket.weight-12-relation`: at weight 12 (`m = 5`, the only
  pairs being `(1,4)` and `(2,3)`), `{sigma 1, sigma 4} - 3*{sigma 2,
  sigma 3} = 0`. This term-count grows to a few hundred words before
  cancelling to `[]`; the check still completes in well under a
  minute.
- `PeriodPolynomial.positive-4-2`, `even-4-3`, `antisymmetric-4-4`,
  `three-term-vanishes-4-5`: the matching combination
  `x^2 y^8 - y^2 x^8 - 3(x^4 y^6 - y^4 x^6)` satisfies all four defining
  equations.

A first check of *how far* `U` loses information -- contrasting with
`SO(V)`'s derived series, which reaches the trivial subgroup after
exactly two steps (AC3 above) -- iterates the Ihara bracket against a
fixed generator, `x_{k+1} = {sigma 1, x_k}`, starting from
`x_0 = sigma 2`, outside Agda:

| k | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| terms in `x_k` | 18 | 148 | 890 | 6109 | 37716 |

Not zero at any `k` up to 5 checked this way, growing roughly sevenfold
each step; the same iteration with the plain Lie bracket in place of
the Ihara bracket (no derivation correction) also stays nonzero through
`k = 5`, growing roughly threefold each step instead. Neither
comparison is a proof that the sequence never reaches zero, only that
it does not do so this early, in contrast to `SO(V)`'s derived series,
which is already trivial by `k = 2`. `IharaBracket.ihara-iterate-2-
nonzero` confirms `x_2 != []` (148 terms) by Agda's own reduction,
`--safe`; `x_3` onward (890 terms and growing sevenfold) was not
attempted by `refl` here, since nothing in this file's approach scales
to it -- a general nonvanishing argument, not a per-`k` computation,
would be needed to go further.

This is the cleanest instance found so far on the Lie-algebra side: the
weight-12 relation space is one-dimensional, matching `dim S_12 = 1`
(the cusp form `Delta`), though that dimension count itself is cited,
not computed here. What is *not* attempted: the general
antisymmetry/Jacobi identity for arbitrary `sigma m`, `sigma n`;
Theorem 4.2's "iff" itself, which rests on Brown's faithfulness theorem
for the depth-graded motivic Lie algebra; and any general dimension
formula.

### AC6 — Buium's arithmetic derivation recovers what mod-ℓ reduction of a Galois representation loses

Two independent, numerically verified instances, neither yet ported to
Agda (see "Not yet formalized" below for exactly why).

**Instance 1 (modular forms mod 691).** Ramanujan's congruence
`tau(n) ≡ sigma_11(n) (mod 691)`: at `n = 2`, `tau(2) = -24` and
`sigma_11(2) = 2049` collide mod `691` (`667 = 667`). Buium's
arithmetic `p`-derivation `delta_p(x) = (x - x^p)/p` (an integer,
since `x ≡ x^p (mod p)` by Fermat) separates them exactly:
`delta_691(-24) - delta_691(2049) ≡ 688 (mod 691)`, matching
`(x - y)/691 ≡ 688 (mod 691)` on the nose -- not approximately. This is
not a coincidence of these two numbers: for any `x ≡ y (mod p)`,
writing `x = y + kp`, the binomial theorem gives `x^p ≡ y^p (mod p^2)`,
hence `delta_p(x) - delta_p(y) = k - (x^p - y^p)/p ≡ k = (x-y)/p
(mod p)` in general -- checked here for one pair, but a short hand
proof, not merely this one instance.

**Instance 2 (the elliptic curve 11a1, Mazur's congruence at ℓ = 5).**
`E = 11a1` (`y^2 + y = x^3 - x^2 - 10x - 20`) has a rational 5-isogeny,
so its mod-5 Galois representation is reducible: `a_p ≡ p + 1 (mod 5)`
for every good prime `p`. Checked here by brute-force point counting
over `F_p` from scratch (not from a table) for `p = 2,3,7,13,17,19`:
every single one collides mod 5, and `delta_5(a_p) - delta_5(p+1)`
recovers `(a_p - (p+1))/5 mod 5` exactly, every time, no exceptions.

**Why this plausibly extends the Abelian Curse, and why that is less
certain than for AC3.** `rho : Gal(Qbar/Q) -> GL_2(Z_5)`, the 5-adic
representation attached to `E`, has an open (hence non-abelian, by
Serre's open image theorem for non-CM curves) image in general; its
reduction mod 5 is, for this particular curve, reducible -- upper
triangular, with the trace alone agreeing with the reducible
Eisenstein-type representation `p + 1`. `delta_5` recovers exactly the
`(a_p - (p+1))/5` term that the trace mod 5 cannot see. Unlike AC3,
though, what is precisely lost here is not a commutator subgroup under
`G -> G^{ab}`: it is an extension class in `H^1(Gal, chi_1 chi_2^{-1})`
lost under semisimplification (forgetting whether the short exact
sequence of mod-5 Galois modules splits), which is a cousin of
abelianization -- the tangent space of Mazur's deformation theory is
`H^1(Gal, Ad(rhobar))`, a cohomology group, not literally a `G^{ab}`
-- not a confirmed instance of the same precise shape as AC2 and AC3
without more thought. Recorded here rather than under "shape-alike"
because the resemblance is closer and better-grounded than AC1/AC3b/
AC4/AC5, but the classification is left open rather than asserted.

**Not yet formalized in Agda, and specifically why:** the general
`delta_p` identity above needs a binomial-theorem argument
(`x ≡ y (mod p) -> x^p ≡ y^p (mod p^2)`) that has not been written;
the concrete `p = 691` instance needs `2049^691` (around 2280 digits)
to reduce in reasonable time by `refl`, not yet attempted or timed;
and the elliptic-curve instance needs finite-field and
Weierstrass-point-counting infrastructure that does not exist anywhere
in this codebase, a substantially larger undertaking than a single
file. Python's `fractions.Fraction` (exact, not floating point) was
used throughout instead.

### AC3 — Spinor norm as a second operator on SO(V) (resolved for this example)

`A = diag(1,1,7)` over `Q`, with reflections `R1, R2, R3, R12` along
`e1, e2, e3, e1+e2`. `X_structured = SO(V)`, the subgroup of `O(V)`
generated by even-length words in these reflections; `X_underlying =
SO(V)^{ab}`. `T = det` factors through `U` trivially (`{+-1}` is
abelian), but is constant on all of `SO(V)`, so it says nothing here by
itself. `S = sn`, the spinor norm valued in the square classes of
`Q*`, also factors through `U` (`Q*/(Q*)^2` is abelian) but is not
constant: `id` and `R1 * R12` have the same determinant (`+1`) but
different spinor norms (`1` and `2`) -- a first, hand-checked instance
of `Separates`.

Recomputed by exact rational arithmetic outside Agda (`fractions.
Fraction`, trial-division square-class factoring); Sage was not
available in this sandbox, so the original script's sections 9-11
(Sage's `Genus`, `local_symbols`, `spinor_generators`,
`automorphous_numbers`) are neither reproduced nor claimed here.

Exhaustively searching words in `{R1, R2, R3, R12}` (not a sample: the
breadth-first search saturates -- zero new matrices -- at word length
5) finds `<R1, R2, R3, R12>` is *finite*, of order 16. Restricting to
`SO(V)` (the 8 elements with `det = 1`) and grouping by spinor norm
alone:

| sn | fibre size | a shortest representative pair |
|----|------------|----------------------------------|
| 1  | 2          | `id`, `R1 R2`                     |
| 2  | 2          | `R1 R12`, `R2 R12`                |
| 7  | 2          | `R1 R3`, `R2 R3`                  |
| 14 | 2          | `R3 R12`, `[R1,R2,R3,R12]`         |

`sn` strictly refines `det` (which puts all 8 elements of `SO(V)` in
one class) into 4 classes, and every one of those classes has exactly 2
elements -- not merely "at most 2" from a search that might have missed
elements, since the enumeration is exhaustive (the search space is the
whole, already-closed, order-16 group). The nontrivial element of the
`sn = 1` fibre is `R1 * R2 = diag(-1,-1,1)`, an order-2 rotation, not
`-I`. Over the full 16-element group (both parities together), each
`sn` class has exactly 4 elements, split evenly 2-2 between `det = 1`
and `det = -1` -- on this example, `det` and `sn` look independent.
`sn` restricted to `SO(V)` was checked (numerically, over 30 random
pairs of the 8 elements, not proved) to respect the group law.

**This is now a closed question, not an open one.** The commutator
subgroup `[SO(V),SO(V)]` -- all pairwise commutators of the 8 known
elements, closed under multiplication -- has order 2 and equals
`{id, R1*R2}` exactly: the same two elements as the `sn = 1` fibre, not
merely a subgroup of matching size found separately. So
`SO(V)^{ab} = SO(V)/[SO(V),SO(V)]` has order exactly 4, and `sn`
realizes it exactly -- a bijection between the 4 `sn`-classes and the 4
elements of `SO(V)^{ab}`. No third invariant could ever separate `id`
from `R1*R2`: any homomorphism out of `SO(V)` into an abelian group
kills `[SO(V),SO(V)]` by definition, and `R1*R2` generates exactly that
subgroup. `U : SO(V) -> SO(V)^{ab}` provably loses the distinction
between `id` and `R1*R2` -- they differ by an actual commutator, not by
an accident of this search -- and `sn` provably recovers everything else
`U` alone does not already determine. Whether this same exact match
(`ker` of the finer invariant `=` commutator subgroup, on the nose)
happens for other groups or other choices of `S` is open; nothing here
establishes it beyond this one group. Not attempted: any Agda
formalization of `Q` or 3x3 matrices; anything depending on Sage's
genus layer.

The commutator computation above is confirmed a second time, by Agda's
own reduction rather than by the numeric route just described.
`CayleyDicksonQuiver.AbelianCurse.FiniteGroupTable` is a generic frame
-- a finite group given only by a multiplication table (elements
`0,...,n-1`), with the derived series and lower central series computed
by iterating a commutator-then-closure step a fixed number of times,
independent of whether either series happens to terminate.
`CayleyDicksonQuiver.AbelianCurse.SOReflectionGroup` instantiates it
with `SO(V)`'s own 8x8 table (asserted, not derived from any
construction of `O(V)` in Agda) and checks, by `refl`: the derived
series reaches `{id, R1*R2}` after one step and the trivial subgroup
after two, and does not shrink further at a third; the lower central
series agrees with the derived series at both steps computed. Both
`--safe`, no holes.

#### AC3a — Local (GF(2)) reformulation of the spinor norm

`Q*/(Q*)^2` is the product of a sign bit and, for each prime `p`, the
parity of the `p`-adic valuation. Writing each square class this way --
a fixed list of primes, one GF(2) bit per prime, plus a sign bit --
turns "which classes does `sn` reach" into a linear-algebra question:
because `sn` is a group homomorphism into an `F_2`-vector space, the
image of `sn` on a subgroup generated by reflections along
`v_1, ..., v_r` is *exactly* the GF(2)-span of the vectors
`local-signature(q(v_1)), ..., local-signature(q(v_r))` -- not merely
contained in it, and not merely containing it -- of size `2^rank`,
whichever generators are chosen. Against AC3's own generators
(`q(e1)=1, q(e2)=1, q(e3)=7, q(e12)=2`, primes `2,3,5,7,11`) this
predicts `2^2 = 4` reachable classes from the rank alone; this is
exactly the `{1,2,7,14}` found earlier by exhaustive search of the
order-16 group, but obtained here without enumerating the group at all.
(For this particular positive-definite form every generator has
`q(v) > 0`, so the sign bit is constant and carries no information; it
would matter for an indefinite form.)

This makes the "how many classes are reachable" half of AC3 scale
politely (linear algebra over GF(2), polynomial in the number of primes
and generators, no combinatorial search). It does *not* by itself give
the fibre sizes computed above: by the first isomorphism theorem,
`|SO(V)| = |image(sn)| * |ker(sn|_SO(V))|` exactly, so knowing the
image's size (now cheap) still leaves `|SO(V)|` itself -- the actual
order of the reflection group -- as the unresolved cost, obtained above
only by exhaustive enumeration (and, now, by the exact commutator-
subgroup computation in AC3, which needed that enumeration as input).
Separately: representing `sn`'s target as a GF(2) vector of supplied
valuation parities, rather than a signed squarefree integer requiring
factorization, would also be the lighter choice if this is ever ported
to Agda -- no factorization algorithm needed, just XOR on `List Bool`.

## Shape-alike, not confirmed instances

The two settings below were investigated as candidate instances of the
Abelian Curse and are computationally sound, but neither exhibits a
noncommutative `X_structured` being abelianized by `U`. They are kept
here as the record of that check, not as further examples of the
phenomenon above.

### AC1 — MZV depth-5 double shuffle relations

Computed in `CayleyDicksonQuiver.MZV.DepthGraded`: for admissible index
words of depth 5 and weight `W`, `relation-matrix W` collects the
depth-5 double shuffle relations `shuffle a b - stuffle a b` over all
admissible pairs `(a,b)` with `depth a + depth b = 5`. Row reduction
itself is not done in Agda. The rank and nullity below are exact, not
estimated or merely bounded -- they come from exact rational (not
floating-point) Gaussian elimination, carried out outside Agda since
Sage's `matrix(QQ, ...)` is unavailable in this sandbox:

| W  | admissible words (columns) | relation rows | rank | nullity |
|----|-----------------------------|----------------|------|---------|
| 7  | 5                           | 4              | 2    | 3       |
| 8  | 15                          | 20             | 10   | 5       |
| 9  | 35                          | 60             | 29   | 6       |
| 10 | 70                          | 140            | 61   | 9       |
| 11 | 126                         | 280            | 112  | 14      |
| 12 | 210                         | 504            | 190  | 20      |

The nullity is exactly the dimension of index-word combinations the
admissible-pair relations leave undetermined, not an upper bound on
that dimension -- but neither `shuffle` nor `stuffle` is a
noncommutative product (both are commutative multiplications of formal
sums of real numbers), so there is no group or algebra here being
abelianized, and no `U` in the sense above. This nullity does not match
Broadhurst-Kreimer's conjectural depth-graded dimension (0, for every
one of these (weight, depth-5) pairs, by the parity theorem) --
expected rather than contradictory, since admissible-word relations
alone omit the `zeta(1)`-regularized ones. Whether the nullity computed
this way carries any meaning at all, Abelian-Curse-shaped or otherwise,
is open; not pursued further.

### AC3b — p-adic genus symbols and the oddity formula

A different, more classical instance of local data reconstructing a
global invariant exactly rather than merely bounding it -- but a
local-global (Hasse principle) statement about a single quadratic form,
not a noncommutative object being abelianized, so also not filed as an
Abelian Curse instance. For a symmetric integer matrix `A`,
Conway-Sloane's Jordan splitting at each prime `p` (Sage:
`p_adic_symbol` / `two_adic_symbol`) assigns a local genus symbol, whose
`excess` (called the oddity at `p = 2`) satisfies

```
(r - s) - excess(2) + sum_{p odd} excess(p) ≡ 0 (mod 8)
```

for any symmetric matrix admitting a genus, where `(r,s)` is the
signature -- this is exactly the identity Sage's own `is_GlobalGenus`
checks, not a heuristic approximation of it. The sign is not uniform:
`excess(2)` is subtracted while odd primes are added, so "the sum of
all local excess equals the signature" is not the identity and does
not hold in general.

`p_adic_symbol`, `two_adic_symbol`, `split_odd`, `trace_diag_mod_8`,
and `excess` were ported line-for-line from Sage's
`sage/quadratic_forms/genera/genus.py` (fetched from the `sagemath/
sage` repository, since Sage itself is unavailable in this sandbox)
rather than reconstructed from memory, and checked against the three
worked examples already present as doctests in that file (`diag(1,3,
-3)`, `2*diag(1,3,-3)`, `2*diag(1,2,3,4)`, each at `p = 2,3,5,7,11`: 15
values total) -- all 15 match exactly, not approximately. One porting
error was caught this way: the recursive Jordan-splitting step must
shift its own current-level block by the same valuation as the
recursive part, not the recursive part alone; the mismatch is invisible
whenever `m0 = 0` at the outer call or the recursion has depth 1, which
is why the smaller doctest examples did not expose it and `diag(1,2,3,
4)` at `p = 3,5,7,11` did not either -- only `p = 2` on the full
rank-4 example forced a recursion deep enough to matter.

For `A = 2*diag(1,2,3,4)`, `primes = [2,3,5,7,11]`:

| p | 2 | 3 | 5 | 7 | 11 |
|---|---|---|---|---|----|
| excess | 2 | 6 | 0 | 0 | 0 |

The signature is `(4,0)`. `(4-0) - 2 + (6+0+0+0) = 8 ≡ 0 (mod 8)`: the
identity holds exactly for this matrix, which confirms -- rather than
merely suggests -- that it carries a consistent global genus.

A deliberately mismatched signature breaks the identity exactly where
it should, which is what distinguishes a genuine consistency check from
a tautology that happens to hold. Supplying the same local data with
the wrong signature `(r,s) = (3,1)` (the matrix is positive definite,
so the only correct signature is `(4,0)`) gives
`L = (3-1) - 2 + 6 = 6`, and `6 mod 8 = 6 != 0`: not a different residue
close to 0, but a definite failure of the one congruence the correct
signature satisfies exactly. The local excess data does not change;
only the (wrong) global signature fed into it does, and the identity
notices.

Not attempted: the remaining `is_GlobalGenus` conditions (the per-prime
Hilbert-symbol-style checks `a.kronecker(p) == b`), `is_2_adic_genus`,
and any link back to AC3's own `diag(1,1,7)`. AC3 and AC3b use
different quadratic forms and have not been connected to each other --
and, per the reclassification above, may not be connectable in the
sense originally hoped for, since only one of the two is genuinely an
abelianization story.

### AC4 — FMZV derivation relations (Murahara): no abelianization found

Following Murahara, "Derivation relations for finite multiple zeta
values" (arXiv:1512.08696): the Ihara-Kaneko-Zagier derivation `∂_l` on
`Q<x,y>` (`∂_l(x) = x z^{l-1} y`, `∂_l(y) = -x z^{l-1} y`, `z = x+y`,
extended by the Leibniz rule) and the duality automorphism `φ`
(`φ(x) = z`, `φ(y) = -y`). Classically `Z(∂_l(w)) = 0`; for finite
multiple zeta values the same derivation instead satisfies
`Z_F(∂_l(w)) = -Z_F(z^{l-1}yw)` (Murahara's Theorem 2.1, generalizing a
conjecture of Saito-Wakabayashi), where `F` is either of the two finite
multiple zeta value targets `A` or `S`.

Ported to `CayleyDicksonQuiver.AbelianCurse.FMZVDerivation`: `∂_l` and
`φ` are ordinary, computable functions on `NCPoly` (reusing `FreeLie`'s
representation), checked against the paper's own Example 2.3
(`l = 3, w = xy`) exactly by `refl`, along with `∂_l(z) = 0` and the
Leibniz rule (spot-checked on random pairs). This project's `.agda-lib`
sets `--safe` for every file, which disallows `postulate` outright; the
three genuinely FMZV-specific facts the base case needs (`ζ_F(l) = 0`
for `l > 1`; `Z_F` is ℤ-linear; `Z_F ∘ φ = Z_F`) are instead taken as
explicit parameters of a module (`BaseCase`), so what is proved is a
conditional statement -- "if some `F` and `Z_F` satisfy these laws, the
base case holds" -- rather than an assertion that they do. The base
case `Z_F(∂_l(1)) = -Z_F(z^{l-1}y)` is derived from these three
hypotheses for `l = 2,3,4,5`; the one fact not derived in general is
`φ(z_l) = -(z^{l-1}y)` itself, checked by `refl` for the same four
values rather than by induction on `l`.

Whether this is a genuine instance of the Abelian Curse -- is there a
noncommutative `X_structured` that `∂_l`/`φ` make visible, which some
`U` then abelianizes -- was checked directly rather than assumed.
Outside Agda, `[∂_l, ∂_m]` was computed as an operator
(`∂_l ∘ ∂_m - ∂_m ∘ ∂_l`) against 150 random words (lengths 2-6,
`l, m` ranging over `2..7`, `l != m`), plus `z^4` and a two-term
polynomial: every commutator computed to exactly zero, no exceptions.
This is evidence, not a proof (finitely many cases, no induction), but
it points the same way as AC1 and AC3b: the natural candidate
structure here is already abelian, so there is nothing for an
abelianization functor to forget. Filed as shape-alike, not confirmed.

Not attempted: a general-`l` proof of `φ(z_l) = -(z^{l-1}y)` (would
need `nc-mul` associativity and identity laws for arbitrary, not
concrete, `NCPoly` arguments -- spot-checked successfully for several
small concrete triples in `--safe`, but not proved in general;
attempting this through `Algebra.WeakHopf` was considered and set
aside, since that file's `IsAlgebra` already requires full
associativity as a field -- going through it adds obligations rather
than removing the one at hand); the general induction for `s >= 1`
(arbitrary `w`, not just `w = 1`) in Murahara's Theorem 2.1; and any
check of the commutativity finding against the *general* family of
`a(f)`-style derivations from AC2 (parametrized by an arbitrary `f`,
not just the fixed one-parameter `∂_l` family), which is the most
likely place non-abelian structure would reappear if it exists at all
in this setting.

A separate, unrelated paper was also looked at during this line of
exploration -- Nagaoka-Takemori, "Notes on theta series for Niemeier
lattices" (arXiv:1504.06715) -- for its theta operator `Θ` and "mod p
singular modular forms" (where `Θ(F) ≡ 0 (mod p)`, and distinct
Niemeier lattices' theta series literally coincide mod a prime:
`θ_α ≡ θ_ω`, `θ_δ ≡ θ_ψ (mod 23)` in the paper's Theorem 7). This has
the same surface shape as the rest of this section (a coarse, lossy
reduction -- here, mod `p` -- collides genuinely distinct objects), but
like AC3b it is a mod-`p` / local-global phenomenon about lattices and
modular forms, not a group or algebra being abelianized, and no second
operator separating `α` from `ω` is proposed in the paper or attempted
here. Noted for the record; not explored computationally.

### AC4 addendum — the Kaneko-Zagier conjecture is a different shape entirely

While reading background for AC4 (Bachmann, "Multiple Zeta Values",
lecture notes, Nagoya 2025), two things were confirmed and one was
explicitly ruled out, rather than merely left unexplored.

Confirmed, independently of Murahara's paper: `ζ_A(k) = 0` for every
single-entry index `k != 0` (Bachmann, Proposition 1.27) -- the same
fact taken as the hypothesis `ZF-depth-one-vanishes` in
`FMZVDerivation.agda`, now corroborated by a second source rather than
resting on one paper alone.

Distinguished, to avoid conflating them later: the duality used in AC4
(`φ`, `φ(x) = z`, `φ(y) = -y`, an algebra automorphism specific to
finite multiple zeta values, Murahara's Theorem 1.3) is a different map
from the duality for ordinary multiple zeta values in Bachmann's notes
(`τ`, interchanging `x` and `y`, an *anti*-automorphism,
`τ(uw) = τ(w)τ(u)`, arising from reversing an iterated integral).
`FMZVDerivation.agda` already uses `φ` correctly for its stated
purpose; this is a note for future reading, not a correction to it.

Ruled out, not merely set aside: the Kaneko-Zagier conjecture
(Bachmann, Conjecture 1.38),

```
φ_KZ : Z^A -> Z/π²Z,   ζ_A(k) |-> ζ_S(k)
```

conjectures an isomorphism of Q-algebras between the finite multiple
zeta values and the symmetric multiple zeta values (ordinary multiple
zeta values, taken modulo `π²`). This was raised as a candidate
mechanism for connecting the mod-`p` and real-analytic worlds that
motivated AC4 and AC5 in the first place. It is not filed even as
shape-alike, unlike AC1, AC3b, AC4 and AC5: those all have a coarse map
that loses information, with a subject and an object
(`X_structured -> X_underlying`). Kaneko-Zagier instead conjectures an
isomorphism between two algebras built by *different, independent*
constructions -- one from reduction mod `p`, one from a real-analytic
limit modulo `π²` -- so there is no map doing any forgetting here, and
no abelianization-shaped question to ask of it. Recorded so this
distinction is not re-discovered later; not pursued further under this
heading.

### AC5 — Finite MZVs as sections, ultraproducts as stalks (non-constructive)

A follow-on question about AC4's target ring itself, not about `∂_l`
or `φ`. `𝒜 = (∏_p F_p)/(⊕_p F_p)` is described directly in the finite-
multiple-zeta-value literature (e.g. arXiv:2310.06809) as "the ring of
integers modulo infinitely large primes" -- a reduced ring, not a
domain, obtained by quotienting the product of all `F_p` by the ideal
of finitely-supported sequences (the Fréchet filter on the primes), not
by a maximal ideal. Its maximal ideal spectrum is, by a standard fact
of commutative algebra for a reduced product of this shape, in
bijection with the nonprincipal ultrafilters on the primes (the
Stone-Čech remainder `βℕ \ ℕ`); choosing one such ultrafilter `U` gives
a forgetful map

```
U_forgetful : 𝒜 -> 𝒜 / 𝔪_U
```

onto the genuine ultraproduct `(∏_p F_p)/U`, a field, where Łoś's
theorem holds (unlike `𝒜` itself, which is not a domain and satisfies
no such transfer principle). `X_structured = 𝒜` (no ultrafilter
chosen); `X_underlying = 𝒜/𝔪_U` (one specific ultraproduct, once `U`
is chosen); `U_forgetful` is evaluation at the point of `Spec 𝒜` that
`U` picks out. What is lost is concrete and exact, not vague: for a set
of primes `S` that is neither finite nor cofinite, an element supported
exactly on `S` lands in `𝔪_U` or does not, depending on whether
`S ∈ U` -- a question `𝒜` itself does not decide, and different choices
of `U` need not agree.

`𝒜` and every `𝒜/𝔪_U` are already commutative rings, so, as with AC3b,
this is filed as shape-alike rather than a confirmed instance of the
Abelian Curse -- it belongs with AC3b's family (sections over an open
set versus the stalk or residue field at a point, in the scheme-
theoretic sense) rather than with AC2 or AC3's group- or Lie-algebra-
abelianization family.

Unlike AC1 through AC4, this one is not computationally explorable even
in principle, not merely unexplored so far: a nonprincipal ultrafilter
on an infinite set needs the axiom of choice (equivalently Zorn's
lemma applied to the Fréchet filter) to exist, and no nonprincipal
ultrafilter has ever been exhibited by an explicit construction -- a
standard, well-known fact, not a gap specific to this project. Every
other entry in this note, confirmed or not, was at least checkable by
computation; this one cannot be, by anyone, ever. Recorded for
completeness, in service of ruling settings out as much as finding
ones that fit; not pursued further.
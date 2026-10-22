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
Facts that hold uniformly across instances, and only those, are
collected in `CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas`.

Eight settings have been tried. Two (AC2, AC3) fit the abelianization
reading directly, and AC3 now has a complete, provable answer rather
than an open search. A third and a fourth (AC6, AC7) are cousins
rather than instances: their Agda-checked cores (`Ext1Extraction`,
`Ext1Torsion`, with the general lemmas in `SecondOperatorLemmas`) have
the same coarse-map / second-operator shape, but what is lost is a
cokernel of a coboundary map (an additive, Ext-type loss), not a
commutator subgroup; AC7 is AC6 with genuine torsion. Four more
(AC1, AC3b, AC4, AC5) were investigated under the same working
hypothesis, on the strength of a superficial
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
(the cusp form `Delta`), though that dimension count itself is cited
here; the probe below computes it outside Agda for weights up to 38. What is *not* attempted: the general
antisymmetry/Jacobi identity for arbitrary `sigma m`, `sigma n`;
Theorem 4.2's "iff" itself, which rests on Brown's faithfulness theorem
for the depth-graded motivic Lie algebra; and any general dimension
formula.

#### AC2 probe -- the depth-two relations as a central extension (outside Agda)

Truncate `d` at depth two: `d_1` is spanned by the `sigma m` (free, no
relations at depth one), `d_2` by the brackets `{sigma m, sigma n}`, and
`d / d_{>=3}` is a 2-step nilpotent central extension
`0 -> d_2 -> d/d_{>=3} -> d_1 -> 0`. The *universal* such extension is
the free one, with centre `Λ²(d_1)`; the Ihara bracket gives a surjection
`π : Λ²(d_1) -> d_2`, and its kernel `R` is the space of depth-two
relations (the weight-12 relation spans `R` at weight 12). So `d/d_{>=3}`
is a quotient of the free Heisenberg-type algebra, and `CliffordContraction`
at `N = 0` is the rank-2 case of that free object: in this setting
"the Clifford/Heisenberg algebra covers the AC object" is the right way
round.

Computed with the definitions of `IharaBracket` (`a(f)(e0) = [e0,f]`,
`a(f)(e1) = 0`, `{f,g} = [f,g] + a(f)g - a(g)f`, `sigma m =
ad(e0)^(2m) e1`), over `ℚ`, by exact rank of the span of the
`{sigma m, sigma n}`, `m < n`, in each weight `w = 2(m+n)+2`
(sanity: the weight-12 relation holds; `[a(f),a(g)] = a({f,g})` on
`e0, e1`):

| w | 8 | 10 | 12 | 14 | 16 | 18 | 20 | 22 | 24 | 26 | 28 | 30 | 32 | 34 | 36 | 38 |
|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| pairs | 1 | 1 | 2 | 2 | 3 | 3 | 4 | 4 | 5 | 5 | 6 | 6 | 7 | 7 | 8 | 8 |
| rank `d_2(w)` | 1 | 1 | 1 | 2 | 2 | 2 | 3 | 3 | 3 | 4 | 4 | 4 | 5 | 5 | 5 | 6 |
| `dim R(w)` | 0 | 0 | 1 | 0 | 1 | 1 | 1 | 1 | 2 | 1 | 2 | 2 | 2 | 2 | 3 | 2 |
| `dim S_w` | 0 | 0 | 1 | 0 | 1 | 1 | 1 | 1 | 2 | 1 | 2 | 2 | 2 | 2 | 3 | 2 |

`dim R(w) = dim S_w` in every weight listed (the Ihara-Takao / Brown
count, here computed rather than cited). Sector reading: a central
character `λ` of `Λ²(d_1)` pushes the extension out to a Heisenberg-type
extension of `d_1` with alternating form `λ ∘ {,}`; it comes from `d_2`
(is "visible" there) exactly when `λ` vanishes on `R`. At weight `w` the
visible characters form a space of dimension `rank d_2(w)`; the
`dim S_w` remaining directions of the cover's centre are the ones the
relations kill. Not attempted: any statement beyond depth two, and a
derivation of `R` rather than a count.

### AC6 — Buium's arithmetic derivation recovers what mod-ℓ reduction of a Galois representation loses

Two independent, numerically verified instances, neither yet ported to
Agda (see "Not yet formalized" below for exactly why).
The linear-algebra mechanism behind them, by contrast, is formalized
in Agda for one concrete `(A,B)` and proved for all extensions and
gauges (see the last two paragraphs on `Ext1Extraction` below).

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

**The precise mechanism this was missing is now checked, separately,
in Agda.** `CayleyDicksonQuiver.AbelianCurse.Ext1Extraction` makes the
"extension class in `H^1`, not a commutator subgroup" remark above
concrete: given Frobenius actions `A` on a sub-object and `B` on a
quotient, `Ext^1(M,N)` is the cokernel of the coboundary map
`T(X) = XB - AX` on `Hom(M,N)`, computed via a Smith normal form
`D = U T V` (the general Smith-normal-form algorithm itself is not
implemented or proved correct in Agda -- only this one `U, D, V` is
checked against `T` by `refl`). For `A = (2 1; 0 2)`, `B = (2 0; 0 2)`,
`diag D = (1,1,0,0)`: two concrete extension matrices `C1` and
`C2 = C1 +` (coboundary noise), genuinely different as matrices
(`C1 != C2`, also checked), land on the exact same class once the
first two ("pure coboundary") coordinates of `U` applied to each are
discarded and the last two (the free part of `Ext^1(M,N)`) are kept --
checked by `refl`, `--safe`, no holes. This is the same shape as AC3's
`[SO(V),SO(V)]` computation -- a coarse comparison collides two
genuinely different objects, and a second, precisely specified map
separates them again -- but for an additive (Ext-group) coarsening
rather than a multiplicative (commutator-subgroup) one. Confirmed for
this one `(A,B)`, not for Frobenius actions in general.

**Strengthened from one pair of matrices to every extension and every
gauge, for the same `(A,B)`.**
`CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas` replaces the
single `refl` comparison above with statements quantified over all
integers (`--safe`; `Ext1Extraction`, `BlindSpots` and
`SecondOperatorLemmas` type-check together under Agda 2.6.3 with
standard-library 1.7.3, and contain no postulates or holes):

- `T-computes-coboundary`: the hard-coded `T`, which was obtained by a
  computation outside Agda, is the column-major vectorization of
  `X B - A X` for *every* integer 2x2 `X`. Proved with the ring solver
  for `ℤ`, one equation per coordinate.
- `S-ext-invariant-under-all-coboundaries`: for every extension matrix
  `C` and every gauge matrix `X`,
  `extractor (C + (X B - A X)) = extractor C`.
  `C1-and-C2-agree-under-U` is now the single instance `C = C1`,
  `X = I`.
- `S-ext-complete`: the converse. If two vectors in `ℤ^4` have the
  same extractor value, then `v = w + T x`, with the explicit witness
  `x = (0, w1 - v1, 0, w3 - v3)`.
- `extractor-separates`: the extractor is not constant -- two extension
  matrices differing by 1 in the bottom-left entry get different
  values.

The second and third items together say that, for this `(A,B)`, two
extensions have the same extractor value *if and only if* they differ
by a coboundary: the extractor sees through exactly the noise and
nothing else. Before this, only one colliding pair was checked, which
does not distinguish "removes exactly the noise" from "removes the
noise and possibly more".

What this still does not establish. `A`, `B`, `U`, `D`, `V` and
`S-ext` (which hard-codes `diag D = (1,1,0,0)`) remain one fixed
instance: there is no Smith-normal-form algorithm, and no construction
of the extractor from an arbitrary `(A,B)`. The statements concern the
extractor built from this particular `U`; that `Ext^1(M,N)` is `ℤ^2`
here follows from the shape of the Smith form but is not itself stated
in Agda. A hand observation from the data, not an Agda statement:
`X B - A X = (2I - A) X` and `2I - A = (0 -1; 0 0)`, so a coboundary
only ever changes the top row of `C`, while the extractor returns
`(0, 0, C21, C22)`, the bottom row. The instance is therefore
degenerate in a useful way -- every claim above can be checked by
hand -- but it exercises neither a torsion summand (every invariant
factor is 0 or 1) nor a non-scalar `B`.

**Non-surjectivity of the noise map is necessary, not sufficient, for
a specific signal to be detected.** `CayleyDicksonQuiver.AbelianCurse.
BlindSpots` checks this precisely, reusing `Ext1Extraction`'s matrix
machinery. For the same `Ind-Rigid` as above (rank 2 of 3, so some
nonzero `S` in its left kernel exists -- "rigidity holds"): the signal
`Δ-true = (10,-5,3)` is genuinely detected (`S(Δ-true) != 0`, checked
by `refl`), but `Δ-blind = (1,1,2)` is a *blind spot* -- it satisfies
`S(Δ-blind) = 0` despite rigidity holding, because `Δ-blind` happens to
lie exactly in `Im(Ind-Rigid)` (witnessed concretely:
`Ind-Rigid * (-1,1,0) = Δ-blind`, checked by `refl`). Non-surjectivity
of `Ind-Rigid` guarantees *some* nonzero `S` exists; it does not
guarantee any particular `Δ` is outside `Im(Ind-Rigid)`, which is the
actual condition for detection. A second example (`Ind-Rank1`, rank 1
of 3, a 2-dimensional cokernel spanned by `S0, S1`) sharpens this
further: `Δ-mixed = (1,2,0)` is invisible to `S0` alone
(`S0(Δ-mixed) = 0`) but visible to `S1` (`S1(Δ-mixed) != 0`), both
checked by `refl` -- checking a single, arbitrarily chosen element of
the cokernel is not the same as checking membership in
`Im(T_noise)` itself, and can wrongly conclude a genuine signal is
noise. All six facts in this paragraph are `--safe`, no holes.
`SecondOperatorLemmas` (Lemma 2, below) later removes the dependence
on a chosen witness in the necessary direction:
`rigid-S-kills-all-noise`, `rank1-S0-kills-all-noise` and
`rank1-S1-kills-all-noise` prove `S (Ind v) = 0` for *every* `v`,
discharging the hypothesis `S^t Ind = 0` by computation. So
`Δ-blind` being invisible is an instance of a general fact --
everything in `Im(Ind-Rigid)` is invisible to `S` -- and not a
coincidence of the single witness `(-1,1,0)`. The converse is not
affected, and is false in general for a single cokernel element:
`Δ-mixed` is invisible to `S0` yet lies outside `Im(Ind-Rank1)`, as
`S1` shows.

This does not, and is not meant to, bear on the Scholze-Stix /
Mochizuki dispute over inter-universal Teichmüller theory: the
BOPS/rigidity framing that prompted this check used variable names
evoking that dispute, but nothing here is a model of Θ-links,
indeterminacies, or any other IUT-specific structure -- it is a general
fact about cokernels of linear maps, checked on two small hand-picked
examples. "BOPS" (Basic Oka Property with Surjectivity) is terminology
from Oka theory in several complex variables (Forstnerič and
collaborators); whether it is also used with this meaning in the IUT
literature was not confirmed, and the resemblance may be an imported
analogy rather than shared terminology.

**A different kind of coarse map: real-analytic rather than
coboundary.** `CayleyDicksonQuiver.AbelianCurse.RealAnalyticCurse`
checks a new pair `A = (3 1; 0 3)`, `B = (3 0; 0 3)`, chosen so that
`3I - A = (0 -1; 0 0)` is literally the same matrix as `2I - A` was for
`Ext1Extraction`'s `A` -- so its coboundary operator `T` and Smith
normal form `U, D, V` are identical to that file's and are re-used
rather than recomputed. Two real-analytic measurements of the 4x4
block matrix `(A C; 0 B)` -- its determinant, and an entrywise upper
bound -- are contrasted with the `Ext1Extraction`-style extractor:
because `A` and `B` are themselves upper triangular and the lower-left
block is zero, the full matrix is upper triangular, so its determinant
is exactly the product of the four diagonal entries of `A` and `B`
alone (`81`, checked by `refl`) -- a function that provably cannot see
`C` at all, not merely one that happens to agree on this example. The
extractor, reusing `Ext1Extraction`'s `U, D`, still separates
`C-true = (7 4; 2 5)` from its coboundary-noised version
`C-noise = (4 4; 2 5)` correctly (`refl`). The entrywise-upper-bound
measurement (the other half of the original script's "Ind_3") was not
ported: it is sensitive to `C` rather than blind to it, so it does not
illustrate the same point as the determinant and was left out rather
than checked and found not to matter.

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

### Second-operator lemmas -- what is uniform across instances

`CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas` collects facts
proved once, for arbitrary data, instead of re-checked per example. It
is not a general theory of the Abelian Curse, and it does not claim
that a single construction of `S` exists across AC2, AC3 and AC6: the
mechanism differs (a commutator subgroup for AC2 and AC3, a cokernel of
a coboundary map for AC6), and the file records what is uniform across
that difference, not a way to erase it.

- **Lemma 1** (3x3, kept as first written). For an integer 3x3 `M`, if
  `S^t M = 0` (checked via `mat-mul`) then `S` is orthogonal to `M v`
  for every `v`. One ring-solver regrouping step, after which the three
  entries of `S^t M` are rewritten to zero.
- **Lemma 2** (any sizes). `S^t (M v) = (S^t M) v`, proved by induction
  through `dot-scaleR`, `dot-addR` and `dot-addR-right`. No size
  hypothesis is needed: `dot` truncates to the common prefix, so a
  missing entry counts as zero on both sides. Corollary
  `left-kernel-annihilates-image-gen`: if every entry of `S^t M` is
  zero (`AllZero`), then `dot S (M v) = 0` for every `v`. This is the
  necessary direction only -- a left-kernel vector cannot see anything
  in `Im(M)` -- and says nothing about when a given `Δ` lies outside
  `Im(M)` (see the blind-spot discussion in AC6).
- **Applications of Lemma 2.** The three `*-kills-all-noise` results
  for `BlindSpots`; and for `Ext1Extraction`, `T-image-invisible-to-r3`
  and `-r4`, which give `S-ext-invariant`, which together with
  `T-computes-coboundary` gives
  `S-ext-invariant-under-all-coboundaries` (see AC6 above).

- **Lemma 2′** (modulo `d`). If every entry of `S^t M` is divisible by
  `d` (`AllDiv d`, the analogue of `AllZero`), then `d` divides
  `dot S (M v)` for every `v`
  (`left-kernel-mod-annihilates-image-gen`). The proof is Lemma 2's
  with signed divisibility in place of the zero cases (`∣-plus`, and
  `∣m⇒∣m*n` from the standard library). Application, in `Ext1Torsion`:
  `T′-image-even-in-e1` -- `e1^t T′ = (2,0,0,0)`, so `e1` sees the image
  of `T′` only modulo 2.

#### Index of confirmed instances

Not re-derived in `SecondOperatorLemmas`, only pointed to. (This index
used to sit at the end of that file.)

- **AC2** (`IharaBracket.weight-12-relation`). `U = 𝔡 → 𝔡^ab` (depth
  one); `S` = the Ihara bracket; loses relations in `[𝔡,𝔡]`, e.g.
  `{σ1,σ4} = 3{σ2,σ3}` at weight 12.
- **AC3** (`SOReflectionGroup.derived-1-is-id-R1R2`,
  `derived-2-is-trivial`). `U = SO(V) → SO(V)^ab`; `S` = the spinor
  norm; loses exactly `[SO(V),SO(V)] = {id, R1 R2}`, confirmed by
  computing the derived series itself, not merely checking one invariant
  against it.
- **AC6** (`Ext1Extraction.C1-and-C2-agree-under-U`; strengthened to
  every `C` and `X`). `U` = compares raw extension data; `S` = the
  `Ext^1(M,N)` class via a Smith normal form of the coboundary map;
  loses exactly the coboundary noise `{X B - A X}`, proved to be the
  whole of the noise for this `(A,B)`, in both directions.
- **AC7** (`Ext1Torsion`). AC6 with genuine torsion; the invariance half
  for the torsion coordinates is Lemma 2′.
- **AC10** (`CliffordContraction`, `CliffordAlternator`; below). A
  commutator-shaped instance with an explicit group: the loss
  `[H,H] = {1 + 2kZ}` is computed exactly, and the bracket's descent is
  the invariance half.

No single formula unifies how `S` is built across these: AC2, AC3 and
AC10 recover a multiplicative (group-commutator) invariant, AC6 and AC7
an additive (cokernel) one. Lemma 2, and Lemma 2′ for its torsion form,
are the facts common to all cokernel-shaped constructions among them
(AC6, AC7, the general diagnostic in `BlindSpots`, and the block-diagonal
annihilator structure in AC7); nothing more general than that is
claimed. For the commutator shape what is common is the descent
statement of AC10, proved there for one family of algebras only.

The split this exposes is the useful part. The *invariance* half of a
cokernel-shaped second operator -- `S` is unchanged by the noise -- is
now one reusable lemma. The *completeness* half -- `S` is unchanged
*only* by the noise, `S-ext-complete` -- is still proved per instance,
because it depends on the Smith normal form of the particular `T`:
`complete-aux` uses the explicit witness `x = (0, w1 - v1, 0, w3 - v3)`
read off from this one `U`. Whether a uniform completeness lemma exists
(for instance, for any `T` accompanied by a verified Smith form) is
open.

A further limit, visible from AC7: Lemma 2 concerns left-kernel
vectors over `ℤ` (`S^t M = 0`), and those only ever see the free
coordinates (invariant factor `0`). A torsion coordinate with invariant
factor `d` needs the weaker condition `S^t M ≡ 0 (mod d)` with `S`
valued in `ℤ/d`. Lemma 2′ now covers the invariance half of that case
(`d` divides `S^t (M v)`); the completeness half, and `S` as a class in
`ℤ/d` rather than a bare divisibility statement, remain per instance
(`Ext1Torsion`).

### AC7 -- Ext^1 with genuine torsion (`Ext1Torsion`)

Same setting as AC6, with `A = diag(1,3)` and `B = diag(3,1)` instead of
the non-semisimple `A`. For diagonal `A`, `B` the coboundary map
`T(X) = X B - A X` multiplies the coordinate `X_ij` by `b_j - a_i`, so
`T` is a direct sum of `1x1` blocks: here `T = diag(2, 0, 0, -2)` in the
order `(x11, x21, x12, x22)`, Smith form `diag D = (2, 2, 0, 0)`, and
`Ext^1 = Z/2 + Z/2 + Z + Z`. The torsion summands sit where an
eigenvalue of `B` and one of `A` are congruent mod 2 but unequal
(`3 - 1 = 2`), the free summands where they are equal (`3 - 3`,
`1 - 1`). That reading of the invariant factors as `b_j - a_i` is an
observation from this instance (and from the general diagonal
computation), not a theorem stated in Agda.

Checked in `CayleyDicksonQuiver.AbelianCurse.Ext1Torsion` (`--safe`,
type-checked under Agda 2.6.3 / standard-library 1.7.3, no postulates
or holes; a deliberately false variant of one statement was confirmed
to be rejected):

- `UTV-is-D`, together with explicit inverses of `U` and `V`
  (`U′-left-inverse` and the three analogues). `Ext1Extraction`
  checked `U T V = D` only; invertibility of its `U` and `V` is not
  checked there.
- `T′-computes-coboundary`: `T` is the vectorization of `X B - A X`
  for every integer `X`.
- `coboundary-shifts-evenly` and `tors-complete`: a coboundary shifts
  coordinates 1 and 4 by even amounts and leaves 2 and 3 alone, and
  conversely two vectors that differ so are related by a coboundary
  with the explicit witness `x = (k1, 0, 0, k2)`. This is
  `S-ext-complete` with torsion: the class of an extension vector is
  its `U`-image modulo `(2Z, 2Z, 0, 0)`.
- `C-tors-order-2` and `C-tors-nonzero`: `C-tors = (1 0; 0 0)` is not a
  coboundary (no integer is half of 1), but `2 C-tors` is (at
  `X = (1 0; 0 0)`). So the class has order exactly 2.
- `diagonals-agree` and `block-matrices-differ`: the block matrices
  `(A 0; 0 B)` and `(A C-tors; 0 B)` are different, yet have the same
  main diagonal, hence (being upper triangular) the same determinant
  `9`. The determinant is blind to the torsion class; the class is
  not. The two are inequivalent *as extensions* of `B` by `A`; the
  file does not claim they are non-isomorphic as modules.

This is the same phenomenon as AC6, not a new one: a coarse
measurement that cannot see the extension, and a second operator (the
class in `Ext^1`) that can. What is new is that the second operator is
no longer a linear functional. In AC6 the extractor reads off free
coordinates, which a left-kernel vector over `ℤ` can do (Lemma 2). Here
the free coordinates 2 and 3 are still read that way
(`T′-image-invisible-to-e2`, `-e3`), but the torsion coordinates 1 and
4 are only defined modulo 2, so the extractor needs a reduction map
`ℤ -> ℤ/2`, and no left-kernel vector over `ℤ` sees them. The
invariance/completeness split from the lemma section carries over:
invariance is the easy half, completeness depends on the Smith form.

Limits. One fixed diagonal `(A,B)`; no Smith-form algorithm; no general
statement about invariant factors of `X ↦ X B - A X`. No canonical
reduction modulo 2 is formalized, so `tors-complete` is a relation
(equality of classes), not an extractor function with decidable
equality. Moving from `Ext1Extraction`'s non-semisimple `A` to a
diagonal one makes everything split coordinate-wise, which is why it is
easy to check and why it should not be over-read: a non-semisimple
torsion instance is untested.

### Is there room for Ext^1 and Ext^2 to separate?

Short answer: not in the settings of AC6 and AC7 as they stand, by a
structural reason; yes once a second operator or `ℤ`-torsion
coefficients enter, with the diagonal toy below showing exactly what
survives.

1. **One operator, `ℤ`-free modules: `Ext^2 = 0`.** For modules `M`,
   `N` that are free over `ℤ`, with `t` acting by `B` and `A`, the
   `ℤ[t]`-module `M` has the length-one free resolution
   `0 -> ℤ[t] (x) M -> ℤ[t] (x) M -> M -> 0` (given by `t (x) 1 - 1 (x)
   t`). Applying `Hom(-, N)` gives the two-term complex
   `Hom_ℤ(M,N) --T--> Hom_ℤ(M,N)` with `T(X) = X B - A X`, hence
   `Ext^0 = ker T`, `Ext^1 = coker T` and `Ext^i = 0` for `i >= 2`.
   Since `T` is a square matrix, the free rank of `Ext^1` equals the
   rank of `Ext^0 = Hom`; the Euler characteristic is `0`. This is
   standard homological algebra and is not formalized in Agda; the two
   instances agree with it (AC6: nullity 2 and `Ext^1 ≅ ℤ^2`; AC7:
   nullity 2, free rank 2, plus `(Z/2)^2`). So there is nothing for
   `Ext^2` to carry that `Ext^1` and `Hom` do not already determine.
2. **Two commuting operators (Koszul complex): `Ext^2` appears.** With a
   second operator `s` the complex becomes
   `Hom -> Hom^2 -> Hom`. In the diagonal case it splits by coordinate,
   each with a pair `(δ1, δ2)` of eigenvalue differences. Computed by
   hand and checked numerically (with sympy, not in Agda) for several
   pairs: if `(δ1, δ2) != (0, 0)` then `H^0 = 0` and `H^1 ≅ H^2 ≅
   ℤ/gcd(δ1, δ2)`; if both vanish, the ranks are `(1, 2, 1)`. (The
   `H^2` statements were checked numerically; the `H^1` torsion follows
   from the gcd argument by hand.) So in the diagonal toy the torsion of
   `Ext^1` and `Ext^2` is tied together, and they separate only through
   their free ranks (2 versus 1). Nothing here suggests an independent
   torsion invariant in degree 2.
3. **`ℤ`-torsion coefficients.** If `M` or `N` is killed by `ℓ`, the
   one-operator resolution argument above no longer applies and
   `Ext^2_{ℤ[t]}` can be nonzero: for `𝔽_2` with `t = 0`,
   `Ext^0, Ext^1, Ext^2` have dimensions `1, 2, 1` (the Koszul complex
   of the regular sequence `(2, t)`). Standard, not formalized.
4. **Galois side (hypothesis, not tested).** The mod-`ℓ` Galois
   instances of AC6 live in the regime of item 3, and there `H^2` is the
   obstruction space, tied to `H^1` and `H^0` by the Euler
   characteristic formula, which is not `0`, unlike the toy. If `Ext^2`
   is to separate from `Ext^1` anywhere in this programme, it is there,
   or in a toy with two operators and `ℤ`-torsion coefficients; the AC6
   and AC7 toys cannot show it.

Item 2 is now stated in Agda for one coordinate and three explicit
pairs, in `KoszulToy` (AC8, below).

### AC8 -- Koszul toy, one coordinate (`KoszulToy`)

`CayleyDicksonQuiver.AbelianCurse.KoszulToy` states item 2 of the
previous section for one coordinate of the diagonal two-operator toy:
the complex `ℤ -> ℤ^2 -> ℤ` with `d0 x = (δ1 x, δ2 x)` and
`d1 (a, b) = δ2 a - δ1 b`, `H^0 = ker d0`, `H^1 = ker d1 / im d0`,
`H^2 = coker d1`. `--safe`, type-checked under Agda 2.6.3 /
standard-library 1.7.3, no postulates or holes. Checked:

- `complex`: `d1 ∘ d0 = 0` for every pair `(δ1, δ2)`.
- `(2, 4)`, gcd 2. `H^2`: the image of `d1` is exactly the even
  integers (`im-d1-even-24`, `even-in-im-24`), and 1 is not in it
  (`one-not-in-im-24`), so `H^2 = ℤ/2`. `H^1`: `ker d1 = ℤ (1, 2)`
  (`ker-d1-24`, `in-ker-24`); the generator is not in `im d0` but its
  double is (`g-not-in-im-d0-24`, `twice-g-in-im-d0-24`), so
  `H^1 = ℤ/2`. The torsion in degrees 1 and 2 is the same group.
- `(3, 5)`, coprime. `H^2 = 0` (`im-d1-all-35`, from the Bezout identity
  `5 * 2 - 3 * 3 = 1`) and `H^1 = 0` (`ker-d1-in-im-d0-35`, with the
  explicit witness `x = 2 b - 3 a`).
- `(0, 0)`: both differentials vanish (`d0-zero`, `d1-zero`), so the
  ranks are `(1, 2, 1)`.

Not checked: the general statement `H^1 ≅ H^2 ≅ ℤ/gcd(δ1, δ2)` (it
needs Bezout over `ℤ`; the two nonzero cases are instances, not a
proof); the splitting of the full diagonal Koszul complex into
coordinates; and any link to the operators of `Ext1Torsion`, since the
pairs here are chosen by hand rather than derived from a second
operator on those modules. What the file does show is the point of the
toy: in the diagonal case the torsion of degree 2 is the same group as
the torsion of degree 1, so degree 2 carries no torsion invariant that
degree 1 lacks, and the two separate only through free rank
(`(0, 0)`: 2 versus 1).

Cross-reference: `CarabinerHypotheses` H8 records a different
occurrence of the same two-term shape, the integer matrix `L_x` of left
multiplication by a sedenion seed, where kernel (zero-divisor partners)
and cokernel torsion separate in a way the diagonal toy cannot show.

### AC10 -- Clifford contraction: the Heisenberg group, and where its bracket descends (`CliffordContraction`, `CliffordAlternator`)

(Label provisional; renumber as convenient.)

Setting. `HeisenbergSeedRelations` shows that the left multiplications
`f = L_u`, `g = L_v` of the lower-half seeds of `CD 4` satisfy
`f² = g² = -N`, `fg + gf = 0`, with `N = 1 + c²`; modulo a prime `p | N`
they become the Heisenberg relations. `CliffordContraction` takes these
relations as the definition of the algebra `Cl_N(2)` over `ℤ` (basis
`1, X, Y, Z = XY`), written with the quaternionic shape
`(s,v)(t,w) = (st - g_N(v,w), s w + t v + v ×_N w)`, so that every
identity is a polynomial identity discharged by `Data.Integer.Solver`.
The operations are defined once, generically over a dictionary of ring
operations, and instantiated at `ℤ` (statements) and at solver
polynomials (proofs); no solver syntax tree is written by hand. The
reflective `Tactic.RingSolver` was tried first and does not apply here:
in Agda 2.6.3 / stdlib 1.7.3 it does not recognise `_*_` on `ℤ`
(checked), and by its source it treats user-defined functions as opaque
constants.

Checked, for all `N` unless stated, `--safe`:

- associativity, units, the Jacobi identity for the commutator bracket
  (layered: `br-split` says `[x,y] = (0, 2 v×w)`, so scalars never
  enter), structure constants `[X,Y] = 2Z`, `[X,Z] = -2N Y`,
  `[Y,Z] = 2N X`; and the weight grading `mul-scale` (scaling `X,Y` by
  `t` and `Z` by `t²` maps `Cl_{t²N}` to `Cl_N`, an isomorphism when `t`
  is invertible).
- At `N = 0` the elements `1 + aX + bY + cZ` form a group (the integral
  Heisenberg group `H`). For all of its elements
  `[h,h'] = 1 + 2(ab' - ba')Z` (`commutator-formula`), and every
  `1 + 2kZ` is a commutator (`even-central-is-commutator`): the
  commutator subgroup, which is what `H → H^ab` loses, is exactly
  `{1 + 2kZ}`.
- Descent. For every `N`, `[x + kZ, y] = [x,y] + N·δ` with `δ` explicit
  (`br-shift-Z`). So the bracket depends on its arguments modulo `Z`
  exactly when the drift vanishes: at `N = 0` (`bracket-descends-at-0`),
  modulo `p` when `p | N` (`bracket-drift-divisible`), and descent at a
  given `N` forces `2N = 0` (`bracket-descends-only-if`). With
  `N = 1 + c²`, `p | N` says `c` is a solution of `c² ≡ -1 (mod p)`.
- `CliffordAlternator`: with the anticommutator `S = fg + gf` in place
  of `0` the same family is the Clifford algebra of the binary
  quadratic form `q = -N x² + S x y - N y²` (so `S` is the off-diagonal
  Gram entry, `(xX + yY)² = q(x,y)`), associative for all `N, S`; the
  drift becomes `k(Sa' - 2Nb', 2Na' - Sb')`. Descent holds modulo `p`
  when `p` divides both `N` and `S` (the Gram matrix vanishes mod `p`),
  and over `ℤ` it forces `2N = 0` and `S = 0`
  (`brS-drift-divisible`, `brS-descends-only-if`).

- Sectors (`CliffordSectors`). Decompose by central character: modulus
  `M`, `χ_k(Z) = ζ^k`. In the sector of `χ_k` the cocycle of
  `1 → ℤ Z → H → ℤ² → 1` (`ω = ab' - ba'`, from `unip-mul`) becomes
  `kω`, and the commutator exponent is `2kω` (`commutator-exponent`).
  The section `(a,b) ↦ (a, b, k a b)` has defect exactly
  `-2k a' b` (`defect-formula`), so the sector is trivial modulo `M`
  **iff `M | 2k`** (`sector-trivial-iff`), and then that section is the
  morphism that trivialises it. Examples checked: `(M,k) = (2,1)` and
  `(4,2)` are trivial (`χ(Z) = -1`), `(3,1)` and `(4,1)` are not
  (`χ(Z)` a primitive cube root, resp. `i`). The factor 2 is the 2 in
  `[X,Y] = 2Z`: the trivial sectors are the characters of
  `H^ab = H/{1+2kZ}`, i.e. those with `χ(Z)² = 1`, so for odd `M` only
  `k = 0` and for even `M` also `k = M/2`.
  The class does not depend on the gauge: the sector is trivial in
  *some* gauge `f` (any function `ℤ² → ℤ`, cocycle changed by `δf`) iff
  `M | 2k` (`gauge-independence`; `(3,1)` and `(4,1)` have no trivialising
  gauge at all). Twisting by a character of `H` shifts `k` by a `j` with
  `M | 2j` and keeps the set `{k : M | 2k}` closed
  (`twist-preserves-trivial`). A revived sector has a finite cover that
  kills it: pulling the cocycle back along `×n` on `ℤ²` turns the sector
  `k` into `k n²` (`pullback-cocycle`, `pullback-q`), which is trivial
  iff `M | 2 k n²` (`cover-trivialises`, `cover-needs`); `n = M` always
  works (`cover-by-M`); `(M,k) = (3,1)` needs `n = 3` (`n = 2` fails),
  `(4,1)` is killed by `n = 2`. There is no space here, so this is the
  algebraic counterpart of "cover trivialising a gerbe class"; over `ℚ`
  the factor `n²` is invertible and no finite cover kills a nonzero class.

Reading against the Abelian Curse. `U` is `H → H^ab`; `S` is the
bracket; the invariance half is the descent statement, the completeness
half is the exactness of the noise `{1 + 2kZ}`. Neither follows from
Lemma 2 (they concern a bilinear bracket, not a coboundary map). Not
stated against `Algebra.Separates`: the bracket takes two arguments, and
the stub `SecondOperator` stays empty.

Not done. No homomorphism from `Cl_{N,S}` into the operators on `CD 4`
is built, so nothing is claimed about the sedenion pairs of
`AlternatorBracket` beyond the relation between `S` and the form `q`
(that would need a noncommutative ring-equation tool, absent from the
standard library). `S³ = 4S` there is not a consequence of
`f² = g² = -N`: in `Cl_{N,S}` the scalar `S` is free (e.g. `S = 1`).
At `N = 1, S = 2` the form is `-(x - y)²` and `X + Y` is a nonzero
element of square zero (`nilpotent-example`); whether the sedenion
zero-divisor pairs realise this degeneration is open.

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

### AC4 probe -- is `CliffordContraction` a cover of AC4? (`CliffordDerivation`)

Asked as a direction: could the Clifford/Heisenberg family be a
noncommutative cover of AC4's abelian structure (the commuting
derivations `∂_l`), so that AC4 would become a genuine instance? A cover
would need an arrow *into* AC4's structure. The arrow that exists runs
the other way, and was checked.

`Cl_N` is the quotient of the free algebra `ℚ⟨x,y⟩` (where `∂_l` lives)
by `I_N = (x² + N, y² + N, xy + yx)`, `x ↦ X`, `y ↦ Y`. A derivation
descends iff it maps these three generators into `I_N`, i.e. iff their
images vanish in `Cl_N`. In `Cl_N`, `z = X + Y` has `z² = -2N`, a
central scalar. Proved for every `l` (`CliffordDerivation`), and
cross-checked by computing `l ≤ 9` with a computer algebra system and
by closed-term `refl`:

- `l = 2k + 1`: the image of `∂_l x` is `(-2N)^k Z`, all three
  obstructions vanish: `∂_l` descends to `Cl_N` for every `N`
  (`odd-descends`). The descended derivation is inner:
  `2 D(w) = -s [z, w]` on `X, Y, Z` with `s = (-2N)^k`, so the descended
  `∂_l` are all multiples of one derivation `ad z` and commute.
- `l = 2k + 2`: the image is `e (X + Y)`, `e = -N(-2N)^k`; the
  obstruction on `x² + N` is `2N · N(-2N)^k` (and the negative on
  `y² + N`): `∂_l` does not descend over `ℤ` unless `N = 0`; modulo `p`
  the obstruction vanishes whenever `p | N` (`even-obstructed`,
  `even-obstruction-divisible`; it also vanishes modulo 2, being even).
- At `N = 0` every `∂_l` with `l ≥ 2` acts by zero.
- The duality `φ` (`x ↦ z`, `y ↦ -y`) sends the relations to
  `(-N, 0, 2N)`: it descends only at `N = 0` (and mod `p` when
  `p | N`), where it is the involution `X ↦ X + Y`, `Y ↦ -Y` of the
  exterior algebra.

Conclusion. `Cl_N(2)` is a quotient of AC4's algebra, not a cover of
it: of the abelian family `{∂_l}`, only the odd members survive, and
they collapse there onto a single inner direction; the even members do
not act. Nothing in `Cl_N(2)` is mapped onto AC4's data. The
reason is a weight mismatch: `∂_l` raises degree by `l ≥ 2`, while
`Cl_N(2)` has top degree 2 (its associated graded is the exterior
algebra). The only source of the odd/even split is that `z^(l-1)` is a
scalar exactly when `l` is odd. That this matches the odd weights of the
generators `σ_3, σ_5, ...` in AC2 is noted, not used: it is a
coincidence of parity here, not a derived relation.

Comparison with the Ihara family `a(f)` of AC2 (outside Agda). Two facts.
`∂_l(x) = x z^(l-1) y` has nonzero image in the commutative polynomial
ring, while `a(f)(e0) = [e0,f]` is a commutator, so `∂_l` is not of the
form `a(f)` under any identification of the letters (`∂_l` fixes only
`z`). And for `l = 2, 3`, `m = 1, 2`, under each of the four naive
identifications of `(x,y)` with `(e0,e1)` (both orders, both conventions
`e0 ↦ [e0,f]` and `e1 ↦ [e1,f]`), `[∂_l, a(sigma m)] ≠ 0`. The
explanation is not an accident of conventions: the Ihara bracket lives on
the Lie algebra dual to depth-graded MZVs (Brown), while `∂_l` acts on the
space of words that carries the MZVs themselves; they sit on opposite
sides of a duality, so a bridge, if there is one, is not the identity on
letters. The cover reading therefore holds for AC2 (above) and is
still open for AC4.

Truncations, gauge, twist, promotion (outside Agda; the Heisenberg-model
counterparts are in `CliffordSectors`). Reading of "revive": a lift of
the abelian family whose commutator is a nonzero *central* element, i.e.
a sector with nontrivial cocycle.

- `[∂_l, ∂_m] = 0` exactly on the generators `x, y` of the free algebra
  for `1 ≤ l < m ≤ 6`, hence on the whole free algebra and on every
  truncation `T_k = ℚ⟨x,y⟩/(degree ≥ k)`. Truncating cannot make the
  `∂_l` noncommutative.
- Lifts `∇_l = ∂_l + L_{a_l}` (twist by a connection form `a_l`) have
  curvature `[∇_l,∇_m] = L_F`, `F = ∂_l a_m - ∂_m a_l + [a_l,a_m]`
  (checked as an operator identity on `T_k`).
  *Gauge*: conjugating by an invertible `u` gives a flat connection
  (checked, `u = 1 + x`), and a central `F` is gauge invariant, so gauge
  can neither create nor remove it. *Line twist*: scalar `a_l` gives
  `F = 0`; the characters of `H` only shift the sector inside
  `{k : M | 2k}`. *Promotion*: needs a nonzero central `F`.
- The centre of `T_K` is `ℚ ⊕ A_{K-1}` (checked for `K = 5, 6, 7`: no
  central word in degrees `1..K-2`, every word of degree `K-1` is
  central). On the free algebra the centre is `ℚ` and `F` has positive
  degree, so a nonzero central `F` cannot occur: none of the three
  operations revives anything there. On `T_K` a nonzero central `F`
  occurs only at the resonant shift (`a_2 ∈ A_{K-4}`, `a_3 ∈ A_{K-3}`),
  where `F` lies in the top degree `K-1`: a truncation artefact, the same
  mechanism that makes `Z` central in `Cl_0`.
- At that shift the central characters of `A_{K-1}` split into trivial
  and revived sectors by the linear part `B = ∂_2 A_{K-3} + ∂_3 A_{K-4}`:

| K | 6 | 7 | 8 | 9 |
|---|---|---|---|---|
| `dim A_{K-1}` | 32 | 64 | 128 | 256 |
| `dim B` (revived sectors) | 10 | 21 | 43 | 87 |
| trivial sectors | 22 | 43 | 85 | 169 |

  `dim B = 11·2^(K-6) - 1` for `K = 6..9` (a fit to four values, not
  proved), so about 11/32 of the top central characters are revived. At
  `K = 6` the commutator part `[a_2,a_3]` also reaches the top degree and
  the sampled span of `F` is 28-dimensional, larger than `B`.
- Reading. On the free algebra `χ_0` does not revive. What creates a
  centre is not a connection on the free algebra but a *quotient by
  relations* (the Clifford relations make `Z` central), which is the
  `CliffordContraction` mechanism; so a cover of AC4 has to be a quotient
  with relations that the `∂_l` respect, and Cl_N(2) is too small for
  that (above).

Resonance, cohomology, chirality (outside Agda).

*Resonance rule.* For the pair `(∂_l, ∂_m)` on `T_K`, twist shift `s`
(`a_l ∈ A_{l+s}`, `a_m ∈ A_{m+s}`), put `u = l+m`, `δ = K-1-u`. The
linear part of `F` has degree `u+s`, the quadratic part `u+2s`, and a
nonzero central `F` needs every component in degree `K-1`. Hence:
linear resonance `s_L = δ` (generic if `δ ≥ 0`, or if `a_l`, `a_m` is a
scalar; otherwise only on the commuting locus `[a_l,a_m] = 0`), and
quadratic resonance `s_Q = δ/2` (`δ ≤ -2` even; a pure commutator effect,
absent on the commuting locus); both subject to `l+s, m+s ≥ 0`. At
`K = u+1` they coincide (`s = 0`, mixed). Checked on `(l,m) ∈ {(2,3),
(2,4),(3,4),(2,5)}`, `K ≤ 8`: 16 cases, two seeds, no mismatch.

*Linear complex at `s_L`* for `(∂_2,∂_3)`: `C⁰ = A_s → C¹ = A_{2+s} ⊕
A_{3+s} → C² = A_{K-1}`:

| K | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|
| `H⁰` | 0 | 1 | 1 | 1 | 1 |
| `H¹` | 2 | 2 | 2 | 2 | 2 |
| `H²` | 12 | 22 | 43 | 85 | 169 |
| `dim B₂ = ∂_2 A_{K-3}` | 3 | 7 | 15 | 31 | 63 |
| `dim B₃ = ∂_3 A_{K-4}` | 1 | 3 | 7 | 15 | 31 |
| `dim B₂ ∩ B₃` | 0 | 0 | 1 | 3 | 7 |

`H⁰` is spanned by `z^s` (`∂_l z = 0`), and `H¹` by the two *flat*
twists `(z^{2+s}, 0)` and `(0, z^{3+s})` (checked independent modulo the
exact ones for `K = 5..9`): they are nontrivial line-bundle twists that
carry no curvature, so they revive nothing. The data fit
`dim B₂ = 2^{K-3}-1`, `dim B₃ = 2^{K-4}-1`, `dim B₂ ∩ B₃ = 2^{K-6}-1`
(`K ≥ 6`; fits, not proved). The revived sectors are the pairs
`(μ_2, μ_3)` of functionals on `B₂, B₃` that agree on the intersection:
"pure-`∂_2`" `7·2^{K-6}`, "pure-`∂_3`" `3·2^{K-6}`, "shared"
`2^{K-6}-1`.

*Chirality.* The duality `φ` (`x ↦ z`, `y ↦ -y`) is an involutive
automorphism and conjugates the family `∂_l` (which fixes `z`) to
`∂~_m = φ ∂_m φ` (which fixes `x`). Each family is abelian, but
`[∂_l, ∂~_m] ≠ 0` for every `1 ≤ l, m ≤ 5`. The Lie algebra generated
by both has graded dimensions `2, 2, 3, 4, 6, 8` in degrees `1..6`
(free on two generators per degree: `2, 3, 8, 18, 48, 116`), with exact
relations `[∂_1, ∂~_1] = ∂_2 - ∂~_2` and
`[∂_2, ∂~_1] = 2∂_3 - 2∂~_3 - [∂_1, ∂~_2]`. So nonabelian structure does
appear once both chiralities are present, but the brackets close on the
generators: there is no new central element, and the algebra is not
2-step nilpotent.

*Dictionary with `CliffordContraction` / `CliffordSectors`.*

| Clifford / Heisenberg | AC4, truncation `T_K` |
|---|---|
| abelian quotient `ℤ²` (`X`, `Y`) | `𝔞 = ⟨∂_2, ∂_3⟩` |
| lifts to `H` | lifts `∇_2, ∇_3` |
| centre `ℤ Z`, top weight 2 | centre `A_{K-1}`, top degree `K-1` |
| cocycle `ω = ab' - ba'`, commutator `2Z` | curvature `F = [∇_2, ∇_3] ∈ A_{K-1}` |
| character `χ_k`, class `2k ∈ ℤ/M` | functional `λ ∈ A_{K-1}^*`, class `λ(F)` |
| trivial iff `M | 2k` | trivial iff `λ(F) = 0`; over all linear twists iff `λ ⟂ B` |
| rank-1 centre | centre of dimension `2^{K-1}`: `B = B₂ + B₃` splits |
| second trivial sector `χ(Z) = -1` (factor 2) | no analogue seen (`ℚ` coefficients) |

The guess "chirality element `Z` ↔ splitting of `B`" is not confirmed:
in the Heisenberg group the pairing is a single alternating form and
nothing splits; the splitting `B₂ + B₃` comes from having two abelian
generators act on a large centre. The `φ`-chirality is a different
structure (previous paragraph), not 2-step nilpotent, so the Heisenberg
model matches the *top-degree truncation* of the lifts, not the chiral
algebra.

What a cover would need, not attempted: a noncommutative algebra on
which lifts `D_l` of the `∂_l` act with `[D_l, D_m]` central and nonzero
but zero after the projection to AC4. That is invisible in the
weight-`≤ 2` truncation; the first stages that see `∂_l` are the free
nilpotent quotients `ℚ⟨x,y⟩ / (degree ≥ k)` with `k ≥ l + 2`. Natural
next checks: the commutators `[∂_l, ∂_m]` on those truncations (the
150-word experiment above, truncated), and the duality that relates the
word space of AC4 to the Lie algebra of AC2, which the naive comparison
above shows has to be taken into account.

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

### AC5 addendum — what the Fréchet quotient does to integral data (small, finite observation)

The ultrafilter question above cannot be explored by computation. A
smaller question can: for data that comes from `ℤ`, what survives the
map into `𝒜`, and does the choice of `U` matter? The test data are the
integer matrices `L_x` of H8 (`CarabinerHypotheses`), at `k = 4`.

For an integer matrix `M`, `coker M ≅ ℤ^ν ⊕ T` with `T` finite, so
`dim_{F_p} coker(M mod p) = ν + #{invariant factors divisible by p}`.
Hence the sequence `p -> d_p` is eventually constant, equal to the
rational nullity `ν`, and the exceptional primes are exactly those that
divide a non-unit invariant factor (standard linear algebra, not
formalized). Its class in `𝒜` is therefore the constant `ν`, and every
stalk `𝒜/𝔪_U` gives the same value: no dependence on `U` for such
linear-algebraic invariants (ranks, cokernels) of integer data.

Computed (own elimination modulo `p`, all primes below 100, all 120
pair seeds `x = e_i + c e_j`); `ν_Q` is the rational nullity:

```
c=1:  ν_Q = 0 (78 seeds) and 4 (42 seeds):  d_p != ν_Q only at p = 2  (d_2 = 8)
c=2:  ν_Q = 0, 78 seeds:  only p = 5 (d_5 = 8)
      ν_Q = 0, 42 seeds:  p = 3 (d_3 = 4) and p = 5 (d_5 = 4)
c=3:  ν_Q = 0, 78 seeds:  p = 2 (8) and p = 5 (8)
      ν_Q = 0, 42 seeds:  p = 2 (8) and p = 5 (4)
```

The exceptional primes divide `(c^2 - 1)(c^2 + 1)`, in line with the
determinant formula recorded in H8.

What this shows about the quotient defining `𝒜`. At `c = 2` the 42
zero-divisor seeds and the other 78 have the same rational nullity (0)
and differ only in torsion, supported at the primes `{3, 5}` versus
`{5}`. A difference supported on a finite set of primes lies in the
ideal `⊕_p F_p`, so it is erased in `𝒜`. Moreover `det L_x` is a nonzero
integer, hence a unit of `𝒜`: over `𝒜` the matrices of both classes are
invertible, and the zero-divisor status is invisible there. So, for
integral data, the map into `𝒜` forgets exactly the torsion
(Ext^1-type) part and keeps the free rank (Ext^0-type); the finitely
supported part is where the finer invariants (the Smith form) live. This
is a loss for the map "integral data -> `𝒜`", not for the map
`𝒜 -> 𝒜/𝔪_U` that AC5 asks about.

Where `U` starts to matter. A sequence that is not eventually constant,
for example the indicator `S` of the primes `p ≡ 1 (mod 4)` ("`-1` is a
square in `F_p`"), has value 1 in `𝒜/𝔪_U` exactly when `S ∈ U`. Such a
sequence is not the rank or cokernel profile of a fixed integer matrix
(those are eventually constant), but it does arise from fixed integer
data through an arithmetic rather than a linear-algebraic invariant: the
Kummer class of the constant `-1` in `F_p^× / (F_p^×)^2`, i.e. Euler's
criterion. No `p`-dependent input is needed; the dependence on `p` sits
in the invariant. (An earlier version of this paragraph said the
sequence needs a choice of square root of `-1` modulo `p`; that was
imprecise.) That is where AC5's non-constructiveness begins, and nothing
above changes it.

A finite model of this -- a product over finitely many primes -- cannot
show the point. Every ultrafilter on a finite set is principal, so
"choosing `U`" is evaluation at one prime and nothing non-constructive
occurs; and restricting to the primes of a subset `S` is not a stalk
(a stalk value is a single element, decided by whether `S ∈ U`). What
can be computed is the *shape* of the dependence on `U`:

- For an integer constant `a`, the Kummer class sequence is a function
  of `p mod 4|a|` (quadratic reciprocity; spot-checked for
  `a = -1, 2, -2, 3, -3, 5, 6, -7, 10` over the primes below `3 * 10^5`).
  A nonprincipal `U` therefore determines, for each `m`, the one residue
  class mod `m` that lies in `U`, hence an element `a_U` of
  `Ẑ^× = lim (ℤ/m)^× = Gal(ℚ^ab/ℚ)`; and `a` is a square in `𝒜/𝔪_U`
  iff the quadratic character of `ℚ(√a)` takes the value 1 at `a_U`.
  So for these classes the non-constructive choice factors through an
  explicit profinite group. (Elementary; surjectivity of `U ↦ a_U` uses
  Dirichlet's theorem and the existence of ultrafilters. Not formalized.)
- This abelian shadow does not determine every Kummer-type class. "Is 2
  a cube modulo `p`", for `p ≡ 1 (mod 3)`, is not a function of `p`
  modulo anything: in every residue class mod `m` that was tested
  (`m` up to 126, primes below `3 * 10^5`) both outcomes occur. It agrees
  with Gauss's criterion `p = x^2 + 27 y^2` on the first 3000 primes
  `p ≡ 1 (mod 3)` (no mismatch), a non-abelian Frobenius condition
  (`ℚ(ζ_3, ∛2)`, Galois group `S_3`). So two ultrafilters with the same
  `a_U` can disagree on it.

Hypothesis, not checked here: this is the Abelian Curse shape in
miniature. The coarse map is the residue class of `p` (the
abelianization `Ẑ^×` of the absolute Galois group of `ℚ`); the finer
datum is the Frobenius conjugacy class in the non-abelian Galois groups.
That `U` determines a conjugacy class of the absolute Galois group, of
which `a_U` is the abelianization, is the standard Chebotarev-style
compatibility argument but was not verified.

Filing unchanged: shape-alike, not an instance. Limits: `k = 4` only,
primes below 100, numerical (no Agda), and what is seen is a rank-type
invariant of one family of matrices.

### AC9 -- Kummer classes over the primes: abelian shadow versus non-abelian Frobenius data (`KummerFrobenius`)

`CayleyDicksonQuiver.AbelianCurse.KummerFrobenius` records finite
instances of the contrast stated at the end of the AC5 addendum.
`--safe`, type-checked under Agda 2.6.3 / standard-library 1.7.3, no
postulates or holes. Every statement is a decidable computation on small
natural numbers, checked by `refl`; primality is decided inside Agda by
trial division. Two precautions against vacuity: the `all` statements
range over lists whose lengths are themselves checked
(`primes-5-400-count`, `primes-2-mod-3-count`, `primes-1-mod-3-count`),
and a copy with deliberately false statements was confirmed to be
rejected.

Checked:

- Abelian side: `minus-one-is-mod-4`, `two-is-mod-8`,
  `three-is-mod-12`. For every prime in `[5, 400)`, "`-1` (respectively
  `2`, `3`) is a square modulo `p`" agrees with a membership test on
  `p mod 4` (respectively `8`, `12`).
- Non-abelian side, the explanation: `two-is-cube-when-2-mod-3` (all 39
  primes `= 2 mod 3` in range) and `gauss-criterion-below-400` (all 37
  primes `= 1 mod 3` in range): there, `2` is a cube exactly when
  `p = x^2 + 27 y^2`.
- Non-abelian side, collisions: `collision-mod-m` for
  `m = 3, 6, 12, 18, 36, 60, 84`, with the explicit pairs
  `(31, 7)`, `(31, 7)`, `(31, 7)`, `(31, 13)`, `(43, 7)`, `(43, 103)`,
  `(157, 73)`. In each pair both numbers are prime, both are `1 mod 3`,
  they lie in the same residue class modulo `m`, `2` is a cube modulo the
  first and not modulo the second.

Not checked: that no modulus works. That is not a finite statement; it
is the classical fact that `p = x^2 + 27 y^2` is not a congruence
condition (the field `ℚ(ζ_3, ∛2)` has Galois group `S_3`, so it is not
contained in a cyclotomic field), recorded here as known, not proved.
The numerical spot check at larger scale (both outcomes in every class
mod `m` for `m` up to 126, primes below `3 * 10^5`) is in the AC5
addendum. Quadratic reciprocity itself is not formalized; only the
finite instances above are. Nothing about ultrafilters is proved: all
statements concern primes below 400.

What this gives for the ring `𝒜`, as pure ring theory. Let `S` be the
set of primes `p ≡ 1 (mod 3)` for which `2` is a cube, and `e_S` its
idempotent in `𝒜`. By Chebotarev's density theorem (not formalized),
`S` meets every residue class modulo `m` in an infinite and co-infinite
set; hence `e_S` is not in the Boolean subalgebra of `𝒜` generated by
the residue-class idempotents. Evaluation at `U` sends `e_S` to 1 exactly
when `S ∈ U`, so this value is not determined by `a_U ∈ Ẑ^×`: two
ultrafilters with the same `a_U` can disagree on it. This is the
abelian-shadow-versus-finer-datum shape again (coarse map: residue
class; finer datum: Frobenius class in `S_3`), and it is a statement
about idempotents in `𝒜`, nothing more.

As with the BOPS / rigidity remark earlier in this note, none of this
models Θ-links, indeterminacies, or any other IUT-specific structure,
and it does not bear on the Scholze-Stix / Mochizuki dispute.
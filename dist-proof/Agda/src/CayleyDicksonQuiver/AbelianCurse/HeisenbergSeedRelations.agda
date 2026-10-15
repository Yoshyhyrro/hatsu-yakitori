-- CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations
--
-- The integral relations behind the finite Heisenberg group of H15 and
-- H17 (`note/CarabinerHypotheses.lagda.md`). For the lower-half seeds
--
--   u = e_1 + c e_2,    v = e_3 + c e_4,
--
-- with c an integer such that p divides N = 1 + c^2, left multiplication
-- on `CD 4` satisfies, exactly over the integers and on all 16 basis
-- vectors,
--
--   u (u y) = - N y,    v (v y) = - N y,    u (v y) + v (u y) = 0.
--
-- Modulo p (p divides N) these say f^2 = g^2 = 0 and fg = -gf for
-- f = L_u, g = L_v: the hypotheses under which (1 + a f)(1 + b g)(1 + c z),
-- z = fg - gf, multiply as the Heisenberg group. Only the three instances
--
--   p = 5  (c = 2, N = 5),   p = 13 (c = 5, N = 26),   p = 17 (c = 4, N = 17)
--
-- are checked here, one `refl` per basis vector and per relation. There is
-- no statement for a general `c`, and none about the group itself: the
-- Heisenberg group and the homomorphism into the matrices are not
-- formalized in this file. The pairs (1,2), (3,4), (1,3), (1,4), (2,3),
-- (2,4) all lie in the lower half of `CD 4`, where the anticommutators
-- S_ij vanish (H10); that is why the relations hold exactly. For seeds
-- with genuine zero-divisor structure they fail (H17).
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations where

open import CayleyDicksonQuiver.Hypotheses
  using (CD; add; neg; mul; zeroCD; inl; inr; e-base)
open import Data.Nat using (ℕ; zero; suc)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

-- n copies of x
times : ℕ → CD 4 → CD 4
times zero    x = zeroCD 4
times (suc n) x = add 4 x (times n x)

-- Basis vectors, most significant bit outermost (as in `Hypotheses`).

b0 : CD 4
b0 = inl (inl (inl (inl (e-base))))

b1 : CD 4
b1 = inl (inl (inl (inr (e-base))))

b2 : CD 4
b2 = inl (inl (inr (inl (e-base))))

b3 : CD 4
b3 = inl (inl (inr (inr (e-base))))

b4 : CD 4
b4 = inl (inr (inl (inl (e-base))))

b5 : CD 4
b5 = inl (inr (inl (inr (e-base))))

b6 : CD 4
b6 = inl (inr (inr (inl (e-base))))

b7 : CD 4
b7 = inl (inr (inr (inr (e-base))))

b8 : CD 4
b8 = inr (inl (inl (inl (e-base))))

b9 : CD 4
b9 = inr (inl (inl (inr (e-base))))

b10 : CD 4
b10 = inr (inl (inr (inl (e-base))))

b11 : CD 4
b11 = inr (inl (inr (inr (e-base))))

b12 : CD 4
b12 = inr (inr (inl (inl (e-base))))

b13 : CD 4
b13 = inr (inr (inl (inr (e-base))))

b14 : CD 4
b14 = inr (inr (inr (inl (e-base))))

b15 : CD 4
b15 = inr (inr (inr (inr (e-base))))


-- p = 5: c = 2, N = 5

u5 v5 : CD 4
u5 = add 4 b1 (times 2 b2)
v5 = add 4 b3 (times 2 b4)

uu5-0 : mul 4 u5 (mul 4 u5 b0) ≡ neg 4 (times 5 b0)
uu5-0 = refl

vv5-0 : mul 4 v5 (mul 4 v5 b0) ≡ neg 4 (times 5 b0)
vv5-0 = refl

uv5-0 : add 4 (mul 4 u5 (mul 4 v5 b0)) (mul 4 v5 (mul 4 u5 b0)) ≡ zeroCD 4
uv5-0 = refl

uu5-1 : mul 4 u5 (mul 4 u5 b1) ≡ neg 4 (times 5 b1)
uu5-1 = refl

vv5-1 : mul 4 v5 (mul 4 v5 b1) ≡ neg 4 (times 5 b1)
vv5-1 = refl

uv5-1 : add 4 (mul 4 u5 (mul 4 v5 b1)) (mul 4 v5 (mul 4 u5 b1)) ≡ zeroCD 4
uv5-1 = refl

uu5-2 : mul 4 u5 (mul 4 u5 b2) ≡ neg 4 (times 5 b2)
uu5-2 = refl

vv5-2 : mul 4 v5 (mul 4 v5 b2) ≡ neg 4 (times 5 b2)
vv5-2 = refl

uv5-2 : add 4 (mul 4 u5 (mul 4 v5 b2)) (mul 4 v5 (mul 4 u5 b2)) ≡ zeroCD 4
uv5-2 = refl

uu5-3 : mul 4 u5 (mul 4 u5 b3) ≡ neg 4 (times 5 b3)
uu5-3 = refl

vv5-3 : mul 4 v5 (mul 4 v5 b3) ≡ neg 4 (times 5 b3)
vv5-3 = refl

uv5-3 : add 4 (mul 4 u5 (mul 4 v5 b3)) (mul 4 v5 (mul 4 u5 b3)) ≡ zeroCD 4
uv5-3 = refl

uu5-4 : mul 4 u5 (mul 4 u5 b4) ≡ neg 4 (times 5 b4)
uu5-4 = refl

vv5-4 : mul 4 v5 (mul 4 v5 b4) ≡ neg 4 (times 5 b4)
vv5-4 = refl

uv5-4 : add 4 (mul 4 u5 (mul 4 v5 b4)) (mul 4 v5 (mul 4 u5 b4)) ≡ zeroCD 4
uv5-4 = refl

uu5-5 : mul 4 u5 (mul 4 u5 b5) ≡ neg 4 (times 5 b5)
uu5-5 = refl

vv5-5 : mul 4 v5 (mul 4 v5 b5) ≡ neg 4 (times 5 b5)
vv5-5 = refl

uv5-5 : add 4 (mul 4 u5 (mul 4 v5 b5)) (mul 4 v5 (mul 4 u5 b5)) ≡ zeroCD 4
uv5-5 = refl

uu5-6 : mul 4 u5 (mul 4 u5 b6) ≡ neg 4 (times 5 b6)
uu5-6 = refl

vv5-6 : mul 4 v5 (mul 4 v5 b6) ≡ neg 4 (times 5 b6)
vv5-6 = refl

uv5-6 : add 4 (mul 4 u5 (mul 4 v5 b6)) (mul 4 v5 (mul 4 u5 b6)) ≡ zeroCD 4
uv5-6 = refl

uu5-7 : mul 4 u5 (mul 4 u5 b7) ≡ neg 4 (times 5 b7)
uu5-7 = refl

vv5-7 : mul 4 v5 (mul 4 v5 b7) ≡ neg 4 (times 5 b7)
vv5-7 = refl

uv5-7 : add 4 (mul 4 u5 (mul 4 v5 b7)) (mul 4 v5 (mul 4 u5 b7)) ≡ zeroCD 4
uv5-7 = refl

uu5-8 : mul 4 u5 (mul 4 u5 b8) ≡ neg 4 (times 5 b8)
uu5-8 = refl

vv5-8 : mul 4 v5 (mul 4 v5 b8) ≡ neg 4 (times 5 b8)
vv5-8 = refl

uv5-8 : add 4 (mul 4 u5 (mul 4 v5 b8)) (mul 4 v5 (mul 4 u5 b8)) ≡ zeroCD 4
uv5-8 = refl

uu5-9 : mul 4 u5 (mul 4 u5 b9) ≡ neg 4 (times 5 b9)
uu5-9 = refl

vv5-9 : mul 4 v5 (mul 4 v5 b9) ≡ neg 4 (times 5 b9)
vv5-9 = refl

uv5-9 : add 4 (mul 4 u5 (mul 4 v5 b9)) (mul 4 v5 (mul 4 u5 b9)) ≡ zeroCD 4
uv5-9 = refl

uu5-10 : mul 4 u5 (mul 4 u5 b10) ≡ neg 4 (times 5 b10)
uu5-10 = refl

vv5-10 : mul 4 v5 (mul 4 v5 b10) ≡ neg 4 (times 5 b10)
vv5-10 = refl

uv5-10 : add 4 (mul 4 u5 (mul 4 v5 b10)) (mul 4 v5 (mul 4 u5 b10)) ≡ zeroCD 4
uv5-10 = refl

uu5-11 : mul 4 u5 (mul 4 u5 b11) ≡ neg 4 (times 5 b11)
uu5-11 = refl

vv5-11 : mul 4 v5 (mul 4 v5 b11) ≡ neg 4 (times 5 b11)
vv5-11 = refl

uv5-11 : add 4 (mul 4 u5 (mul 4 v5 b11)) (mul 4 v5 (mul 4 u5 b11)) ≡ zeroCD 4
uv5-11 = refl

uu5-12 : mul 4 u5 (mul 4 u5 b12) ≡ neg 4 (times 5 b12)
uu5-12 = refl

vv5-12 : mul 4 v5 (mul 4 v5 b12) ≡ neg 4 (times 5 b12)
vv5-12 = refl

uv5-12 : add 4 (mul 4 u5 (mul 4 v5 b12)) (mul 4 v5 (mul 4 u5 b12)) ≡ zeroCD 4
uv5-12 = refl

uu5-13 : mul 4 u5 (mul 4 u5 b13) ≡ neg 4 (times 5 b13)
uu5-13 = refl

vv5-13 : mul 4 v5 (mul 4 v5 b13) ≡ neg 4 (times 5 b13)
vv5-13 = refl

uv5-13 : add 4 (mul 4 u5 (mul 4 v5 b13)) (mul 4 v5 (mul 4 u5 b13)) ≡ zeroCD 4
uv5-13 = refl

uu5-14 : mul 4 u5 (mul 4 u5 b14) ≡ neg 4 (times 5 b14)
uu5-14 = refl

vv5-14 : mul 4 v5 (mul 4 v5 b14) ≡ neg 4 (times 5 b14)
vv5-14 = refl

uv5-14 : add 4 (mul 4 u5 (mul 4 v5 b14)) (mul 4 v5 (mul 4 u5 b14)) ≡ zeroCD 4
uv5-14 = refl

uu5-15 : mul 4 u5 (mul 4 u5 b15) ≡ neg 4 (times 5 b15)
uu5-15 = refl

vv5-15 : mul 4 v5 (mul 4 v5 b15) ≡ neg 4 (times 5 b15)
vv5-15 = refl

uv5-15 : add 4 (mul 4 u5 (mul 4 v5 b15)) (mul 4 v5 (mul 4 u5 b15)) ≡ zeroCD 4
uv5-15 = refl


-- p = 13: c = 5, N = 26

u13 v13 : CD 4
u13 = add 4 b1 (times 5 b2)
v13 = add 4 b3 (times 5 b4)

uu13-0 : mul 4 u13 (mul 4 u13 b0) ≡ neg 4 (times 26 b0)
uu13-0 = refl

vv13-0 : mul 4 v13 (mul 4 v13 b0) ≡ neg 4 (times 26 b0)
vv13-0 = refl

uv13-0 : add 4 (mul 4 u13 (mul 4 v13 b0)) (mul 4 v13 (mul 4 u13 b0)) ≡ zeroCD 4
uv13-0 = refl

uu13-1 : mul 4 u13 (mul 4 u13 b1) ≡ neg 4 (times 26 b1)
uu13-1 = refl

vv13-1 : mul 4 v13 (mul 4 v13 b1) ≡ neg 4 (times 26 b1)
vv13-1 = refl

uv13-1 : add 4 (mul 4 u13 (mul 4 v13 b1)) (mul 4 v13 (mul 4 u13 b1)) ≡ zeroCD 4
uv13-1 = refl

uu13-2 : mul 4 u13 (mul 4 u13 b2) ≡ neg 4 (times 26 b2)
uu13-2 = refl

vv13-2 : mul 4 v13 (mul 4 v13 b2) ≡ neg 4 (times 26 b2)
vv13-2 = refl

uv13-2 : add 4 (mul 4 u13 (mul 4 v13 b2)) (mul 4 v13 (mul 4 u13 b2)) ≡ zeroCD 4
uv13-2 = refl

uu13-3 : mul 4 u13 (mul 4 u13 b3) ≡ neg 4 (times 26 b3)
uu13-3 = refl

vv13-3 : mul 4 v13 (mul 4 v13 b3) ≡ neg 4 (times 26 b3)
vv13-3 = refl

uv13-3 : add 4 (mul 4 u13 (mul 4 v13 b3)) (mul 4 v13 (mul 4 u13 b3)) ≡ zeroCD 4
uv13-3 = refl

uu13-4 : mul 4 u13 (mul 4 u13 b4) ≡ neg 4 (times 26 b4)
uu13-4 = refl

vv13-4 : mul 4 v13 (mul 4 v13 b4) ≡ neg 4 (times 26 b4)
vv13-4 = refl

uv13-4 : add 4 (mul 4 u13 (mul 4 v13 b4)) (mul 4 v13 (mul 4 u13 b4)) ≡ zeroCD 4
uv13-4 = refl

uu13-5 : mul 4 u13 (mul 4 u13 b5) ≡ neg 4 (times 26 b5)
uu13-5 = refl

vv13-5 : mul 4 v13 (mul 4 v13 b5) ≡ neg 4 (times 26 b5)
vv13-5 = refl

uv13-5 : add 4 (mul 4 u13 (mul 4 v13 b5)) (mul 4 v13 (mul 4 u13 b5)) ≡ zeroCD 4
uv13-5 = refl

uu13-6 : mul 4 u13 (mul 4 u13 b6) ≡ neg 4 (times 26 b6)
uu13-6 = refl

vv13-6 : mul 4 v13 (mul 4 v13 b6) ≡ neg 4 (times 26 b6)
vv13-6 = refl

uv13-6 : add 4 (mul 4 u13 (mul 4 v13 b6)) (mul 4 v13 (mul 4 u13 b6)) ≡ zeroCD 4
uv13-6 = refl

uu13-7 : mul 4 u13 (mul 4 u13 b7) ≡ neg 4 (times 26 b7)
uu13-7 = refl

vv13-7 : mul 4 v13 (mul 4 v13 b7) ≡ neg 4 (times 26 b7)
vv13-7 = refl

uv13-7 : add 4 (mul 4 u13 (mul 4 v13 b7)) (mul 4 v13 (mul 4 u13 b7)) ≡ zeroCD 4
uv13-7 = refl

uu13-8 : mul 4 u13 (mul 4 u13 b8) ≡ neg 4 (times 26 b8)
uu13-8 = refl

vv13-8 : mul 4 v13 (mul 4 v13 b8) ≡ neg 4 (times 26 b8)
vv13-8 = refl

uv13-8 : add 4 (mul 4 u13 (mul 4 v13 b8)) (mul 4 v13 (mul 4 u13 b8)) ≡ zeroCD 4
uv13-8 = refl

uu13-9 : mul 4 u13 (mul 4 u13 b9) ≡ neg 4 (times 26 b9)
uu13-9 = refl

vv13-9 : mul 4 v13 (mul 4 v13 b9) ≡ neg 4 (times 26 b9)
vv13-9 = refl

uv13-9 : add 4 (mul 4 u13 (mul 4 v13 b9)) (mul 4 v13 (mul 4 u13 b9)) ≡ zeroCD 4
uv13-9 = refl

uu13-10 : mul 4 u13 (mul 4 u13 b10) ≡ neg 4 (times 26 b10)
uu13-10 = refl

vv13-10 : mul 4 v13 (mul 4 v13 b10) ≡ neg 4 (times 26 b10)
vv13-10 = refl

uv13-10 : add 4 (mul 4 u13 (mul 4 v13 b10)) (mul 4 v13 (mul 4 u13 b10)) ≡ zeroCD 4
uv13-10 = refl

uu13-11 : mul 4 u13 (mul 4 u13 b11) ≡ neg 4 (times 26 b11)
uu13-11 = refl

vv13-11 : mul 4 v13 (mul 4 v13 b11) ≡ neg 4 (times 26 b11)
vv13-11 = refl

uv13-11 : add 4 (mul 4 u13 (mul 4 v13 b11)) (mul 4 v13 (mul 4 u13 b11)) ≡ zeroCD 4
uv13-11 = refl

uu13-12 : mul 4 u13 (mul 4 u13 b12) ≡ neg 4 (times 26 b12)
uu13-12 = refl

vv13-12 : mul 4 v13 (mul 4 v13 b12) ≡ neg 4 (times 26 b12)
vv13-12 = refl

uv13-12 : add 4 (mul 4 u13 (mul 4 v13 b12)) (mul 4 v13 (mul 4 u13 b12)) ≡ zeroCD 4
uv13-12 = refl

uu13-13 : mul 4 u13 (mul 4 u13 b13) ≡ neg 4 (times 26 b13)
uu13-13 = refl

vv13-13 : mul 4 v13 (mul 4 v13 b13) ≡ neg 4 (times 26 b13)
vv13-13 = refl

uv13-13 : add 4 (mul 4 u13 (mul 4 v13 b13)) (mul 4 v13 (mul 4 u13 b13)) ≡ zeroCD 4
uv13-13 = refl

uu13-14 : mul 4 u13 (mul 4 u13 b14) ≡ neg 4 (times 26 b14)
uu13-14 = refl

vv13-14 : mul 4 v13 (mul 4 v13 b14) ≡ neg 4 (times 26 b14)
vv13-14 = refl

uv13-14 : add 4 (mul 4 u13 (mul 4 v13 b14)) (mul 4 v13 (mul 4 u13 b14)) ≡ zeroCD 4
uv13-14 = refl

uu13-15 : mul 4 u13 (mul 4 u13 b15) ≡ neg 4 (times 26 b15)
uu13-15 = refl

vv13-15 : mul 4 v13 (mul 4 v13 b15) ≡ neg 4 (times 26 b15)
vv13-15 = refl

uv13-15 : add 4 (mul 4 u13 (mul 4 v13 b15)) (mul 4 v13 (mul 4 u13 b15)) ≡ zeroCD 4
uv13-15 = refl


-- p = 17: c = 4, N = 17

u17 v17 : CD 4
u17 = add 4 b1 (times 4 b2)
v17 = add 4 b3 (times 4 b4)

uu17-0 : mul 4 u17 (mul 4 u17 b0) ≡ neg 4 (times 17 b0)
uu17-0 = refl

vv17-0 : mul 4 v17 (mul 4 v17 b0) ≡ neg 4 (times 17 b0)
vv17-0 = refl

uv17-0 : add 4 (mul 4 u17 (mul 4 v17 b0)) (mul 4 v17 (mul 4 u17 b0)) ≡ zeroCD 4
uv17-0 = refl

uu17-1 : mul 4 u17 (mul 4 u17 b1) ≡ neg 4 (times 17 b1)
uu17-1 = refl

vv17-1 : mul 4 v17 (mul 4 v17 b1) ≡ neg 4 (times 17 b1)
vv17-1 = refl

uv17-1 : add 4 (mul 4 u17 (mul 4 v17 b1)) (mul 4 v17 (mul 4 u17 b1)) ≡ zeroCD 4
uv17-1 = refl

uu17-2 : mul 4 u17 (mul 4 u17 b2) ≡ neg 4 (times 17 b2)
uu17-2 = refl

vv17-2 : mul 4 v17 (mul 4 v17 b2) ≡ neg 4 (times 17 b2)
vv17-2 = refl

uv17-2 : add 4 (mul 4 u17 (mul 4 v17 b2)) (mul 4 v17 (mul 4 u17 b2)) ≡ zeroCD 4
uv17-2 = refl

uu17-3 : mul 4 u17 (mul 4 u17 b3) ≡ neg 4 (times 17 b3)
uu17-3 = refl

vv17-3 : mul 4 v17 (mul 4 v17 b3) ≡ neg 4 (times 17 b3)
vv17-3 = refl

uv17-3 : add 4 (mul 4 u17 (mul 4 v17 b3)) (mul 4 v17 (mul 4 u17 b3)) ≡ zeroCD 4
uv17-3 = refl

uu17-4 : mul 4 u17 (mul 4 u17 b4) ≡ neg 4 (times 17 b4)
uu17-4 = refl

vv17-4 : mul 4 v17 (mul 4 v17 b4) ≡ neg 4 (times 17 b4)
vv17-4 = refl

uv17-4 : add 4 (mul 4 u17 (mul 4 v17 b4)) (mul 4 v17 (mul 4 u17 b4)) ≡ zeroCD 4
uv17-4 = refl

uu17-5 : mul 4 u17 (mul 4 u17 b5) ≡ neg 4 (times 17 b5)
uu17-5 = refl

vv17-5 : mul 4 v17 (mul 4 v17 b5) ≡ neg 4 (times 17 b5)
vv17-5 = refl

uv17-5 : add 4 (mul 4 u17 (mul 4 v17 b5)) (mul 4 v17 (mul 4 u17 b5)) ≡ zeroCD 4
uv17-5 = refl

uu17-6 : mul 4 u17 (mul 4 u17 b6) ≡ neg 4 (times 17 b6)
uu17-6 = refl

vv17-6 : mul 4 v17 (mul 4 v17 b6) ≡ neg 4 (times 17 b6)
vv17-6 = refl

uv17-6 : add 4 (mul 4 u17 (mul 4 v17 b6)) (mul 4 v17 (mul 4 u17 b6)) ≡ zeroCD 4
uv17-6 = refl

uu17-7 : mul 4 u17 (mul 4 u17 b7) ≡ neg 4 (times 17 b7)
uu17-7 = refl

vv17-7 : mul 4 v17 (mul 4 v17 b7) ≡ neg 4 (times 17 b7)
vv17-7 = refl

uv17-7 : add 4 (mul 4 u17 (mul 4 v17 b7)) (mul 4 v17 (mul 4 u17 b7)) ≡ zeroCD 4
uv17-7 = refl

uu17-8 : mul 4 u17 (mul 4 u17 b8) ≡ neg 4 (times 17 b8)
uu17-8 = refl

vv17-8 : mul 4 v17 (mul 4 v17 b8) ≡ neg 4 (times 17 b8)
vv17-8 = refl

uv17-8 : add 4 (mul 4 u17 (mul 4 v17 b8)) (mul 4 v17 (mul 4 u17 b8)) ≡ zeroCD 4
uv17-8 = refl

uu17-9 : mul 4 u17 (mul 4 u17 b9) ≡ neg 4 (times 17 b9)
uu17-9 = refl

vv17-9 : mul 4 v17 (mul 4 v17 b9) ≡ neg 4 (times 17 b9)
vv17-9 = refl

uv17-9 : add 4 (mul 4 u17 (mul 4 v17 b9)) (mul 4 v17 (mul 4 u17 b9)) ≡ zeroCD 4
uv17-9 = refl

uu17-10 : mul 4 u17 (mul 4 u17 b10) ≡ neg 4 (times 17 b10)
uu17-10 = refl

vv17-10 : mul 4 v17 (mul 4 v17 b10) ≡ neg 4 (times 17 b10)
vv17-10 = refl

uv17-10 : add 4 (mul 4 u17 (mul 4 v17 b10)) (mul 4 v17 (mul 4 u17 b10)) ≡ zeroCD 4
uv17-10 = refl

uu17-11 : mul 4 u17 (mul 4 u17 b11) ≡ neg 4 (times 17 b11)
uu17-11 = refl

vv17-11 : mul 4 v17 (mul 4 v17 b11) ≡ neg 4 (times 17 b11)
vv17-11 = refl

uv17-11 : add 4 (mul 4 u17 (mul 4 v17 b11)) (mul 4 v17 (mul 4 u17 b11)) ≡ zeroCD 4
uv17-11 = refl

uu17-12 : mul 4 u17 (mul 4 u17 b12) ≡ neg 4 (times 17 b12)
uu17-12 = refl

vv17-12 : mul 4 v17 (mul 4 v17 b12) ≡ neg 4 (times 17 b12)
vv17-12 = refl

uv17-12 : add 4 (mul 4 u17 (mul 4 v17 b12)) (mul 4 v17 (mul 4 u17 b12)) ≡ zeroCD 4
uv17-12 = refl

uu17-13 : mul 4 u17 (mul 4 u17 b13) ≡ neg 4 (times 17 b13)
uu17-13 = refl

vv17-13 : mul 4 v17 (mul 4 v17 b13) ≡ neg 4 (times 17 b13)
vv17-13 = refl

uv17-13 : add 4 (mul 4 u17 (mul 4 v17 b13)) (mul 4 v17 (mul 4 u17 b13)) ≡ zeroCD 4
uv17-13 = refl

uu17-14 : mul 4 u17 (mul 4 u17 b14) ≡ neg 4 (times 17 b14)
uu17-14 = refl

vv17-14 : mul 4 v17 (mul 4 v17 b14) ≡ neg 4 (times 17 b14)
vv17-14 = refl

uv17-14 : add 4 (mul 4 u17 (mul 4 v17 b14)) (mul 4 v17 (mul 4 u17 b14)) ≡ zeroCD 4
uv17-14 = refl

uu17-15 : mul 4 u17 (mul 4 u17 b15) ≡ neg 4 (times 17 b15)
uu17-15 = refl

vv17-15 : mul 4 v17 (mul 4 v17 b15) ≡ neg 4 (times 17 b15)
vv17-15 = refl

uv17-15 : add 4 (mul 4 u17 (mul 4 v17 b15)) (mul 4 v17 (mul 4 u17 b15)) ≡ zeroCD 4
uv17-15 = refl

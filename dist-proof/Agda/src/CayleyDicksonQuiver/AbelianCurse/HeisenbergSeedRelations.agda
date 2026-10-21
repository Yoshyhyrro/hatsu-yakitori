-- CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations
--
-- The integral relations behind the finite Heisenberg group of H15 and
-- H17 (`note/CarabinerHypotheses.lagda.md`). For the lower-half seeds
--
--   u_c = e_1 + c e_2,    v_c = e_3 + c e_4     (c ANY natural number),
--
-- left multiplication on `CD 4` satisfies, exactly over the integers and
-- for every basis vector y,
--
--   u (u y) = - N y,    v (v y) = - N y,    u (v y) + v (u y) = 0,
--   N = 1 + c^2.
--
-- Modulo a prime p dividing N these say f^2 = g^2 = 0 and fg = -gf for
-- f = L_u, g = L_v: the hypotheses under which (1 + a f)(1 + b g)(1 + c z),
-- z = fg - gf, multiply as the Heisenberg group.
--
-- How the statements are proved (two ingredients).
--
--   1. FINITELY MANY FACTS ABOUT THE BASIS, independent of c:
--        L_a^2 = -I  for a = 1, 2, 3, 4,
--        L_a L_b + L_b L_a = 0  for the pairs (1,2), (3,4), (1,3), (1,4),
--                                (2,3), (2,4),
--      each as ONE statement quantified over `i : Fin 16` (the basis vector
--      y = basisF i), closed by reflection: `CD k` has decidable equality
--      (`eqCD`), `all?` decides the quantified statement, `toWitness`
--      turns the computed `yes` into a proof.
--
--   2. BILINEARITY, for all c: `CDBilinear` proves that `mul` is additive in
--      each argument at every level, and from it the seed lemmas `sq-seed`
--      and `uv-seed`, which turn the facts of (1) into the statements for
--      u_c, v_c and every natural c.
--
-- Nothing is postulated. An earlier version of this file checked c < 30 by
-- reflection; the statements below are for all c, and supersede it.
--
-- What is NOT here: the Heisenberg group itself, and the homomorphism into
-- the matrices; and any statement about seeds outside the lower half of
-- `CD 4` (the pairs among e_1, ..., e_4 have vanishing anticommutators S_ij,
-- H10; for seeds with genuine zero-divisor structure the relations fail,
-- H17).
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations where

open import CayleyDicksonQuiver.AbelianCurse.CDBilinear using (tms; Bf; sq-seed; uv-seed)
open import CayleyDicksonQuiver.Hypotheses
  using (CD; add; neg; mul; zeroCD; inl; inr; e-base)
open import Data.Bool using (Bool; true; false; if_then_else_)
open import Data.Fin using (Fin; zero; suc; toℕ)
open import Data.Fin.Properties using (all?)
open import Data.Integer using (ℤ)
open import Data.Integer.Properties using (_≟_)
open import Data.Nat using (ℕ; _+_; _*_; _∸_; _<ᵇ_)
  renaming (zero to ℕzero; suc to ℕsuc)
open import Data.Product using (_×_; _,_)
open import Data.Unit using (tt)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (Dec; yes; no)
open import Relation.Nullary.Decidable using (True; toWitness)

------------------------------------------------------------------------
-- Decidable equality on CD k
------------------------------------------------------------------------

eqCD : (k : ℕ) → (x y : CD k) → Dec (x ≡ y)
eqCD ℕzero    x       y       = x ≟ y
eqCD (ℕsuc k) (a , b) (c , d) with eqCD k a c | eqCD k b d
... | yes refl | yes refl = yes refl
... | no ¬p    | _        = no (λ { refl → ¬p refl })
... | _        | no ¬q    = no (λ { refl → ¬q refl })

------------------------------------------------------------------------
-- The basis, for every k, most significant bit outermost (as in
-- `Hypotheses`)
------------------------------------------------------------------------

pow2 : ℕ → ℕ
pow2 ℕzero    = 1
pow2 (ℕsuc k) = pow2 k + pow2 k

basis : (k : ℕ) → ℕ → CD k
basis ℕzero    n = e-base
basis (ℕsuc k) n = if n <ᵇ pow2 k then inl (basis k n) else inr (basis k (n ∸ pow2 k))

basisF : Fin 16 → CD 4
basisF i = basis 4 (toℕ i)

-- Anchors: the convention agrees with the hand-written paths of
-- `Hypotheses` (basis-e5 = 0101, basis-e10 = 1010).
anchor-e5  : basis 4 5  ≡ inl (inr (inl (inr e-base)))
anchor-e5  = refl

anchor-e10 : basis 4 10 ≡ inr (inl (inr (inl e-base)))
anchor-e10 = refl

------------------------------------------------------------------------
-- Ingredient 1: finitely many facts about the basis, over Fin 16
------------------------------------------------------------------------

-- L_a^2 = -I on the basis
Sq : ℕ → Set
Sq a = (i : Fin 16) →
  mul 4 (basis 4 a) (mul 4 (basis 4 a) (basisF i)) ≡ neg 4 (basisF i)

-- L_a L_b + L_b L_a = 0 on the basis
Anti : ℕ → ℕ → Set
Anti a b = (i : Fin 16) → Bf 4 (basisF i) (basis 4 a) (basis 4 b) ≡ zeroCD 4

sq-by-reflection : (a : ℕ) →
  True (all? (λ i → eqCD 4 (mul 4 (basis 4 a) (mul 4 (basis 4 a) (basisF i))) (neg 4 (basisF i)))) →
  Sq a
sq-by-reflection a t = toWitness t

anti-by-reflection : (a b : ℕ) →
  True (all? (λ i → eqCD 4 (Bf 4 (basisF i) (basis 4 a) (basis 4 b)) (zeroCD 4))) →
  Anti a b
anti-by-reflection a b t = toWitness t

sq1 : Sq 1
sq1 = sq-by-reflection 1 tt
sq2 : Sq 2
sq2 = sq-by-reflection 2 tt
sq3 : Sq 3
sq3 = sq-by-reflection 3 tt
sq4 : Sq 4
sq4 = sq-by-reflection 4 tt

anti12 : Anti 1 2
anti12 = anti-by-reflection 1 2 tt
anti34 : Anti 3 4
anti34 = anti-by-reflection 3 4 tt
anti13 : Anti 1 3
anti13 = anti-by-reflection 1 3 tt
anti14 : Anti 1 4
anti14 = anti-by-reflection 1 4 tt
anti23 : Anti 2 3
anti23 = anti-by-reflection 2 3 tt
anti24 : Anti 2 4
anti24 = anti-by-reflection 2 4 tt

------------------------------------------------------------------------
-- Ingredient 2: the statements for u_c, v_c, for EVERY natural c
------------------------------------------------------------------------

u v : ℕ → CD 4
u c = add 4 (basis 4 1) (tms 4 c (basis 4 2))
v c = add 4 (basis 4 3) (tms 4 c (basis 4 4))

N-of : ℕ → ℕ
N-of c = ℕsuc (c * c)

UU VV : ℕ → ℕ → Set
UU c N = (i : Fin 16) → mul 4 (u c) (mul 4 (u c) (basisF i)) ≡ neg 4 (tms 4 N (basisF i))
VV c N = (i : Fin 16) → mul 4 (v c) (mul 4 (v c) (basisF i)) ≡ neg 4 (tms 4 N (basisF i))

UV : ℕ → Set
UV c = (i : Fin 16) →
  add 4 (mul 4 (u c) (mul 4 (v c) (basisF i))) (mul 4 (v c) (mul 4 (u c) (basisF i)))
  ≡ zeroCD 4

uu-general : (c : ℕ) → UU c (N-of c)
uu-general c i = sq-seed 4 c (basis 4 1) (basis 4 2) (basisF i) (sq1 i) (sq2 i) (anti12 i)

vv-general : (c : ℕ) → VV c (N-of c)
vv-general c i = sq-seed 4 c (basis 4 3) (basis 4 4) (basisF i) (sq3 i) (sq4 i) (anti34 i)

uv-general : (c : ℕ) → UV c
uv-general c i =
  uv-seed 4 c (basis 4 1) (basis 4 2) (basis 4 3) (basis 4 4) (basisF i)
          (anti13 i) (anti14 i) (anti23 i) (anti24 i)

------------------------------------------------------------------------
-- The primes used in H15 / H17 as instances
------------------------------------------------------------------------

-- p = 5:  c = 2, N = 5
uu-p5 : UU 2 5
uu-p5 = uu-general 2
vv-p5 : VV 2 5
vv-p5 = vv-general 2
uv-p5 : UV 2
uv-p5 = uv-general 2

-- p = 13: c = 5, N = 26 = 2 * 13
uu-p13 : UU 5 26
uu-p13 = uu-general 5
vv-p13 : VV 5 26
vv-p13 = vv-general 5
uv-p13 : UV 5
uv-p13 = uv-general 5

-- p = 17: c = 4, N = 17
uu-p17 : UU 4 17
uu-p17 = uu-general 4
vv-p17 : VV 4 17
vv-p17 = vv-general 4
uv-p17 : UV 4
uv-p17 = uv-general 4
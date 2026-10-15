-- CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations
--
-- The integral relations behind the finite Heisenberg group of H15 and
-- H17 (`note/CarabinerHypotheses.lagda.md`). For the lower-half seeds
--
--   u_c = e_1 + c e_2,    v_c = e_3 + c e_4     (c a natural number),
--
-- left multiplication on `CD 4` satisfies, exactly over the integers and
-- for EVERY basis vector y,
--
--   u (u y) = - N y,    v (v y) = - N y,    u (v y) + v (u y) = 0,
--   N = 1 + c^2.
--
-- Modulo a prime p dividing N these say f^2 = g^2 = 0 and fg = -gf for
-- f = L_u, g = L_v: the hypotheses under which (1 + a f)(1 + b g)(1 + c z),
-- z = fg - gf, multiply as the Heisenberg group.
--
-- How the statements are proved. The basis is a function
-- `basisF : Fin 16 -> CD 4` and each relation is ONE statement quantified
-- over `Fin 16` (and, in the bounded versions, over `c : Fin 30` as well).
-- Such a statement cannot be closed by a single `refl` (the index is a
-- variable); it is closed by reflection: `CD k` has decidable equality
-- (`eqCD`), `all?` decides the quantified statement, and `toWitness`
-- turns the computed `yes` into a proof. The decision procedure is the
-- proof: nothing is postulated.
--
-- What is and is not proved:
--   * proved: the three relations for every `i : Fin 16` and every
--     `c < 30` (`*-bounded`), and, as corollaries, for the primes
--     p = 5 (c = 2, N = 5), p = 13 (c = 5, N = 26), p = 17 (c = 4, N = 17);
--   * NOT proved: the statement for all natural numbers `c`. The identities
--     are polynomial in `c`, but this file only checks `c < 30`; a
--     symbolic proof would need to normalize `mul` on a variable `c`;
--   * NOT formalized here: the Heisenberg group, and the homomorphism into
--     the matrices.
-- The pairs among e_1, ..., e_4 all lie in the lower half of `CD 4`, where
-- the anticommutators S_ij vanish (H10); that is why the relations hold
-- exactly. For seeds with genuine zero-divisor structure they fail (H17).
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations where

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
-- `Hypotheses`), and the helper `times`
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

-- n copies of x
times : ℕ → CD 4 → CD 4
times ℕzero    x = zeroCD 4
times (ℕsuc n) x = add 4 x (times n x)

------------------------------------------------------------------------
-- The seeds and the three relations, as statements over Fin 16
------------------------------------------------------------------------

u v : ℕ → CD 4
u c = add 4 (basis 4 1) (times c (basis 4 2))
v c = add 4 (basis 4 3) (times c (basis 4 4))

UU VV : ℕ → ℕ → Set
UU c N = (i : Fin 16) → mul 4 (u c) (mul 4 (u c) (basisF i)) ≡ neg 4 (times N (basisF i))
VV c N = (i : Fin 16) → mul 4 (v c) (mul 4 (v c) (basisF i)) ≡ neg 4 (times N (basisF i))

UV : ℕ → Set
UV c = (i : Fin 16) →
  add 4 (mul 4 (u c) (mul 4 (v c) (basisF i))) (mul 4 (v c) (mul 4 (u c) (basisF i)))
  ≡ zeroCD 4

-- N = 1 + c^2, and the bounded statements, quantified over c < 30 as well.
N-of : ℕ → ℕ
N-of c = ℕsuc (c * c)

UU-bounded VV-bounded : Set
UU-bounded = (c : Fin 30) → UU (toℕ c) (N-of (toℕ c))
VV-bounded = (c : Fin 30) → VV (toℕ c) (N-of (toℕ c))

UV-bounded : Set
UV-bounded = (c : Fin 30) → UV (toℕ c)

uu-bounded : UU-bounded
uu-bounded = toWitness {Q = all? (λ c → all? (λ i →
  eqCD 4 (mul 4 (u (toℕ c)) (mul 4 (u (toℕ c)) (basisF i)))
         (neg 4 (times (N-of (toℕ c)) (basisF i)))))} tt

vv-bounded : VV-bounded
vv-bounded = toWitness {Q = all? (λ c → all? (λ i →
  eqCD 4 (mul 4 (v (toℕ c)) (mul 4 (v (toℕ c)) (basisF i)))
         (neg 4 (times (N-of (toℕ c)) (basisF i)))))} tt

uv-bounded : UV-bounded
uv-bounded = toWitness {Q = all? (λ c → all? (λ i →
  eqCD 4 (add 4 (mul 4 (u (toℕ c)) (mul 4 (v (toℕ c)) (basisF i)))
                 (mul 4 (v (toℕ c)) (mul 4 (u (toℕ c)) (basisF i))))
         (zeroCD 4)))} tt

------------------------------------------------------------------------
-- The primes used in H15 / H17 as corollaries
------------------------------------------------------------------------

-- p = 5:  c = 2, N = 5
uu-p5 : UU 2 5
uu-p5 = uu-bounded (suc (suc zero))
vv-p5 : VV 2 5
vv-p5 = vv-bounded (suc (suc zero))
uv-p5 : UV 2
uv-p5 = uv-bounded (suc (suc zero))

-- p = 13: c = 5, N = 26 = 2 * 13
uu-p13 : UU 5 26
uu-p13 = uu-bounded (suc (suc (suc (suc (suc zero)))))
vv-p13 : VV 5 26
vv-p13 = vv-bounded (suc (suc (suc (suc (suc zero)))))
uv-p13 : UV 5
uv-p13 = uv-bounded (suc (suc (suc (suc (suc zero)))))

-- p = 17: c = 4, N = 17
uu-p17 : UU 4 17
uu-p17 = uu-bounded (suc (suc (suc (suc zero))))
vv-p17 : VV 4 17
vv-p17 = vv-bounded (suc (suc (suc (suc zero))))
uv-p17 : UV 4
uv-p17 = uv-bounded (suc (suc (suc (suc zero))))
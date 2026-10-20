-- CayleyDicksonQuiver.AbelianCurse.CliffordSectors
--
-- Sector decomposition of the Heisenberg group of `CliffordContraction`.
--
-- At N = 0 the elements 1 + aX + bY + cZ form a central extension
--
--     1  ->  ℤ Z  ->  H  ->  ℤ^2  ->  1,       (a,b,c)(a',b',c') =
--                                                (a + a', b + b', c + c' + ω),
--     ω = a b' - b a'                           (`unip-mul`).
--
-- Fix a modulus M and a character χ_k of the centre, Z ↦ ζ^k, ζ a primitive
-- M-th root of unity.  In the sector of χ_k the extension is pushed out along
-- χ_k, and its cocycle becomes  k ω  (mod M).  Questions answered here:
--
--   * when is the cocycle of the sector trivial (a coboundary)?
--   * if so, what is the morphism (the section) that trivialises it?
--
-- Answer: the sector of χ_k is trivial exactly when M | 2k, and then the
-- section is  (a,b) ↦ (a, b, k a b).  The factor 2 is the 2 in [X,Y] = 2Z:
-- the commutator subgroup of H is {1 + 2kZ}, not all of the centre, so the
-- trivial sectors are the characters of H^ab, i.e. those with χ(Z)^2 = 1.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.CliffordSectors where

import CayleyDicksonQuiver.AbelianCurse.CliffordContraction as CC
open CC using (unip; commutator; commutator-formula; c₃)
open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.Integer.Divisibility.Signed using (_∣_; divides; ∣m⇒∣m*n; _∣?_)
open import Data.Integer.Solver using (module +-*-Solver)
open import Data.Product using (_×_; _,_)
open import Relation.Nullary using (¬_)
open import Relation.Nullary.Decidable using (toWitnessFalse)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; trans; sym; subst)
open +-*-Solver using (solve; _:=_; con; _:+_; _:*_; :-_)

------------------------------------------------------------------------
-- The cocycle of the extension, and the cocycle of a sector
------------------------------------------------------------------------

ω : ℤ → ℤ → ℤ → ℤ → ℤ
ω a b a' b' = a * b' + - (b * a')

-- in the sector of χ_k the cocycle is k ω
ωₖ : ℤ → ℤ → ℤ → ℤ → ℤ → ℤ
ωₖ k a b a' b' = k * ω a b a' b'

-- the group law of `CliffordContraction`, restated as the cocycle condition
unip-cocycle : ∀ a b c a' b' c' →
  CC.mulN (pos 0) (unip a b c) (unip a' b' c') ≡ unip (a + a') (b + b') ((c + c') + ω a b a' b')
unip-cocycle = CC.unip-mul

-- the commutator pairing is the antisymmetrisation of the cocycle: it is 2ω.
-- In the sector of χ_k the commutator therefore has exponent 2 k ω.
commutator-exponent : ∀ k a b c a' b' c' →
  k * c₃ (commutator a b c a' b' c') ≡ (pos 2 * k) * ω a b a' b'
commutator-exponent k a b c a' b' c' =
  trans (cong (λ t → k * c₃ t) (commutator-formula a b c a' b' c'))
        (solve 5 (λ k a b a' b' → k :* (con (pos 2) :* ((a :* b') :+ (:- (b :* a'))))
                                  := (con (pos 2) :* k) :* ((a :* b') :+ (:- (b :* a')))) refl k a b a' b')

------------------------------------------------------------------------
-- The trivialising morphism
------------------------------------------------------------------------
-- The candidate section of the sector of χ_k is s(a,b) = (a, b, q_k(a,b))
-- with q_k(a,b) = k a b.  It is a homomorphism iff the defect
--     s(g) s(g')  -  s(g g')   in the central coordinate
-- vanishes, and that defect is  k ω - δq_k.

qₖ : ℤ → ℤ → ℤ → ℤ
qₖ k a b = k * (a * b)

δqₖ : ℤ → ℤ → ℤ → ℤ → ℤ → ℤ
δqₖ k a b a' b' = (qₖ k (a + a') (b + b') + - (qₖ k a b)) + - (qₖ k a' b')

defect : ℤ → ℤ → ℤ → ℤ → ℤ → ℤ
defect k a b a' b' = ωₖ k a b a' b' + - (δqₖ k a b a' b')

-- the defect is explicit:  -2 k a' b
defect-formula : ∀ k a b a' b' → defect k a b a' b' ≡ (- (pos 2 * k)) * (a' * b)
defect-formula = solve 5 (λ k a b a' b' →
  (k :* ((a :* b') :+ (:- (b :* a')))) :+ (:- ((((k :* ((a :+ a') :* (b :+ b'))) :+ (:- (k :* (a :* b)))) :+ (:- (k :* (a' :* b'))))))
  := (:- (con (pos 2) :* k)) :* (a' :* b)) refl

-- the sector of χ_k is trivial modulo M when its section is a homomorphism mod M
Trivial : ℤ → ℤ → Set
Trivial M k = ∀ a b a' b' → M ∣ defect k a b a' b'

-- if M | 2k, the section (a,b) ↦ (a,b,k a b) trivialises the sector
trivial-if : ∀ M k → M ∣ (pos 2 * k) → Trivial M k
trivial-if M k M∣2k a b a' b' =
  subst (M ∣_) (sym (defect-formula k a b a' b'))
        (∣m⇒∣m*n (a' * b) (neg-∣ M∣2k))
  where
  neg-∣ : ∀ {m z} → m ∣ z → m ∣ - z
  neg-∣ {m} (divides q eq) =
    divides (- q) (trans (cong -_ eq) (solve 2 (λ q m → :- (q :* m) := (:- q) :* m) refl q m))

-- conversely, if the sector is trivial then M | 2k
-- (take (a,b,a',b') = (0,1,1,0), where the defect is -2k)
trivial-only-if : ∀ M k → Trivial M k → M ∣ (pos 2 * k)
trivial-only-if M k t with t (pos 0) (pos 1) (pos 1) (pos 0)
... | divides q eq =
  divides (- q)
    (trans (solve 1 (λ k → con (pos 2) :* k := :- ((:- (con (pos 2) :* k)) :* (con (pos 1) :* con (pos 1)))) refl k)
    (trans (cong (λ t → - t) (trans (sym (defect-formula k (pos 0) (pos 1) (pos 1) (pos 0))) eq))
           (solve 2 (λ q m → :- (q :* m) := (:- q) :* m) refl q M)))

-- the sector is trivial modulo M exactly when M | 2k
sector-trivial-iff : ∀ M k → (Trivial M k → M ∣ (pos 2 * k)) × (M ∣ (pos 2 * k) → Trivial M k)
sector-trivial-iff M k = trivial-only-if M k , trivial-if M k

------------------------------------------------------------------------
-- Which sectors are trivial
------------------------------------------------------------------------
-- The trivial character is always trivial.
sector-zero : ∀ M → Trivial M (pos 0)
sector-zero M = trivial-if M (pos 0) (divides (pos 0) refl)

-- M = 2, k = 1: χ(Z) = -1.  Here 2k = M, so the sector IS trivial although
-- χ is nontrivial: this is the character of H^ab that sees the Z/2.
sector-2-1-trivial : Trivial (pos 2) (pos 1)
sector-2-1-trivial = trivial-if (pos 2) (pos 1) (divides (pos 1) refl)

-- M = 4, k = 2: again χ(Z) = -1.
sector-4-2-trivial : Trivial (pos 4) (pos 2)
sector-4-2-trivial = trivial-if (pos 4) (pos 2) (divides (pos 1) refl)

-- M = 3, k = 1: χ(Z) a primitive cube root of unity; 3 does not divide 2,
-- so this sector is NOT trivial: the Heisenberg group mod 3 has no section.
sector-3-1-nontrivial : ¬ Trivial (pos 3) (pos 1)
sector-3-1-nontrivial t = toWitnessFalse {Q = pos 3 ∣? pos 2} _ (trivial-only-if (pos 3) (pos 1) t)

-- M = 4, k = 1: χ(Z) = i.  4 does not divide 2: nontrivial.
sector-4-1-nontrivial : ¬ Trivial (pos 4) (pos 1)
sector-4-1-nontrivial t = toWitnessFalse {Q = pos 4 ∣? pos 2} _ (trivial-only-if (pos 4) (pos 1) t)

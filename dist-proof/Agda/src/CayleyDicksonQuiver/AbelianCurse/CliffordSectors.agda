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
open import Data.Integer.Properties using (+-comm)
open import Data.Product using (_×_; _,_; Σ)
open import Relation.Nullary using (¬_)
open import Relation.Nullary.Decidable using (toWitnessFalse)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂; trans; sym; subst)
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

------------------------------------------------------------------------
-- Gauge transformations do not change the class
------------------------------------------------------------------------
-- A gauge is an arbitrary function f : ℤ² → ℤ (a change of the set-theoretic
-- section); it changes the cocycle by the coboundary  δf.  The sector is
-- trivial in *some* gauge when k ω - δf vanishes mod M for some f.  This is
-- not stronger than the sector being trivial in the gauge q_k used above:

δ : (ℤ → ℤ → ℤ) → ℤ → ℤ → ℤ → ℤ → ℤ
δ f a b a' b' = (f (a + a') (b + b') + - f a b) + - f a' b'

GaugeTrivial : ℤ → ℤ → Set
GaugeTrivial M k = Σ (ℤ → ℤ → ℤ) (λ f → ∀ a b a' b' → M ∣ (ωₖ k a b a' b' + - δ f a b a' b'))

-- the gauge q_k is one such f
gauge-trivial-if : ∀ M k → M ∣ (pos 2 * k) → GaugeTrivial M k
gauge-trivial-if M k h = (λ a b → qₖ k a b) , (λ a b a' b' → trivial-if M k h a b a' b')

-- If some gauge trivialises the sector then M | 2k.  Take the two orderings
-- (g,g') = ((1,0),(0,1)) and ((0,1),(1,0)): δf is symmetric in (g,g'), the
-- cocycle k ω is antisymmetric, so their difference is 2k.
gauge-trivial-only-if : ∀ M k → GaugeTrivial M k → M ∣ (pos 2 * k)
gauge-trivial-only-if M k (f , t)
  with t (pos 1) (pos 0) (pos 0) (pos 1) | t (pos 0) (pos 1) (pos 1) (pos 0)
... | divides q₁ e₁ | divides q₂ e₂ =
  divides (q₁ + - q₂)
    (trans (solve 4 (λ k A B C → con (pos 2) :* k
              := (k :* con (pos 1) :+ :- ((A :+ :- B) :+ :- C))
                 :+ :- (k :* (:- con (pos 1)) :+ :- ((A :+ :- C) :+ :- B))) refl
              k (f (pos 1) (pos 1)) (f (pos 1) (pos 0)) (f (pos 0) (pos 1)))
    (trans (cong₂ (λ u v → u + - v) e₁ e₂)
           (solve 3 (λ a b m → a :* m :+ :- (b :* m) := (a :+ :- b) :* m) refl q₁ q₂ M)))

-- the class of the sector does not depend on the gauge
gauge-independence : ∀ M k → (GaugeTrivial M k → Trivial M k) × (Trivial M k → GaugeTrivial M k)
gauge-independence M k =
  (λ g → trivial-if M k (gauge-trivial-only-if M k g)) ,
  (λ t → gauge-trivial-if M k (trivial-only-if M k t))

------------------------------------------------------------------------
-- Twisting by a line bundle (a character of H) keeps the trivial sectors
------------------------------------------------------------------------
-- A character μ of H is trivial on [H,H] = {1 + 2jZ}, so μ(Z)^2 = 1, i.e.
-- the exponent j of μ(Z) = ζ^j satisfies M | 2j.  Tensoring a module of the
-- sector k by μ moves it to the sector k + j, and the set of sectors with
-- M | 2k is closed under such shifts.

∣-sum : ∀ {m a b} → m ∣ a → m ∣ b → m ∣ a + b
∣-sum {m} (divides u ea) (divides v eb) =
  divides (u + v)
    (trans (cong₂ _+_ ea eb) (solve 3 (λ x y z → x :* z :+ y :* z := (x :+ y) :* z) refl u v m))

twist-preserves-trivial : ∀ M j k → M ∣ (pos 2 * j) → M ∣ (pos 2 * k) → M ∣ (pos 2 * (j + k))
twist-preserves-trivial M j k hj hk =
  subst (M ∣_) (solve 2 (λ j k → con (pos 2) :* j :+ con (pos 2) :* k := con (pos 2) :* (j :+ k)) refl j k)
        (∣-sum hj hk)

-- No gauge whatsoever trivialises the sectors (M,k) = (3,1) and (4,1).
gauge-3-1-nontrivial : ¬ GaugeTrivial (pos 3) (pos 1)
gauge-3-1-nontrivial g = toWitnessFalse {Q = pos 3 ∣? pos 2} _ (gauge-trivial-only-if (pos 3) (pos 1) g)

gauge-4-1-nontrivial : ¬ GaugeTrivial (pos 4) (pos 1)
gauge-4-1-nontrivial g = toWitnessFalse {Q = pos 4 ∣? pos 2} _ (gauge-trivial-only-if (pos 4) (pos 1) g)

-- ... while (2,1) and (4,2) are trivial in some gauge.
gauge-2-1-trivial : GaugeTrivial (pos 2) (pos 1)
gauge-2-1-trivial = gauge-trivial-if (pos 2) (pos 1) (divides (pos 1) refl)

------------------------------------------------------------------------
-- A finite cover that kills the class of a revived sector
------------------------------------------------------------------------
-- There is no space here, hence no open cover or atlas; the algebraic
-- counterpart is a finite-index sublattice nℤ² ⊂ ℤ² (multiplication by n)
-- along which the cocycle of the extension is pulled back.  The class of
-- the sector is a "gerbe class" in H²(ℤ²; ℤ/M) ≅ ℤ/M; pulling back along
-- ×n multiplies the class by n², and the pulled-back sector is trivial
-- exactly when M | 2 k n².  Over a field of characteristic 0 the factor
-- n² is invertible, so no finite cover kills a nonzero class there.

-- the pullback of the cocycle of the sector k along ×n is the cocycle of
-- the sector k n²
pullback-cocycle : ∀ k n a b a' b' →
  ωₖ k (n * a) (n * b) (n * a') (n * b') ≡ ωₖ (k * (n * n)) a b a' b'
pullback-cocycle = solve 6 (λ k n a b a' b' →
  k :* (((n :* a) :* (n :* b')) :+ (:- ((n :* b) :* (n :* a'))))
  := (k :* (n :* n)) :* ((a :* b') :+ (:- (b :* a')))) refl

-- ... and the trivialising section pulls back to the trivialising section
pullback-q : ∀ k n a b → qₖ k (n * a) (n * b) ≡ qₖ (k * (n * n)) a b
pullback-q = solve 4 (λ k n a b →
  k :* ((n :* a) :* (n :* b)) := (k :* (n :* n)) :* (a :* b)) refl

-- the pulled-back sector is trivial iff M | 2 k n²
cover-trivialises : ∀ M k n → M ∣ (pos 2 * (k * (n * n))) → Trivial M (k * (n * n))
cover-trivialises M k n = trivial-if M (k * (n * n))

cover-needs : ∀ M k n → Trivial M (k * (n * n)) → M ∣ (pos 2 * (k * (n * n)))
cover-needs M k n = trivial-only-if M (k * (n * n))

-- the cover ×M kills every class: M | 2 k M²
cover-by-M : ∀ M k → Trivial M (k * (M * M))
cover-by-M M k = cover-trivialises M k M
  (divides (pos 2 * (k * M))
    (solve 2 (λ k m → con (pos 2) :* (k :* (m :* m)) := (con (pos 2) :* (k :* m)) :* m) refl k M))

-- examples.  (3,1) is not trivial, and neither is its pullback along ×2
-- (class 4 · 1 · 2 = 8 mod 3 ≠ 0), but the cover ×3 kills it.
sector-3-1-by-2-nontrivial : ¬ Trivial (pos 3) (pos 1 * (pos 2 * pos 2))
sector-3-1-by-2-nontrivial t =
  toWitnessFalse {Q = pos 3 ∣? pos 8} _ (cover-needs (pos 3) (pos 1) (pos 2) t)

sector-3-1-by-3-trivial : Trivial (pos 3) (pos 1 * (pos 3 * pos 3))
sector-3-1-by-3-trivial = cover-by-M (pos 3) (pos 1)

-- (4,1) is not trivial but the double cover ×2 kills it: 4 | 2 · 1 · 4.
sector-4-1-by-2-trivial : Trivial (pos 4) (pos 1 * (pos 2 * pos 2))
sector-4-1-by-2-trivial = cover-trivialises (pos 4) (pos 1) (pos 2) (divides (pos 2) refl)
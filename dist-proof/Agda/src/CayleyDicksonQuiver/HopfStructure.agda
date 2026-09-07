-- CayleyDicksonQuiver.HopfStructure
--
-- Bridge module: groundwork toward showing that signed basis elements
-- of `CD k` (Fin (ambient-dim k)-indexed, up to sign) form an instance
-- of `Algebra.WeakHopf`'s structures, via the group-like coproduct
-- Delta(e_A) = e_A (x) e_A on the twisted group algebra of (Z/2)^k
-- (Albuquerque & Majid 1999; Bulacu). This file knows about both
-- `CayleyDicksonQuiver` and `Algebra.WeakHopf`; neither of those files
-- knows about the other.
--
-- HONEST STATUS: this file does NOT yet construct a working
-- `IsWeakHopfAlgebra` instance. What it proves, fully and safely:
--   - a basis-vector encoding `basisVec` of `CD k` by bit-addresses,
--   - which basis vectors `conj` fixes vs. negates (`conj-basisVec`),
--   - the "same-half" and one "cross-half" quadrant multiplication
--     formulas for `mul` on basis vectors (`mul-basis-00`,
--     `mul-basis-01`).
-- What is still missing, identified precisely rather than guessed at:
-- the other two quadrant formulas (`mul-basis-10`, `mul-basis-11`) each
-- hit a `mul k _ (conj k (basisVec k _))` term that can only be
-- resolved into "+-or-minus the corresponding unconjugated product" via
-- bilinearity of `mul` over `neg` (`mul k (neg k x) y ≡ neg k (mul k x
-- y)` and the mirror law) -- which does not exist yet in
-- `CayleyDicksonQuiver.Hypotheses`. That bilinearity is the same
-- missing piece flagged earlier for the norm theorem (N(x) = x * conj
-- x is real); ℤ's own `neg-distribˡ-*` / `neg-distribʳ-*`
-- (`Data.Integer.Properties`) are the base case it would need. Once
-- built, `mul-basis-10`/`mul-basis-11` and then the full closure
-- theorem (product of two basis vectors is always +-or-minus a third)
-- and the `IsWeakHopfAlgebra` instance itself are the natural next
-- steps, in that order.
module CayleyDicksonQuiver.HopfStructure where

open import CayleyDicksonQuiver.Hypotheses
open import Data.Bool using (Bool; true; false; _xor_)
open import Data.Integer using (ℤ; 1ℤ)
open import Data.Nat using (ℕ) renaming (zero to ℕzero; suc to ℕsuc)
open import Data.Vec using (Vec; []; _∷_)
open import Relation.Binary.PropositionalEquality
  using (_≡_; refl; sym; trans; cong; cong₂)

------------------------------------------------------------------------
-- Sign
------------------------------------------------------------------------

data Sign : Set where
  plus minus : Sign

applySign : (k : ℕ) → Sign → CD k → CD k
applySign k plus  x = x
applySign k minus x = neg k x

-- Threading a sign through a pair whose zero-side component is
-- literally `zeroCD k` -- needed repeatedly below, since `applySign`
-- does not commute with pairing definitionally in the `minus` case
-- (negation touches both components), only propositionally, and only
-- because `neg k (zeroCD k) ≡ zeroCD k`.

apply-sign-pair-zeroR : (k : ℕ) (s : Sign) (X : CD k) →
  applySign (ℕsuc k) s (X , zeroCD k) ≡ (applySign k s X , zeroCD k)
apply-sign-pair-zeroR k plus  X = refl
apply-sign-pair-zeroR k minus X = cong (λ z → (neg k X , z)) (neg-zeroCD k)

apply-sign-pair-zeroL : (k : ℕ) (s : Sign) (Y : CD k) →
  applySign (ℕsuc k) s (zeroCD k , Y) ≡ (zeroCD k , applySign k s Y)
apply-sign-pair-zeroL k plus  Y = refl
apply-sign-pair-zeroL k minus Y = cong (λ z → (z , neg k Y)) (neg-zeroCD k)

------------------------------------------------------------------------
-- Basis vectors, addressed by bit-vectors
------------------------------------------------------------------------
-- `Addr k` plays the role of `Fin (ambient-dim k)` / (Z/2)^k here,
-- represented as an explicit bit-vector rather than `Fin` so that
-- `basisVec` and its properties can be proved by direct structural
-- recursion, without needing separate Fin-splitting lemmas.

Addr : ℕ → Set
Addr k = Vec Bool k

basisVec : (k : ℕ) → Addr k → CD k
basisVec ℕzero    []            = 1ℤ
basisVec (ℕsuc k) (false ∷ bs)  = (basisVec k bs , zeroCD k)
basisVec (ℕsuc k) (true  ∷ bs)  = (zeroCD k , basisVec k bs)

-- XOR of addresses -- the group operation of (Z/2)^k.
_⊕_ : ∀ {k} → Addr k → Addr k → Addr k
[]       ⊕ []       = []
(a ∷ as) ⊕ (b ∷ bs)  = (a xor b) ∷ (as ⊕ bs)

-- plus iff every bit is false.
signOf : ∀ {k} → Addr k → Sign
signOf []           = plus
signOf (false ∷ bs) = signOf bs
signOf (true  ∷ bs) = minus

------------------------------------------------------------------------
-- conj on basis vectors: fixed exactly at the all-false address
------------------------------------------------------------------------
-- Matches (and generalizes to every level, not just the k=4 witness
-- used before) the fact that the "real axis" is 1-dimensional
-- (`Fix-is-real-part` in `Hypotheses.agda`): the all-false address is
-- the real axis, and every other basis vector is purely imaginary
-- (negated by `conj`), regardless of which bits are set.

conj-basisVec : (k : ℕ) (a : Addr k) →
  conj k (basisVec k a) ≡ applySign k (signOf a) (basisVec k a)
conj-basisVec ℕzero [] = refl
conj-basisVec (ℕsuc k) (false ∷ bs) =
  trans (cong₂ _,_ (conj-basisVec k bs) (neg-zeroCD k))
        (sym (apply-sign-pair-zeroR k (signOf bs) (basisVec k bs)))
conj-basisVec (ℕsuc k) (true ∷ bs) =
  trans (cong₂ _,_ (conj-zeroCD k) refl)
        (sym (apply-sign-pair-zeroL k minus (basisVec k bs)))

------------------------------------------------------------------------
-- Quadrant formulas for mul on basis vectors
------------------------------------------------------------------------
-- `mul`'s doubling formula treats the top bit of each argument as
-- choosing one of four "quadrants"; each quadrant reduces to a plain
-- level-k `mul` via the zero/identity lemmas already in
-- `Hypotheses.agda`. Two of the four quadrants ("same half": 00 and
-- 11; "cross half": 01 and 10) are done below for 00 and 01 -- 11 and
-- 10 are the two blocked on `mul`-bilinearity, per the header note.

-- Same half, both false: reduces cleanly, no conjugate of a nonzero
-- basis vector ever appears (the conjugate that does appear is
-- multiplied straight into a `zeroCD k`, so it is absorbed regardless
-- of its value).
mul-basis-00 : (k : ℕ) (p q : Addr k) →
  mul (ℕsuc k) (basisVec k p , zeroCD k) (basisVec k q , zeroCD k)
    ≡ (mul k (basisVec k p) (basisVec k q) , zeroCD k)
mul-basis-00 k p q = cong₂ _,_ first-eq second-eq
  where
  first-eq : add k (mul k (basisVec k p) (basisVec k q))
                    (neg k (mul k (conj k (zeroCD k)) (zeroCD k)))
             ≡ mul k (basisVec k p) (basisVec k q)
  first-eq =
    trans (cong₂ (add k) refl
                  (trans (cong (neg k) (mul-zeroʳ k (conj k (zeroCD k))))
                         (neg-zeroCD k)))
          (add-identityʳ k (mul k (basisVec k p) (basisVec k q)))

  second-eq : add k (mul k (zeroCD k) (basisVec k p))
                     (mul k (zeroCD k) (conj k (basisVec k q)))
              ≡ zeroCD k
  second-eq =
    trans (cong₂ (add k) (mul-zeroˡ k (basisVec k p))
                          (mul-zeroˡ k (conj k (basisVec k q))))
          (add-identityˡ k (zeroCD k))

-- Cross half, p false / q true: also reduces cleanly -- the conjugate
-- that appears (`conj k (basisVec k q)`) is likewise multiplied
-- straight into a `zeroCD k` and absorbed regardless of its value.
-- The surviving product comes out as `basisVec k q * basisVec k p`
-- (arguments swapped) rather than `basisVec k p * basisVec k q`.
mul-basis-01 : (k : ℕ) (p q : Addr k) →
  mul (ℕsuc k) (basisVec k p , zeroCD k) (zeroCD k , basisVec k q)
    ≡ (zeroCD k , mul k (basisVec k q) (basisVec k p))
mul-basis-01 k p q = cong₂ _,_ first-eq second-eq
  where
  first-eq : add k (mul k (basisVec k p) (zeroCD k))
                    (neg k (mul k (conj k (basisVec k q)) (zeroCD k)))
             ≡ zeroCD k
  first-eq =
    trans (cong₂ (add k) (mul-zeroʳ k (basisVec k p))
                          (trans (cong (neg k) (mul-zeroʳ k (conj k (basisVec k q))))
                                 (neg-zeroCD k)))
          (add-identityˡ k (zeroCD k))

  second-eq : add k (mul k (basisVec k q) (basisVec k p))
                     (mul k (zeroCD k) (conj k (zeroCD k)))
              ≡ mul k (basisVec k q) (basisVec k p)
  second-eq =
    trans (cong₂ (add k) refl (mul-zeroˡ k (conj k (zeroCD k))))
          (add-identityʳ k (mul k (basisVec k q) (basisVec k p)))
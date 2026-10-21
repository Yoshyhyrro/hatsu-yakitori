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
--   - all four quadrant multiplication formulas for `mul` on basis
--     vectors (`mul-basis-00`, `mul-basis-01`, `mul-basis-10`,
--     `mul-basis-11`), each reducing `mul` at level k+1 to a single
--     `mul`/`applySign` at level k. The last two needed bilinearity of
--     `mul` over `neg` (`mul-neg-distribˡ`/`ʳ` in
--     `CayleyDicksonQuiver.Hypotheses`), which now exists,
--   - the closure theorem the four quadrant formulas were building
--     toward (`mul-basis-closure`): the product of any two basis
--     vectors, at every level, is again a basis vector up to sign, with
--     address `p ⊕ q` and sign given by a recursive `cocycle`. This is
--     the general, every-k, every-pair statement behind what was
--     otherwise only checked seed by seed at k=4 in
--     `CayleyDicksonQuiver.Hypotheses` (`triangle-product-*`,
--     `other-triangle-product-2-11`): those are exactly
--     `mul-basis-closure` instantiated at four concrete addresses.
-- What is still missing: `cocycle` is a real function, not yet shown
-- to be a genuine 2-cocycle (the identity a working `IsWeakHopfAlgebra`
-- instance would need is `cocycle`'s own associativity-compatibility
-- condition, not attempted here), and nothing here yet touches the
-- coproduct/counit/antipode side of `Algebra.WeakHopf` at all -- this
-- file closes the *product* structure on basis vectors, nothing more.
module CayleyDicksonQuiver.HopfStructure where

open import CayleyDicksonQuiver.Hypotheses
open import Data.Bool using (Bool; true; false; _xor_)
open import Data.Integer using (ℤ; 1ℤ)
open import Data.Nat using (ℕ) renaming (zero to ℕzero; suc to ℕsuc)
open import Data.Product using (_,_)
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
-- `Hypotheses.agda`. `mul-basis-00` (below) and `mul-basis-01` (further
-- down) are the "no bilinearity needed" ones; `mul-basis-11` and
-- `mul-basis-10` (below that) needed `mul-neg-distribˡ/ʳ`.

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

------------------------------------------------------------------------
-- The remaining two quadrants, unlocked by mul-neg-distribˡ/ʳ
------------------------------------------------------------------------

flipSign : Sign → Sign
flipSign plus  = minus
flipSign minus = plus

neg-applySign : (k : ℕ) (s : Sign) (x : CD k) →
  neg k (applySign k s x) ≡ applySign k (flipSign s) x
neg-applySign k plus  x = refl
neg-applySign k minus x = neg-neg k x

mul-applySign-left : (k : ℕ) (s : Sign) (x y : CD k) →
  mul k (applySign k s x) y ≡ applySign k s (mul k x y)
mul-applySign-left k plus  x y = refl
mul-applySign-left k minus x y = mul-neg-distribˡ k x y

mul-applySign-right : (k : ℕ) (s : Sign) (x y : CD k) →
  mul k x (applySign k s y) ≡ applySign k s (mul k x y)
mul-applySign-right k plus  x y = refl
mul-applySign-right k minus x y = mul-neg-distribʳ k x y

-- Same half, both true. The surviving product is
-- `basisVec q * basisVec p` (swapped, as in mul-basis-01), carrying an
-- extra sign flip from conjugating basisVec q.
mul-basis-11 : (k : ℕ) (p q : Addr k) →
  mul (ℕsuc k) (zeroCD k , basisVec k p) (zeroCD k , basisVec k q)
    ≡ (applySign k (flipSign (signOf q)) (mul k (basisVec k q) (basisVec k p)) , zeroCD k)
mul-basis-11 k p q = cong₂ _,_ first-eq second-eq
  where
  conjQ-step : mul k (conj k (basisVec k q)) (basisVec k p)
               ≡ applySign k (signOf q) (mul k (basisVec k q) (basisVec k p))
  conjQ-step =
    trans (cong (λ z → mul k z (basisVec k p)) (conj-basisVec k q))
          (mul-applySign-left k (signOf q) (basisVec k q) (basisVec k p))

  first-eq : add k (mul k (zeroCD k) (zeroCD k))
                    (neg k (mul k (conj k (basisVec k q)) (basisVec k p)))
             ≡ applySign k (flipSign (signOf q)) (mul k (basisVec k q) (basisVec k p))
  first-eq =
    trans (cong₂ (add k) (mul-zeroˡ k (zeroCD k)) (cong (neg k) conjQ-step))
          (trans (add-identityˡ k (neg k (applySign k (signOf q) (mul k (basisVec k q) (basisVec k p)))))
                 (neg-applySign k (signOf q) (mul k (basisVec k q) (basisVec k p))))

  second-eq : add k (mul k (basisVec k q) (zeroCD k))
                     (mul k (basisVec k p) (conj k (zeroCD k)))
              ≡ zeroCD k
  second-eq =
    trans (cong₂ (add k) (mul-zeroʳ k (basisVec k q))
                          (trans (cong (mul k (basisVec k p)) (conj-zeroCD k))
                                 (mul-zeroʳ k (basisVec k p))))
          (add-identityˡ k (zeroCD k))

-- Cross half, p true / q false.
mul-basis-10 : (k : ℕ) (p q : Addr k) →
  mul (ℕsuc k) (zeroCD k , basisVec k p) (basisVec k q , zeroCD k)
    ≡ (zeroCD k , applySign k (signOf q) (mul k (basisVec k p) (basisVec k q)))
mul-basis-10 k p q = cong₂ _,_ first-eq second-eq
  where
  first-eq : add k (mul k (zeroCD k) (basisVec k q))
                    (neg k (mul k (conj k (zeroCD k)) (basisVec k p)))
             ≡ zeroCD k
  first-eq =
    trans (cong₂ (add k) (mul-zeroˡ k (basisVec k q))
                          (cong (neg k) (trans (cong (λ z → mul k z (basisVec k p)) (conj-zeroCD k))
                                               (mul-zeroˡ k (basisVec k p)))))
          (trans (cong (add k (zeroCD k)) (neg-zeroCD k)) (add-identityˡ k (zeroCD k)))

  second-eq : add k (mul k (zeroCD k) (zeroCD k))
                     (mul k (basisVec k p) (conj k (basisVec k q)))
              ≡ applySign k (signOf q) (mul k (basisVec k p) (basisVec k q))
  second-eq =
    trans (cong₂ (add k) (mul-zeroˡ k (zeroCD k))
                          (trans (cong (mul k (basisVec k p)) (conj-basisVec k q))
                                 (mul-applySign-right k (signOf q) (basisVec k p) (basisVec k q))))
          (add-identityˡ k (applySign k (signOf q) (mul k (basisVec k p) (basisVec k q))))

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
------------------------------------------------------------------------
-- Closure: the product of two basis vectors is a basis vector
------------------------------------------------------------------------
-- The four quadrant formulas above each reduce `mul (suc k)` on basis
-- vectors to a plain level-k `mul` of basis vectors, but that level-k
-- product is itself an arbitrary `CD k` element as far as those lemmas
-- know -- nothing yet says it is *also* a signed basis vector. Packaging
-- all four quadrants into one induction on k closes that gap: the
-- product of any two basis vectors, at every level, is again a signed
-- basis vector, addressed by XOR and signed by the recursive `cocycle`
-- below (a case split on both arguments' leading bit matching each of
-- the four quadrant formulas in turn).

xor-comm : (a b : Bool) → a xor b ≡ b xor a
xor-comm true  true  = refl
xor-comm true  false = refl
xor-comm false true  = refl
xor-comm false false = refl

⊕-comm : ∀ {k} (p q : Addr k) → p ⊕ q ≡ q ⊕ p
⊕-comm []      []      = refl
⊕-comm (a ∷ p) (b ∷ q) = cong₂ _∷_ (xor-comm a b) (⊕-comm p q)

-- Sign multiplication: the group law of {plus, minus} ≅ Z/2.
_*S_ : Sign → Sign → Sign
plus  *S s     = s
minus *S plus  = minus
minus *S minus = plus

applySign-compose : (k : ℕ) (s1 s2 : Sign) (x : CD k) →
  applySign k s1 (applySign k s2 x) ≡ applySign k (s1 *S s2) x
applySign-compose k plus  s2    x = refl
applySign-compose k minus plus  x = refl
applySign-compose k minus minus x = neg-neg k x

-- The sign of `basisVec p * basisVec q`. Same-half cases (both `false`
-- or both `true`) recurse directly (`mul-basis-00`/`mul-basis-11`);
-- cross-half cases pick up the extra `signOf` factor `mul-basis-10`
-- carries (`mul-basis-01` does not). The `true`/`true` and `false`/
-- `true` clauses recurse on the *swapped* arguments, matching
-- `mul-basis-11`/`mul-basis-01`'s own `basisVec q * basisVec p` shape.
cocycle : ∀ {k} → Addr k → Addr k → Sign
cocycle {ℕzero}  []          []          = plus
cocycle {ℕsuc k} (false ∷ p) (false ∷ q) = cocycle p q
cocycle {ℕsuc k} (true  ∷ p) (true  ∷ q) = flipSign (signOf q) *S cocycle q p
cocycle {ℕsuc k} (true  ∷ p) (false ∷ q) = signOf q *S cocycle p q
cocycle {ℕsuc k} (false ∷ p) (true  ∷ q) = cocycle q p

mul-basis-closure : (k : ℕ) (p q : Addr k) →
  mul k (basisVec k p) (basisVec k q) ≡ applySign k (cocycle p q) (basisVec k (p ⊕ q))
mul-basis-closure ℕzero [] [] = refl
mul-basis-closure (ℕsuc k) (false ∷ p) (false ∷ q) =
  trans (mul-basis-00 k p q)
        (trans (cong₂ _,_ (mul-basis-closure k p q) refl)
               (sym (apply-sign-pair-zeroR k (cocycle p q) (basisVec k (p ⊕ q)))))
mul-basis-closure (ℕsuc k) (true ∷ p) (false ∷ q) =
  trans (mul-basis-10 k p q)
        (trans (cong (λ z → (zeroCD k , z))
                     (trans (cong (applySign k (signOf q)) (mul-basis-closure k p q))
                            (applySign-compose k (signOf q) (cocycle p q) (basisVec k (p ⊕ q)))))
               (sym (apply-sign-pair-zeroL k (signOf q *S cocycle p q) (basisVec k (p ⊕ q)))))
mul-basis-closure (ℕsuc k) (false ∷ p) (true ∷ q) =
  trans (mul-basis-01 k p q)
        (trans (cong (λ z → (zeroCD k , z))
                     (trans (mul-basis-closure k q p)
                            (cong (applySign k (cocycle q p)) (cong (basisVec k) (⊕-comm q p)))))
               (sym (apply-sign-pair-zeroL k (cocycle q p) (basisVec k (p ⊕ q)))))
mul-basis-closure (ℕsuc k) (true ∷ p) (true ∷ q) =
  trans (mul-basis-11 k p q)
        (trans (cong (λ z → (z , zeroCD k))
                     (cong (applySign k (flipSign (signOf q)))
                           (trans (mul-basis-closure k q p)
                                  (cong (applySign k (cocycle q p)) (cong (basisVec k) (⊕-comm q p))))))
               (trans (cong (λ z → (z , zeroCD k))
                            (applySign-compose k (flipSign (signOf q)) (cocycle q p) (basisVec k (p ⊕ q))))
                      (sym (apply-sign-pair-zeroR k (flipSign (signOf q) *S cocycle q p) (basisVec k (p ⊕ q))))))
-- CayleyDicksonQuiver.AbelianCurse.KummerFrobenius
--
-- Finite instances of the abelian / non-abelian contrast recorded in
-- the AC5 addendum and in AC9 of `note/AbelianCurseHypotheses.lagda.md`.
-- Everything here is a decidable computation on small natural numbers,
-- checked by `refl`; nothing is a theorem about all primes.
--
-- Abelian side. For an integer constant `a`, "is `a` a square modulo
-- `p`" is a function of `p` modulo `4|a|` (quadratic reciprocity). The
-- file checks this for `a = -1, 2, 3` over all primes in `[5, 400)`.
--
-- Non-abelian side. "Is `2` a cube modulo `p`", for `p = 1 (mod 3)`,
-- is not a function of `p` modulo anything. This is not provable by a
-- finite computation; what the file records is, for several moduli
-- `m`, an explicit pair of primes in the same residue class mod `m`
-- (and `= 1 mod 3`) that disagree. It also checks, over the same prime
-- range, two facts that explain the picture: for `p = 2 (mod 3)` the
-- number 2 is always a cube, and for `p = 1 (mod 3)` it is a cube
-- exactly when `p = x^2 + 27 y^2` (Gauss's criterion, finite instance).
--
-- Primality is established inside Agda by trial division. The cube and
-- square tests search all residues `0 .. p-1`.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.KummerFrobenius where

open import Data.Bool using (Bool; true; false; _∧_; _∨_; not)
open import Data.List using (List; []; _∷_; map; any; upTo; length)
open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _∸_; _≡ᵇ_; _≤ᵇ_)
open import Data.Nat.DivMod using (_%_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

------------------------------------------------------------------------
-- Local utility definitions for compatibility with newer stdlib versions
------------------------------------------------------------------------

boolFilter : {A : Set} → (A → Bool) → List A → List A
boolFilter p []       = []
boolFilter p (x ∷ xs) with p x
... | true  = x ∷ boolFilter p xs
... | false = boolFilter p xs

all : {A : Set} → (A → Bool) → List A → Bool
all p []       = true
all p (x ∷ xs) = p x ∧ all p xs

------------------------------------------------------------------------
-- Small decidable toolkit
------------------------------------------------------------------------

-- Remainder, total (the divisor 0 returns the dividend).
mod′ : ℕ → ℕ → ℕ
mod′ n zero    = n
mod′ n (suc k) = n % suc k

-- The numbers lo, lo+1, ..., hi-1.
range : ℕ → ℕ → List ℕ
range lo hi = map (lo +_) (upTo (hi ∸ lo))

is-prime : ℕ → Bool
is-prime n = (2 ≤ᵇ n) ∧ all (λ d → not (mod′ n d ≡ᵇ 0)) (range 2 n)

_⇔ᵇ_ : Bool → Bool → Bool
true  ⇔ᵇ b = b
false ⇔ᵇ b = not b

-- Primes in [lo, hi).
primes-in : ℕ → ℕ → List ℕ
primes-in lo hi = boolFilter is-prime (range lo hi)

-- Non-vacuity: the `all` statements below range over these lists, and
-- `all` over an empty list is trivially true. 76 primes in [5, 400),
-- 39 of them = 2 mod 3 and 37 of them = 1 mod 3.

primes-5-400-count : length (primes-in 5 400) ≡ 76
primes-5-400-count = refl

primes-2-mod-3-count :
  length (boolFilter (λ p → mod′ p 3 ≡ᵇ 2) (primes-in 5 400)) ≡ 39
primes-2-mod-3-count = refl

primes-1-mod-3-count :
  length (boolFilter (λ p → mod′ p 3 ≡ᵇ 1) (primes-in 5 400)) ≡ 37
primes-1-mod-3-count = refl

------------------------------------------------------------------------
-- The Kummer-type tests (exhaustive search over residues)
------------------------------------------------------------------------

-- Is -1 a square modulo p?
sqrt-minus-one : ℕ → Bool
sqrt-minus-one p = any (λ x → mod′ (x * x + 1) p ≡ᵇ 0) (upTo p)

-- Is 2 (respectively 3) a square modulo p?
sqrt-two : ℕ → Bool
sqrt-two p = any (λ x → mod′ (x * x) p ≡ᵇ mod′ 2 p) (upTo p)

sqrt-three : ℕ → Bool
sqrt-three p = any (λ x → mod′ (x * x) p ≡ᵇ mod′ 3 p) (upTo p)

-- Is 2 a cube modulo p?
cube-two : ℕ → Bool
cube-two p = any (λ x → mod′ (x * x * x) p ≡ᵇ mod′ 2 p) (upTo p)

------------------------------------------------------------------------
-- Abelian side: the answer is a function of p modulo 4|a|
------------------------------------------------------------------------
-- Checked for every prime in [5, 400).

minus-one-is-mod-4 :
  all (λ p → sqrt-minus-one p ⇔ᵇ (mod′ p 4 ≡ᵇ 1)) (primes-in 5 400) ≡ true
minus-one-is-mod-4 = refl

two-is-mod-8 :
  all (λ p → sqrt-two p ⇔ᵇ ((mod′ p 8 ≡ᵇ 1) ∨ (mod′ p 8 ≡ᵇ 7))) (primes-in 5 400) ≡ true
two-is-mod-8 = refl

three-is-mod-12 :
  all (λ p → sqrt-three p ⇔ᵇ ((mod′ p 12 ≡ᵇ 1) ∨ (mod′ p 12 ≡ᵇ 11))) (primes-in 5 400) ≡ true
three-is-mod-12 = refl

------------------------------------------------------------------------
-- Non-abelian side: "2 is a cube" is not a function of a residue class
------------------------------------------------------------------------
-- For p = 2 (mod 3), cubing is a bijection modulo p, so 2 is a cube.

two-is-cube-when-2-mod-3 :
  all cube-two (boolFilter (λ p → mod′ p 3 ≡ᵇ 2) (primes-in 5 400)) ≡ true
two-is-cube-when-2-mod-3 = refl

-- For p = 1 (mod 3), 2 is a cube exactly when p = x^2 + 27 y^2. The
-- search bounds (x < 21, y < 4) suffice for p < 400, since then
-- x^2 <= p < 400 and 27 y^2 <= p < 400.

rep-x²+27y² : ℕ → Bool
rep-x²+27y² p = any (λ y → any (λ x → (x * x + 27 * (y * y)) ≡ᵇ p) (upTo 21)) (upTo 4)

gauss-criterion-below-400 :
  all (λ p → cube-two p ⇔ᵇ rep-x²+27y² p)
      (boolFilter (λ p → mod′ p 3 ≡ᵇ 1) (primes-in 5 400)) ≡ true
gauss-criterion-below-400 = refl

-- Collisions: two primes in the same residue class modulo m, both
-- = 1 mod 3, one with 2 a cube and one without. The first prime is the
-- cube one.

collision : ℕ → ℕ → ℕ → Bool
collision m p q =
  is-prime p ∧ is-prime q ∧ (mod′ p 3 ≡ᵇ 1) ∧ (mod′ p m ≡ᵇ mod′ q m)
  ∧ cube-two p ∧ not (cube-two q)

collision-mod-3  : collision 3  31  7   ≡ true
collision-mod-3  = refl

collision-mod-6  : collision 6  31  7   ≡ true
collision-mod-6  = refl

collision-mod-12 : collision 12 31  7   ≡ true
collision-mod-12 = refl

collision-mod-18 : collision 18 31  13  ≡ true
collision-mod-18 = refl

collision-mod-36 : collision 36 43  7   ≡ true
collision-mod-36 = refl

collision-mod-60 : collision 60 43  103 ≡ true
collision-mod-60 = refl

collision-mod-84 : collision 84 157 73  ≡ true
collision-mod-84 = refl
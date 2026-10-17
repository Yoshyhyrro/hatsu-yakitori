-- CayleyDicksonQuiver.MZV.Stuffle
--
-- The stuffle product of index words, with its weight, admissibility
-- and depth bound. Commutativity and associativity are not treated.
module CayleyDicksonQuiver.MZV.Stuffle where

open import CayleyDicksonQuiver.MZV.IndexWords
open import CayleyDicksonQuiver.MZV.FormalSum
open import Data.Bool using (Bool; false; true)
open import Data.List using (List; []; _∷_)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; suc; _+_; _≤_; s≤s)
open import Data.Nat.Properties
  using (+-assoc; +-comm; +-identityʳ; +-suc; ≤-trans; ≤-reflexive; +-monoʳ-≤; n≤1+n)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong)

-- `stuffle x y` sums over the interleavings of `x` and `y`, where a
-- letter of `x` and a letter of `y` may also be merged into their sum.

stuffle : IndexWord → IndexWord → FormalSum
stuffle []       ys       = (ys , 1) ∷ []
stuffle (x ∷ xs) []       = (x ∷ xs , 1) ∷ []
stuffle (x ∷ xs) (y ∷ ys) =
  add-sum (add-sum (prefix-letter x (stuffle xs (y ∷ ys)))
                   (prefix-letter y (stuffle (x ∷ xs) ys)))
          (prefix-letter (x + y) (stuffle xs ys))

stuffle-checks : List (IndexWord × IndexWord × FormalSum)
stuffle-checks =
  (2 ∷ [] , 3 ∷ [] ,
    (2 ∷ 3 ∷ [] , 1) ∷ (3 ∷ 2 ∷ [] , 1) ∷ (5 ∷ [] , 1) ∷ []) ∷
  (1 ∷ [] , 1 ∷ [] ,
    (1 ∷ 1 ∷ [] , 2) ∷ (2 ∷ [] , 1) ∷ []) ∷
  (2 ∷ 1 ∷ [] , 3 ∷ [] ,
    (2 ∷ 1 ∷ 3 ∷ [] , 1) ∷ (2 ∷ 3 ∷ 1 ∷ [] , 1) ∷ (2 ∷ 4 ∷ [] , 1) ∷
    (3 ∷ 2 ∷ 1 ∷ [] , 1) ∷ (5 ∷ 1 ∷ [] , 1) ∷ []) ∷ []

stuffle-checks-agree :
  All (λ (x , y , s) → stuffle x y ≡ s) stuffle-checks
stuffle-checks-agree = refl ∷ refl ∷ refl ∷ []

------------------------------------------------------------------------
-- Weight of the terms of a stuffle product
------------------------------------------------------------------------

-- Weight: every term of `stuffle x y` has weight `weight x + weight y`.

prefix-letter-weight : (m n : ℕ) (xs : FormalSum) →
  AllKeys (λ w → weight w ≡ n) xs →
  AllKeys (λ w → weight w ≡ m + n) (prefix-letter m xs)
prefix-letter-weight m n []              []         = []
prefix-letter-weight m n ((w , c) ∷ xs)  (h ∷ hs)   =
  cong (m +_) h ∷ prefix-letter-weight m n xs hs

swap-inner : (y a b : ℕ) → y + (a + b) ≡ a + (y + b)
swap-inner y a b =
  trans (sym (+-assoc y a b))
        (trans (cong (_+ b) (+-comm y a)) (+-assoc a y b))

rearrange : (x a y b : ℕ) → (x + y) + (a + b) ≡ (x + a) + (y + b)
rearrange x a y b =
  trans (+-assoc x y (a + b))
        (trans (cong (x +_) (swap-inner y a b))
               (sym (+-assoc x a (y + b))))

stuffle-weight : (x y : IndexWord) →
  AllKeys (λ w → weight w ≡ weight x + weight y) (stuffle x y)
stuffle-weight []       y        = refl ∷ []
stuffle-weight (x ∷ xs) []       = sym (+-identityʳ (weight (x ∷ xs))) ∷ []
stuffle-weight (x ∷ xs) (y ∷ ys) =
  add-sum-keys _ _
    (add-sum-keys _ _
      (keys-map
        (λ w h → trans h (sym (+-assoc x (weight xs) (y + weight ys))))
        _
        (prefix-letter-weight x (weight xs + (y + weight ys)) _
          (stuffle-weight xs (y ∷ ys))))
      (keys-map
        (λ w h → trans h (swap-inner y (x + weight xs) (weight ys)))
        _
        (prefix-letter-weight y ((x + weight xs) + weight ys) _
          (stuffle-weight (x ∷ xs) ys))))
    (keys-map
      (λ w h → trans h (rearrange x (weight xs) y (weight ys)))
      _
      (prefix-letter-weight (x + y) (weight xs + weight ys) _
        (stuffle-weight xs ys)))

------------------------------------------------------------------------
-- Admissibility of the terms of a stuffle product
------------------------------------------------------------------------

-- Admissibility: the stuffle product of two admissible words has only
-- admissible terms. Each term begins with `x`, `y` or `x + y`.

Admissible : IndexWord → Set
Admissible w = admissible w ≡ true

prefix-letter-admissible : (m : ℕ) (xs : FormalSum) →
  AllKeys Admissible (prefix-letter (suc (suc m)) xs)
prefix-letter-admissible m []              = []
prefix-letter-admissible m ((w , c) ∷ xs)  =
  refl ∷ prefix-letter-admissible m xs

stuffle-admissible : (x y : IndexWord) →
  Admissible x → Admissible y → AllKeys Admissible (stuffle x y)
stuffle-admissible []                 y                 ()  _
stuffle-admissible (_ ∷ _)            []                _   ()
stuffle-admissible (zero ∷ _)         (_ ∷ _)           ()  _
stuffle-admissible (suc zero ∷ _)     (_ ∷ _)           ()  _
stuffle-admissible (suc (suc _) ∷ _)  (zero ∷ _)        _   ()
stuffle-admissible (suc (suc _) ∷ _)  (suc zero ∷ _)    _   ()
stuffle-admissible (suc (suc x) ∷ xs) (suc (suc y) ∷ ys) _ _ =
  add-sum-keys _ _
    (add-sum-keys _ _
      (prefix-letter-admissible x (stuffle xs (suc (suc y) ∷ ys)))
      (prefix-letter-admissible y (stuffle (suc (suc x) ∷ xs) ys)))
    (prefix-letter-admissible (x + suc (suc y)) (stuffle xs ys))

------------------------------------------------------------------------
-- Depth of the terms of a stuffle product
------------------------------------------------------------------------
-- Each term of `stuffle x y` has depth at most `depth x + depth y`.

prefix-letter-depth : (m n : ℕ) (xs : FormalSum) →
  AllKeys (λ w → depth w ≤ n) xs →
  AllKeys (λ w → depth w ≤ suc n) (prefix-letter m xs)
prefix-letter-depth m n []              []         = []
prefix-letter-depth m n ((w , c) ∷ xs)  (h ∷ hs)   =
  s≤s h ∷ prefix-letter-depth m n xs hs

stuffle-depth : (x y : IndexWord) →
  AllKeys (λ w → depth w ≤ depth x + depth y) (stuffle x y)
stuffle-depth []       y        = ≤-reflexive refl ∷ []
stuffle-depth (x ∷ xs) []       =
  ≤-reflexive (sym (+-identityʳ (suc (depth xs)))) ∷ []
stuffle-depth (x ∷ xs) (y ∷ ys) =
  add-sum-keys _ _
    (add-sum-keys _ _
      (prefix-letter-depth x _ _ (stuffle-depth xs (y ∷ ys)))
      (keys-map
        (λ w h → ≤-trans h
          (≤-reflexive (cong suc (sym (+-suc (depth xs) (depth ys))))))
        _
        (prefix-letter-depth y _ _ (stuffle-depth (x ∷ xs) ys))))
    (keys-map
      (λ w h → ≤-trans h (s≤s (+-monoʳ-≤ (depth xs) (n≤1+n (depth ys)))))
      _
      (prefix-letter-depth (x + y) _ _ (stuffle-depth xs ys)))

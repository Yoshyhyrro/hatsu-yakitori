-- CayleyDicksonQuiver.MZV.IndexWords
--
-- An index word is a list of natural numbers, read as positive
-- integers. Its weight is the sum of its entries and its depth is its
-- length. An index word is admissible if it is nonempty and its first
-- entry is at least 2.
module CayleyDicksonQuiver.MZV.IndexWords where

open import CayleyDicksonQuiver.MZV.ListAll
open import Data.Bool using (Bool; false; true)
open import Data.List using (List; []; _∷_; map; concatMap; length; applyUpTo)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; suc; _+_; _∸_; _≤_)
open import Data.Nat.Properties using (m+[n∸m]≡n)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; trans; cong)

IndexWord : Set
IndexWord = List ℕ

weight : IndexWord → ℕ
weight []       = 0
weight (n ∷ ns) = n + weight ns

admissible : IndexWord → Bool
admissible []                = false
admissible (zero ∷ _)        = false
admissible (suc zero ∷ _)    = false
admissible (suc (suc _) ∷ _) = true

filter-words : (IndexWord → Bool) → List IndexWord → List IndexWord
filter-words p []       = []
filter-words p (w ∷ ws) with p w
... | true  = w ∷ filter-words p ws
... | false = filter-words p ws

depth : IndexWord → ℕ
depth = length

Positive : IndexWord → Set
Positive = All (λ n → 1 ≤ n)

-- `compositions n k` lists the ordered sums of `k` positive integers
-- with total `n`, in lexicographic order.

compositions : ℕ → ℕ → List IndexWord
compositions zero    zero    = [] ∷ []
compositions (suc n) zero    = []
compositions n       (suc k) =
  concatMap (λ a → map (λ w → a ∷ w) (compositions (n ∸ a) k))
            (applyUpTo suc n)

admissible-words : ℕ → ℕ → List IndexWord
admissible-words n k = filter-words admissible (compositions n k)

compositions-4-2 :
  compositions 4 2 ≡ (1 ∷ 3 ∷ []) ∷ (2 ∷ 2 ∷ []) ∷ (3 ∷ 1 ∷ []) ∷ []
compositions-4-2 = refl

admissible-words-5-2 :
  admissible-words 5 2 ≡ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ []) ∷ (4 ∷ 1 ∷ []) ∷ []
admissible-words-5-2 = refl

-- Each triple is (weight, depth, number of admissible words).

admissible-word-counts : List (ℕ × ℕ × ℕ)
admissible-word-counts =
  (8 , 5 , 15) ∷ (10 , 5 , 70) ∷ (12 , 5 , 210) ∷ []

admissible-word-counts-agree :
  All (λ (n , k , c) → length (admissible-words n k) ≡ c)
      admissible-word-counts
admissible-word-counts-agree = refl ∷ refl ∷ refl ∷ []

------------------------------------------------------------------------
-- Weight and depth of the compositions
------------------------------------------------------------------------
-- The weight and depth of every element of `compositions n k` are
-- `n` and `k`.

compositions-suc : (n k : ℕ) →
  compositions n (suc k) ≡
    concatMap (λ a → map (a ∷_) (compositions (n ∸ a) k)) (applyUpTo suc n)
compositions-suc zero    k = refl
compositions-suc (suc n) k = refl

compositions-signature : (n k : ℕ) →
  All (λ a → weight a ≡ n × depth a ≡ k) (compositions n k)
compositions-signature zero    zero    = (refl , refl) ∷ []
compositions-signature (suc n) zero    = []
compositions-signature n       (suc k)
  rewrite compositions-suc n k =
  all-upTo (λ a → map (a ∷_) (compositions (n ∸ a) k)) suc n step
  where
  step : ∀ i → suc i ≤ n →
    All (λ a → weight a ≡ n × depth a ≡ suc k)
        (map (suc i ∷_) (compositions (n ∸ suc i) k))
  step i lt =
    all-map (suc i ∷_)
      (all-imp
        (λ w (hw , hd) →
          trans (cong (suc i +_) hw) (m+[n∸m]≡n lt) , cong suc hd)
        (compositions-signature (n ∸ suc i) k))

all-filter : {P : IndexWord → Set} (p : IndexWord → Bool)
  {ws : List IndexWord} → All P ws → All P (filter-words p ws)
all-filter p []                 = []
all-filter p {w ∷ ws} (h ∷ hs) with p w
... | true  = h ∷ all-filter p hs
... | false = all-filter p hs

-- CayleyDicksonQuiver.MZV.BinaryWords
--
-- The index word (n₁, …, nᵣ) of positive integers is encoded as the
-- binary word 0^(n₁-1) 1 … 0^(nᵣ-1) 1, with `false` for 0 and `true`
-- for 1. The weight of an index word is the length of its encoding,
-- and its depth is the number of 1s. Every non-empty encoded word ends
-- in 1, and the encoding is injective on index words of positive
-- integers.
module CayleyDicksonQuiver.MZV.BinaryWords where

open import CayleyDicksonQuiver.MZV.IndexWords
open import CayleyDicksonQuiver.MZV.ListAll
open import Data.Bool using (Bool; false; true)
open import Data.List using (List; []; _∷_; map; length; _++_)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; suc; _+_; _∸_)
open import Data.Nat.Properties using (+-identityʳ; +-suc)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality
  using (_≡_; refl; sym; trans; cong; cong₂)

BinWord : Set
BinWord = List Bool

zeros : ℕ → BinWord → BinWord
zeros zero    w = w
zeros (suc n) w = false ∷ zeros n w

index-to-word : IndexWord → BinWord
index-to-word []       = []
index-to-word (n ∷ ns) = zeros (n ∸ 1) (true ∷ index-to-word ns)

-- Reads the zeros before each 1. Trailing zeros are dropped, so this
-- inverts `index-to-word` only on binary words ending in 1.

word-to-index-from : ℕ → BinWord → IndexWord
word-to-index-from z []          = []
word-to-index-from z (false ∷ w) = word-to-index-from (suc z) w
word-to-index-from z (true  ∷ w) = suc z ∷ word-to-index-from zero w

word-to-index : BinWord → IndexWord
word-to-index = word-to-index-from zero

encoding-checks : List (IndexWord × BinWord)
encoding-checks =
  (2 ∷ 1 ∷ 3 ∷ [] , false ∷ true ∷ true ∷ false ∷ false ∷ true ∷ []) ∷
  (3 ∷ 1 ∷ [] , false ∷ false ∷ true ∷ true ∷ []) ∷
  (2 ∷ 2 ∷ [] , false ∷ true ∷ false ∷ true ∷ []) ∷ []

encoding-checks-agree :
  All (λ (a , w) → index-to-word a ≡ w × word-to-index w ≡ a) encoding-checks
encoding-checks-agree = (refl , refl) ∷ (refl , refl) ∷ (refl , refl) ∷ []

word-to-index-from-zeros : (m z : ℕ) (w : BinWord) →
  word-to-index-from z (zeros m w) ≡ word-to-index-from (m + z) w
word-to-index-from-zeros zero    z w = refl
word-to-index-from-zeros (suc m) z w =
  trans (word-to-index-from-zeros m (suc z) w)
        (cong (λ k → word-to-index-from k w) (+-suc m z))

word-to-index-index-to-word : (a : IndexWord) → Positive a →
  word-to-index (index-to-word a) ≡ a
word-to-index-index-to-word []           []          = refl
word-to-index-index-to-word (suc m ∷ ns) (_ ∷ ps)    =
  trans (word-to-index-from-zeros m zero (true ∷ index-to-word ns))
        (cong₂ _∷_ (cong suc (+-identityʳ m))
                   (word-to-index-index-to-word ns ps))

length-zeros : (m : ℕ) (w : BinWord) → length (zeros m w) ≡ m + length w
length-zeros zero    w = refl
length-zeros (suc m) w = cong suc (length-zeros m w)

length-index-to-word : (a : IndexWord) → Positive a →
  length (index-to-word a) ≡ weight a
length-index-to-word []           []         = refl
length-index-to-word (suc m ∷ ns) (_ ∷ ps)   =
  trans (length-zeros m (true ∷ index-to-word ns))
        (trans (+-suc m (length (index-to-word ns)))
               (cong (λ k → suc (m + k)) (length-index-to-word ns ps)))

------------------------------------------------------------------------
-- Interleavings
------------------------------------------------------------------------
-- `interleavings u v` lists the interleavings of two binary words,
-- with multiplicity. Every interleaving of two non-empty encoded
-- words has the combined length and ends in 1.

interleavings : BinWord → BinWord → List BinWord
interleavings []       v        = v ∷ []
interleavings (x ∷ xs) []       = (x ∷ xs) ∷ []
interleavings (x ∷ xs) (y ∷ ys) =
  map (x ∷_) (interleavings xs (y ∷ ys))
    ++ map (y ∷_) (interleavings (x ∷ xs) ys)

interleavings-length : (u v : BinWord) →
  All (λ w → length w ≡ length u + length v) (interleavings u v)
interleavings-length []       v        = refl ∷ []
interleavings-length (x ∷ xs) []       =
  sym (+-identityʳ (suc (length xs))) ∷ []
interleavings-length (x ∷ xs) (y ∷ ys) =
  all-++
    (all-map (x ∷_)
      (all-imp (λ w h → cong suc h)
        (interleavings-length xs (y ∷ ys))))
    (all-map (y ∷_)
      (all-imp
        (λ w h → trans (cong suc h)
                       (sym (cong suc (+-suc (length xs) (length ys)))))
        (interleavings-length (x ∷ xs) ys)))

-- `EndsTrue w` states that `w` is non-empty and its last letter is 1.

data EndsTrue : BinWord → Set where
  here  : EndsTrue (true ∷ [])
  there : ∀ {b w} → EndsTrue w → EndsTrue (b ∷ w)

interleavings-ends : (u v : BinWord) → EndsTrue u → EndsTrue v →
  All EndsTrue (interleavings u v)
interleavings-ends (true ∷ []) (true ∷ []) here here =
  there here ∷ there here ∷ []
interleavings-ends (true ∷ []) (y ∷ ys) here (there pys) =
  there (there pys) ∷
  all-map (y ∷_)
    (all-imp (λ w p → there p)
      (interleavings-ends (true ∷ []) ys here pys))
interleavings-ends (x ∷ xs) (true ∷ []) (there pxs) here =
  all-++
    (all-map (x ∷_)
      (all-imp (λ w p → there p)
        (interleavings-ends xs (true ∷ []) pxs here)))
    (there (there pxs) ∷ [])
interleavings-ends (x ∷ xs) (y ∷ ys) (there pxs) (there pys) =
  all-++
    (all-map (x ∷_)
      (all-imp (λ w p → there p)
        (interleavings-ends xs (y ∷ ys) pxs (there pys))))
    (all-map (y ∷_)
      (all-imp (λ w p → there p)
        (interleavings-ends (x ∷ xs) ys (there pxs) pys)))

ends-true-zeros : (m : ℕ) {w : BinWord} → EndsTrue w →
  EndsTrue (zeros m w)
ends-true-zeros zero    p = p
ends-true-zeros (suc m) p = there (ends-true-zeros m p)

ends-true-index : (n : ℕ) (ns : IndexWord) →
  EndsTrue (index-to-word (n ∷ ns))
ends-true-index n []        = ends-true-zeros (n ∸ 1) here
ends-true-index n (m ∷ ms)  =
  ends-true-zeros (n ∸ 1) (there (ends-true-index m ms))

weight-from : (z : ℕ) (w : BinWord) → EndsTrue w →
  weight (word-to-index-from z w) ≡ z + length w
weight-from z (true ∷ []) here =
  trans (+-identityʳ (suc z))
        (sym (trans (+-suc z 0) (cong suc (+-identityʳ z))))
weight-from z (false ∷ w) (there p) =
  trans (weight-from (suc z) w p) (sym (+-suc z (length w)))
weight-from z (true ∷ w) (there p) =
  trans (cong (suc z +_) (weight-from zero w p))
        (sym (+-suc z (length w)))

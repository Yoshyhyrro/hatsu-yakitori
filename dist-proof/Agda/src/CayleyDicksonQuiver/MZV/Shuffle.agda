-- CayleyDicksonQuiver.MZV.Shuffle
--
-- The shuffle product of two index words counts the interleavings of
-- their encodings as binary words, read back as index words.
module CayleyDicksonQuiver.MZV.Shuffle where

open import CayleyDicksonQuiver.MZV.IndexWords
open import CayleyDicksonQuiver.MZV.ListAll
open import CayleyDicksonQuiver.MZV.FormalSum
open import CayleyDicksonQuiver.MZV.BinaryWords
open import Data.List using (List; []; _∷_; map; length)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; _+_)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; trans; cong₂)

count-words : FormalSum → List IndexWord → FormalSum
count-words acc []       = acc
count-words acc (w ∷ ws) = count-words (add-term w 1 acc) ws

shuffle : IndexWord → IndexWord → FormalSum
shuffle a b =
  count-words []
    (map word-to-index (interleavings (index-to-word a) (index-to-word b)))

shuffle-checks : List (IndexWord × IndexWord × FormalSum)
shuffle-checks =
  (2 ∷ [] , 2 ∷ [] ,
    (2 ∷ 2 ∷ [] , 2) ∷ (3 ∷ 1 ∷ [] , 4) ∷ []) ∷ []

shuffle-checks-agree :
  All (λ (x , y , s) → shuffle x y ≡ s) shuffle-checks
shuffle-checks-agree = refl ∷ []

------------------------------------------------------------------------
-- Weight of the terms of a shuffle product
------------------------------------------------------------------------
-- Every term of `shuffle x y` has weight `weight x + weight y`, for
-- non-empty index words of positive integers. The proof goes through
-- the encoding: each interleaving of two encoded words has the
-- combined length and ends in 1.

count-words-keys : {P : IndexWord → Set} (acc : FormalSum)
  (ws : List IndexWord) → AllKeys P acc → All P ws →
  AllKeys P (count-words acc ws)
count-words-keys acc []        hacc []         = hacc
count-words-keys acc (w ∷ ws)  hacc (hw ∷ hws) =
  count-words-keys (add-term w 1 acc) ws
    (add-term-keys w 1 acc hw hacc) hws

shuffle-weight : (x y : ℕ) (xs ys : IndexWord) →
  Positive (x ∷ xs) → Positive (y ∷ ys) →
  AllKeys (λ w → weight w ≡ weight (x ∷ xs) + weight (y ∷ ys))
          (shuffle (x ∷ xs) (y ∷ ys))
shuffle-weight x y xs ys px py =
  count-words-keys [] _ []
    (all-map word-to-index
      (all-imp step
        (all-both
          (interleavings-ends U V (ends-true-index x xs) (ends-true-index y ys))
          (interleavings-length U V))))
  where
  U = index-to-word (x ∷ xs)
  V = index-to-word (y ∷ ys)

  step : (w : BinWord) → EndsTrue w × (length w ≡ length U + length V) →
    weight (word-to-index w) ≡ weight (x ∷ xs) + weight (y ∷ ys)
  step w (e , l) =
    trans (weight-from zero w e)
          (trans l (cong₂ _+_ (length-index-to-word (x ∷ xs) px)
                              (length-index-to-word (y ∷ ys) py)))

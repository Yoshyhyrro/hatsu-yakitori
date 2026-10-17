-- CayleyDicksonQuiver.MZV.DepthGraded
--
-- The depth-5 double shuffle relation of a pair `(a , b)` is the
-- difference of the depth-5 parts of `shuffle a b` and `stuffle a b`.
-- It has integer coefficients and is recorded as an association list
-- without zero coefficients. The relations at a fixed weight are
-- collected into a matrix. Row reduction is not carried out here.
module CayleyDicksonQuiver.MZV.DepthGraded where

open import CayleyDicksonQuiver.MZV.IndexWords
open import CayleyDicksonQuiver.MZV.ListAll
open import CayleyDicksonQuiver.MZV.FormalSum
open import CayleyDicksonQuiver.MZV.Stuffle
open import CayleyDicksonQuiver.MZV.Shuffle
open import Data.Bool using (Bool; false; true)
open import Data.Integer using (ℤ; _⊖_; -_; ∣_∣) renaming (+_ to pos)
open import Data.List using (List; []; _∷_; map; concatMap; length; applyUpTo; _++_)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; suc; _+_; _∸_; _≡ᵇ_)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong₂)

------------------------------------------------------------------------
-- Depth projection and the depth-5 double shuffle relation
------------------------------------------------------------------------

project-depth : ℕ → FormalSum → FormalSum
project-depth r []              = []
project-depth r ((w , c) ∷ xs) with depth w ≡ᵇ r
... | true  = (w , c) ∷ project-depth r xs
... | false = project-depth r xs

Relation : Set
Relation = List (IndexWord × ℤ)

is-zero : ℤ → Bool
is-zero z = ∣ z ∣ ≡ᵇ 0

drop-zero-terms : Relation → Relation
drop-zero-terms []              = []
drop-zero-terms ((w , c) ∷ xs) with is-zero c
... | true  = drop-zero-terms xs
... | false = (w , c) ∷ drop-zero-terms xs

-- `difference xs ys` subtracts `ys` from `xs`: the terms of `xs` come
-- first, followed by the terms of `ys` that do not occur in `xs`.

left-part : FormalSum → FormalSum → Relation
left-part []              ys = []
left-part ((w , c) ∷ xs)  ys = (w , c ⊖ coeff w ys) ∷ left-part xs ys

right-only : FormalSum → FormalSum → Relation
right-only xs []              = []
right-only xs ((w , d) ∷ ys) with has-key w xs
... | true  = right-only xs ys
... | false = (w , - (pos d)) ∷ right-only xs ys

difference : FormalSum → FormalSum → Relation
difference xs ys = drop-zero-terms (left-part xs ys ++ right-only xs ys)

depth5-double-shuffle : IndexWord → IndexWord → Relation
depth5-double-shuffle a b =
  difference (project-depth 5 (shuffle a b)) (project-depth 5 (stuffle a b))

double-shuffle-sample :
  depth5-double-shuffle (2 ∷ []) (2 ∷ 1 ∷ 1 ∷ 1 ∷ []) ≡
    (2 ∷ 2 ∷ 1 ∷ 1 ∷ 1 ∷ [] , pos 3) ∷
    (3 ∷ 1 ∷ 1 ∷ 1 ∷ 1 ∷ [] , pos 10) ∷
    (2 ∷ 1 ∷ 2 ∷ 1 ∷ 1 ∷ [] , pos 2) ∷
    (2 ∷ 1 ∷ 1 ∷ 2 ∷ 1 ∷ [] , pos 1) ∷ []
double-shuffle-sample = refl

------------------------------------------------------------------------
-- The depth-5 relation matrix at a fixed weight
------------------------------------------------------------------------
-- The columns are indexed by the admissible index words of depth 5 and
-- weight `W`. The rows come from the pairs `(a , b)` of admissible
-- index words with `depth a + depth b = 5` and
-- `weight a + weight b = W`.

depth5-basis : ℕ → List IndexWord
depth5-basis W = admissible-words W 5

pairs : List IndexWord → List IndexWord → List (IndexWord × IndexWord)
pairs as bs = concatMap (λ a → map (λ b → a , b) bs) as

depth5-pairs : ℕ → List (IndexWord × IndexWord)
depth5-pairs W =
  concatMap
    (λ r → concatMap
      (λ Wa → pairs (admissible-words Wa r) (admissible-words (W ∸ Wa) (5 ∸ r)))
      (applyUpTo (2 +_) (W ∸ 2)))
    (applyUpTo suc 4)

nonempty-relations : List Relation → List Relation
nonempty-relations []              = []
nonempty-relations ([] ∷ rs)       = nonempty-relations rs
nonempty-relations ((t ∷ ts) ∷ rs) = (t ∷ ts) ∷ nonempty-relations rs

depth5-relations : ℕ → List Relation
depth5-relations W =
  nonempty-relations (map (λ (a , b) → depth5-double-shuffle a b) (depth5-pairs W))

lookup-relation : IndexWord → Relation → ℤ
lookup-relation w []              = pos 0
lookup-relation w ((v , c) ∷ xs) with word-eq w v
... | true  = c
... | false = lookup-relation w xs

relation-row : List IndexWord → Relation → List ℤ
relation-row basis rel = map (λ w → lookup-relation w rel) basis

nonzero-row : List ℤ → Bool
nonzero-row []       = false
nonzero-row (c ∷ cs) with is-zero c
... | true  = nonzero-row cs
... | false = true

nonzero-rows : List (List ℤ) → List (List ℤ)
nonzero-rows []        = []
nonzero-rows (r ∷ rs) with nonzero-row r
... | true  = r ∷ nonzero-rows rs
... | false = nonzero-rows rs

relation-matrix : ℕ → List (List ℤ)
relation-matrix W =
  nonzero-rows (map (relation-row (depth5-basis W)) (depth5-relations W))

-- Each quadruple is (weight, columns, relations, rows).

relation-matrix-sizes : List (ℕ × ℕ × ℕ × ℕ)
relation-matrix-sizes =
  (7 , 5 , 4 , 4) ∷ (8 , 15 , 20 , 20) ∷ (9 , 35 , 60 , 60) ∷ []

relation-matrix-sizes-agree :
  All (λ (W , c , n , r) →
         length (depth5-basis W) ≡ c
       × length (depth5-relations W) ≡ n
       × length (relation-matrix W) ≡ r)
      relation-matrix-sizes
relation-matrix-sizes-agree =
  (refl , refl , refl) ∷ (refl , refl , refl) ∷ (refl , refl , refl) ∷ []

relation-matrix-7 :
  relation-matrix 7 ≡
    (pos 0 ∷ pos 1 ∷ pos 2 ∷ pos 3 ∷ pos 10 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 4 ∷ pos 20 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 4 ∷ pos 20 ∷ []) ∷
    (pos 0 ∷ pos 1 ∷ pos 2 ∷ pos 3 ∷ pos 10 ∷ []) ∷ []
relation-matrix-7 = refl

------------------------------------------------------------------------
-- Weight and depth are constant on the depth-5 basis
------------------------------------------------------------------------
-- The pair (weight, depth) does not distinguish any two words of
-- `depth5-basis W`. For two such words `a` and `b`, a separation by
-- `coarse-signature` and a finer invariant `S` therefore amounts to
-- `¬ (S a ≡ S b)`, in the sense of `Algebra.Separates`.

coarse-signature : IndexWord → ℕ × ℕ
coarse-signature a = weight a , depth a

depth5-basis-signature : (W : ℕ) →
  All (λ a → coarse-signature a ≡ (W , 5)) (depth5-basis W)
depth5-basis-signature W =
  all-imp (λ a (hw , hd) → cong₂ _,_ hw hd)
    (all-filter admissible (compositions-signature W 5))

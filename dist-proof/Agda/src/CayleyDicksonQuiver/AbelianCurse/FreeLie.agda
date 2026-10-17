-- CayleyDicksonQuiver.AbelianCurse.FreeLie
--
-- The free associative algebra Q<e0,e1> on two letters, represented as
-- formal integer-linear combinations of words, with its commutator Lie
-- bracket. The canonical depth-one generators `sigma m` of the
-- depth-graded motivic Lie algebra (Sakugawa, arXiv:2402.13406,
-- Example 3.2) are recorded as `ad(e0)^(2m) e1`.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.FreeLie where

open import Data.Bool using (Bool; false; true)
open import Data.Integer using (ℤ; -_) renaming (+_ to pos; _+_ to _+ℤ_; _*_ to _*ℤ_)
open import Data.List using (List; []; _∷_; _++_; map)
open import Data.Nat using (ℕ; zero; suc; _+_)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (¬_)

------------------------------------------------------------------------
-- Words and formal sums
------------------------------------------------------------------------
-- A letter is `false` for e0 or `true` for e1. A word is a list of
-- letters, read as their product. `NCPoly` is a formal integer-linear
-- combination of words, represented as an association list without
-- zero coefficients, ordered by first occurrence.

Letter : Set
Letter = Bool

NCWord : Set
NCWord = List Letter

NCPoly : Set
NCPoly = List (NCWord × ℤ)

word-eq : NCWord → NCWord → Bool
word-eq []            []            = true
word-eq (false ∷ xs)  (false ∷ ys)  = word-eq xs ys
word-eq (true  ∷ xs)  (true  ∷ ys)  = word-eq xs ys
word-eq _             _             = false

is-zero : ℤ → Bool
is-zero (pos zero)    = true
is-zero (pos (suc _)) = false
is-zero _             = false

nc-add-term : NCWord → ℤ → NCPoly → NCPoly
nc-add-term w c []              with is-zero c
... | true  = []
... | false = (w , c) ∷ []
nc-add-term w c ((v , d) ∷ xs)  with word-eq w v
... | true  with is-zero (c +ℤ d)
...   | true  = xs
...   | false = (v , c +ℤ d) ∷ xs
nc-add-term w c ((v , d) ∷ xs)  | false = (v , d) ∷ nc-add-term w c xs

nc-add-sum : NCPoly → NCPoly → NCPoly
nc-add-sum xs []              = xs
nc-add-sum xs ((w , c) ∷ ys)  = nc-add-sum (nc-add-term w c xs) ys

nc-scale : ℤ → NCPoly → NCPoly
nc-scale c []              = []
nc-scale c ((w , d) ∷ xs) with is-zero (c *ℤ d)
... | true  = nc-scale c xs
... | false = (w , c *ℤ d) ∷ nc-scale c xs

nc-neg : NCPoly → NCPoly
nc-neg = nc-scale (- pos 1)

nc-sub : NCPoly → NCPoly → NCPoly
nc-sub xs ys = nc-add-sum xs (nc-neg ys)

------------------------------------------------------------------------
-- The associative product and the commutator bracket
------------------------------------------------------------------------
-- The product of two words is their concatenation; `nc-mul` extends
-- this bilinearly. `nc-lie a b = ab - ba` is the commutator bracket.

nc-mul : NCPoly → NCPoly → NCPoly
nc-mul []              ys = []
nc-mul ((u , c) ∷ xs)  ys =
  nc-add-sum (map (λ (v , d) → u ++ v , c *ℤ d) ys) (nc-mul xs ys)

nc-lie : NCPoly → NCPoly → NCPoly
nc-lie a b = nc-sub (nc-mul a b) (nc-mul b a)

------------------------------------------------------------------------
-- Generators
------------------------------------------------------------------------

E0 : NCPoly
E0 = (false ∷ [] , pos 1) ∷ []

E1 : NCPoly
E1 = (true ∷ [] , pos 1) ∷ []

ad-power : ℕ → NCPoly → NCPoly
ad-power zero    x = x
ad-power (suc n) x = nc-lie E0 (ad-power n x)

-- `sigma m` is the depth-one canonical generator of weight `2m+1`.

sigma : ℕ → NCPoly
sigma m = ad-power (m + m) E1

------------------------------------------------------------------------
-- The Jacobiator
------------------------------------------------------------------------

jacobi : NCPoly → NCPoly → NCPoly → NCPoly
jacobi a b c =
  nc-add-sum (nc-add-sum (nc-lie a (nc-lie b c)) (nc-lie b (nc-lie c a)))
             (nc-lie c (nc-lie a b))

------------------------------------------------------------------------
-- Sanity checks
------------------------------------------------------------------------

sigma-1 : sigma 1 ≡
  (false ∷ false ∷ true ∷ [] , pos 1) ∷
  (false ∷ true  ∷ false ∷ [] , - pos 2) ∷
  (true  ∷ false ∷ false ∷ [] , pos 1) ∷ []
sigma-1 = refl

lie-self : nc-lie (sigma 1) (sigma 1) ≡ []
lie-self = refl

lie-antisymmetric : nc-add-sum (nc-lie (sigma 1) (sigma 2)) (nc-lie (sigma 2) (sigma 1)) ≡ []
lie-antisymmetric = refl

jacobi-1-2-3 : jacobi (sigma 1) (sigma 2) (sigma 3) ≡ []
jacobi-1-2-3 = refl

jacobi-1-2-4 : jacobi (sigma 1) (sigma 2) (sigma 4) ≡ []
jacobi-1-2-4 = refl

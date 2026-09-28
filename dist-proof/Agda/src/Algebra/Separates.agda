-- Algebra.Separates
--
-- A coarse invariant `T` and a finer invariant `S` out of the same
-- source separate `x` from `y` when `T` agrees on them and `S` does
-- not. This file knows nothing about Cayley-Dickson algebras, index
-- words, or any other specific instance.
module Algebra.Separates where

open import Data.Product using (_×_)
open import Relation.Binary.PropositionalEquality using (_≡_)
open import Relation.Nullary using (¬_)

Separates : ∀ {A B C : Set} → (A → B) → (A → C) → A → A → Set
Separates T S x y = (T x ≡ T y) × ¬ (S x ≡ S y)

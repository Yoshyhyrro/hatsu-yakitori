-- CayleyDicksonQuiver.MZV.FormalSum
--
-- Formal sums of index words with natural number coefficients. A
-- formal sum is represented as an association list from index words to
-- coefficients, ordered by first occurrence.
module CayleyDicksonQuiver.MZV.FormalSum where

open import CayleyDicksonQuiver.MZV.IndexWords
open import Data.Bool using (Bool; false; true)
open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; _+_; _≡ᵇ_)
open import Data.Product using (_×_; _,_)

FormalSum : Set
FormalSum = List (IndexWord × ℕ)

-- Boolean equality of index words.

word-eq : IndexWord → IndexWord → Bool
word-eq []       []       = true
word-eq (m ∷ ms) (n ∷ ns) with m ≡ᵇ n
... | true  = word-eq ms ns
... | false = false
word-eq _        _        = false

-- Adds `c` to the coefficient of `w`, appending `w` if it is absent.

add-term : IndexWord → ℕ → FormalSum → FormalSum
add-term w c []               = (w , c) ∷ []
add-term w c ((v , d) ∷ rest) with word-eq w v
... | true  = (v , d + c) ∷ rest
... | false = (v , d) ∷ add-term w c rest

-- Adds the terms of the second sum to the first, in order.

add-sum : FormalSum → FormalSum → FormalSum
add-sum xs []              = xs
add-sum xs ((w , c) ∷ ys)  = add-sum (add-term w c xs) ys

-- Prepends a letter to every index word of a formal sum.

prefix-letter : ℕ → FormalSum → FormalSum
prefix-letter n []              = []
prefix-letter n ((w , c) ∷ xs)  = (n ∷ w , c) ∷ prefix-letter n xs

coeff : IndexWord → FormalSum → ℕ
coeff w []              = 0
coeff w ((v , c) ∷ xs) with word-eq w v
... | true  = c
... | false = coeff w xs

has-key : IndexWord → FormalSum → Bool
has-key w []              = false
has-key w ((v , c) ∷ xs) with word-eq w v
... | true  = true
... | false = has-key w xs

-- `AllKeys P xs` states that `P` holds for every index word occurring
-- in the formal sum `xs`, regardless of its coefficient.

data AllKeys (P : IndexWord → Set) : FormalSum → Set where
  []  : AllKeys P []
  _∷_ : ∀ {w c xs} → P w → AllKeys P xs → AllKeys P ((w , c) ∷ xs)

keys-map : {P Q : IndexWord → Set} → (∀ w → P w → Q w) →
  (xs : FormalSum) → AllKeys P xs → AllKeys Q xs
keys-map f []              []         = []
keys-map f ((w , c) ∷ xs)  (h ∷ hs)   = f w h ∷ keys-map f xs hs

add-term-keys : {P : IndexWord → Set} (w : IndexWord) (c : ℕ)
  (xs : FormalSum) → P w → AllKeys P xs → AllKeys P (add-term w c xs)
add-term-keys w c []              hw []         = hw ∷ []
add-term-keys w c ((v , d) ∷ xs)  hw (hv ∷ hxs) with word-eq w v
... | true  = hv ∷ hxs
... | false = hv ∷ add-term-keys w c xs hw hxs

add-sum-keys : {P : IndexWord → Set} (xs ys : FormalSum) →
  AllKeys P xs → AllKeys P ys → AllKeys P (add-sum xs ys)
add-sum-keys xs []              hxs []         = hxs
add-sum-keys xs ((w , c) ∷ ys)  hxs (hw ∷ hys) =
  add-sum-keys (add-term w c xs) ys (add-term-keys w c xs hw hxs) hys

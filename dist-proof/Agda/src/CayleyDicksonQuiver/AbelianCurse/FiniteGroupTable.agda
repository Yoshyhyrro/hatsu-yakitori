-- CayleyDicksonQuiver.AbelianCurse.FiniteGroupTable
--
-- A generic frame for asking, of a finite group given only by its
-- multiplication table, how many steps the derived series or the
-- lower central series takes to reach the trivial subgroup, if it
-- ever does. Elements of the group are natural numbers 0, ..., n-1;
-- callers supply `mul` and `inv` as total functions on ℕ and are
-- responsible for these being closed and correct on that range.
-- Closure under multiplication is computed by iterating one step a
-- fixed number of times, supplied by the caller; nothing here assumes
-- in advance that either series terminates, or how long iterating
-- must continue.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.FiniteGroupTable where

open import Data.Bool using (Bool; false; true; _∨_; _∧_; if_then_else_)
open import Data.List using (List; []; _∷_; map; foldr; applyUpTo)
open import Data.Nat using (ℕ; zero; suc)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

record CayleyGroup : Set where
  field
    mul : ℕ → ℕ → ℕ
    inv : ℕ → ℕ

open CayleyGroup public

comm : CayleyGroup → ℕ → ℕ → ℕ
comm G i j = mul G (mul G i j) (mul G (inv G i) (inv G j))

------------------------------------------------------------------------
-- Subsets of {0,...,n-1} as membership lists
------------------------------------------------------------------------

Subset : Set
Subset = List Bool

nth : Subset → ℕ → Bool
nth []       _       = false
nth (b ∷ bs) zero    = b
nth (b ∷ bs) (suc k) = nth bs k

empty-of : ℕ → Subset
empty-of zero    = []
empty-of (suc n) = false ∷ empty-of n

singleton-of : ℕ → ℕ → Subset
singleton-of zero    i       = []
singleton-of (suc n) zero    = true ∷ empty-of n
singleton-of (suc n) (suc i) = false ∷ singleton-of n i

union : Subset → Subset → Subset
union []       ys       = ys
union (x ∷ xs) []       = x ∷ xs
union (x ∷ xs) (y ∷ ys) = (x ∨ y) ∷ union xs ys

full-of : ℕ → Subset
full-of zero    = []
full-of (suc n) = true ∷ full-of n

size : Subset → ℕ
size []             = 0
size (false ∷ rest) = size rest
size (true  ∷ rest) = suc (size rest)

univ : ℕ → List ℕ
univ n = applyUpTo (λ i → i) n

------------------------------------------------------------------------
-- One step of "close S under commutators", two ways
------------------------------------------------------------------------
-- `pairwise-commutators n G S` collects the commutators of pairs of
-- members of `S` (one step of the derived series, before closing
-- under the group product). `commutators-with-all n G S` collects the
-- commutators of `S` against every element of `{0,...,n-1}` (one step
-- of the lower central series).

pairwise-commutators : ℕ → CayleyGroup → Subset → Subset
pairwise-commutators n G s =
  foldr union (empty-of n)
    (map (λ i → foldr union (empty-of n)
                  (map (λ j → if nth s i ∧ nth s j
                                then singleton-of n (comm G i j)
                                else empty-of n)
                       (univ n)))
         (univ n))

commutators-with-all : ℕ → CayleyGroup → Subset → Subset
commutators-with-all n G s =
  foldr union (empty-of n)
    (map (λ i → foldr union (empty-of n)
                  (map (λ j → if nth s j
                                then singleton-of n (comm G i j)
                                else empty-of n)
                       (univ n)))
         (univ n))

-- One step of closing a subset under the group's *product* (not under
-- commutators): the union, over every pair of current members, of the
-- singleton of their product.

step-mul : ℕ → CayleyGroup → Subset → Subset
step-mul n G s =
  foldr union (empty-of n)
    (map (λ i → foldr union (empty-of n)
                  (map (λ j → if nth s i ∧ nth s j
                                then singleton-of n (mul G i j)
                                else empty-of n)
                       (univ n)))
         (univ n))

-- Closes a subset under the group's product by iterating `step-mul`
-- `fuel` times, each time unioning in the previous subset so the
-- process is monotone; `fuel = n` always suffices for a group with
-- `n` elements, since a subsemigroup of a finite group is already a
-- subgroup and the subset can grow at most `n` times before repeating.

close-under-mult : ℕ → CayleyGroup → ℕ → Subset → Subset
close-under-mult n G zero    s = s
close-under-mult n G (suc f) s = close-under-mult n G f (union s (step-mul n G s))

-- The next term of the derived series: the commutators of the current
-- term's members, closed under the group's product to form an actual
-- subgroup. `lcs-next` is the same, but commutators are taken against
-- the *whole* group rather than only within the current term.

derived-next : ℕ → CayleyGroup → ℕ → Subset → Subset
derived-next n G fuel s = close-under-mult n G fuel (pairwise-commutators n G s)

lcs-next : ℕ → CayleyGroup → ℕ → Subset → Subset
lcs-next n G fuel s = close-under-mult n G fuel (commutators-with-all n G s)

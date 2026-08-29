module CayleyDicksonQuiver where

open import Data.Nat
open import Data.Product using (_×_ ; _,_)
open import Data.List using (List ; [] ; _∷_ ; _++_)
open import Relation.Binary.PropositionalEquality using (_≡_ ; refl)

-- Given the need for formal representation, we define the associator types.
data AssociatorType : Set where
  type-A : AssociatorType
  type-B : AssociatorType
  type-C : AssociatorType
  type-X : AssociatorType

-- Define a pair of indices for zero divisors.
Pair : Set
Pair = ℕ × ℕ

-- Define the algebraic properties of a zero divisor.
record ZeroDivisor : Set where
  constructor mkZeroDivisor
  field
    pair            : Pair
    dim             : ℕ
    kernel-dim      : ℕ
    associator-type : AssociatorType

-- We postulate the linear algebra computations such as SVD.
-- Constructive proof of matrix rank is highly non-trivial and omitted here.
postulate
  compute-kernel-dim : List Pair → ℕ
  valid-shrink       : (current-dim : ℕ) → (new-dim : ℕ) → Set

-- A vertex in the quiver represents a state of the kernel dimension.
record Vertex : Set where
  constructor mkVertex
  field
    kernel-dim : ℕ
    signature  : List Pair

-- An arrow represents an addition of a zero divisor constraint.
record Arrow (source target : Vertex) : Set where
  constructor mkArrow
  field
    zero-divisor : ZeroDivisor
    -- Evidence that the kernel dimension strictly decreases.
    shrink-proof : valid-shrink (Vertex.kernel-dim source) (Vertex.kernel-dim target)

-- By induction on the path structure, we define paths in the quiver algebra.
-- A path enforces matching source and target vertices at the type level.
data Path : Vertex → Vertex → Set where
  empty-path : {v : Vertex} → Path v v
  extend-path : {v1 v2 v3 : Vertex} → Arrow v1 v2 → Path v2 v3 → Path v1 v3

-- Construct the multiplication in the path algebra.
-- This corresponds to the concatenation of paths where endpoints match.
path-multiply : {v1 v2 v3 : Vertex} → Path v1 v2 → Path v2 v3 → Path v1 v3
path-multiply empty-path p2 = p2
path-multiply (extend-path a p1) p2 = extend-path a (path-multiply p1 p2)

-- Relations in the path algebra.
-- We represent relations as an equivalence between paths.
-- Type I (Parallel), Type II (Cyclic), and Type III (Braid) relations can be asserted as postulates or parameterized.
postulate
  PathEquiv : {v1 v2 : Vertex} → Path v1 v2 → Path v1 v2 → Set
module CayleyDicksonQuiver where

open import Data.Nat using (ℕ; _<_; _≤_; _>_; _^_; _∸_; zero; suc)
open import Data.Product using (_×_; _,_; Σ)
open import Data.List using (List; []; _∷_; length)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

-- Associator types for zero divisors
data AssociatorType : Set where
  type-A : AssociatorType
  type-B : AssociatorType
  type-C : AssociatorType
  type-X : AssociatorType

-- Pair of indices for zero divisors
Pair : Set
Pair = ℕ × ℕ

-- Constructive computation of kernel dimension
compute-kernel-dim : List Pair → ℕ
compute-kernel-dim pairs = length pairs

-- Inductive relation for strictly decreasing kernel dimension
data _StrictlyDecreases_ : ℕ → ℕ → Set where
  decreases : ∀ {m n} → m > n → n > 0 → m StrictlyDecreases n

-- Vertex in the quiver
record Vertex : Set where
  constructor mkVertex
  field
    kernel-dim : ℕ
    signature  : List Pair

-- Arrow indexed by its source and target vertices.
record Arrow (source target : Vertex) : Set where
  constructor mkArrow
  field
    zero-div : Pair
    shrink   : Vertex.kernel-dim source StrictlyDecreases Vertex.kernel-dim target

-- Inductive definition of paths in the quiver.
-- The source of the arrow and the head of the rest of the path must
-- agree, so that a path is a genuine chain of composable arrows.
data Path : Vertex → Vertex → Set where
  empty-path  : ∀ {v} → Path v v
  extend-path : ∀ {v1 v2 v3} → Arrow v1 v2 → Path v2 v3 → Path v1 v3

-- Path algebra multiplication (concatenation)
path-multiply : ∀ {v1 v2 v3} → Path v1 v2 → Path v2 v3 → Path v1 v3
path-multiply empty-path p2       = p2
path-multiply (extend-path a p1) p2 = extend-path a (path-multiply p1 p2)

-- Inductive definition of path equivalence (relations in the path algebra)
data PathEquiv : ∀ {v1 v2} → Path v1 v2 → Path v1 v2 → Set where
  equiv-refl  : ∀ {v1 v2} {p : Path v1 v2} → PathEquiv p p
  equiv-sym   : ∀ {v1 v2} {p q : Path v1 v2} → PathEquiv p q → PathEquiv q p
  equiv-trans : ∀ {v1 v2} {p q r : Path v1 v2} → PathEquiv p q → PathEquiv q r → PathEquiv p r

-- Quiver structure.
-- Because Arrow is indexed by its endpoints, arrows are stored as a
-- dependent pair together with their endpoints.
record Quiver : Set where
  field
    vertices : List Vertex
    arrows   : List (Σ (Vertex × Vertex) (λ { (v1 , v2) → Arrow v1 v2 }))
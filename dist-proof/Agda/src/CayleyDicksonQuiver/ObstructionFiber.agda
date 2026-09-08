-- CayleyDicksonQuiver.ObstructionFiber

module CayleyDicksonQuiver.ObstructionFiber where

open import Data.Nat using (ℕ)
open import Relation.Binary.PropositionalEquality using (_≡_)

open import CayleyDicksonQuiver.Hypotheses
  using (CD; add; mul; zeroCD; norm-real; mul-neg-distribˡ; mul-neg-distribʳ)

------------------------------------------------------------------------
-- Topological and Geometric Definitions
------------------------------------------------------------------------

-- Defines a contractible space via a center of contraction
-- and a path to any other point in the space.
record isContr (A : Set) : Set where
  constructor mkContr
  field
    center : A
    contr  : (x : A) → center ≡ x

-- Defines the homotopy fiber of a map f : A → B over a point y : B.
record Fiber {A B : Set} (f : A → B) (y : B) : Set where
  constructor mkFiber
  field
    point : A
    path  : f point ≡ y

------------------------------------------------------------------------
-- Core Operators and Loci
------------------------------------------------------------------------

-- Represents an additive translation operator within the algebra.
shift : (k : ℕ) → CD k → CD k → CD k
shift k base x = add k base x

-- Represents the constraint space (unstable locus).
Locus : (k : ℕ) → CD k → Set
Locus k x = mul k x x ≡ zeroCD k

------------------------------------------------------------------------
-- Main Theorem
------------------------------------------------------------------------

-- Main theorem signature demonstrating that the fiber of the
-- translation operator over the specified locus is contractible.
postulate
  obstruction-fiber-contractible : (k : ℕ) (base : CD k) (target : CD k) →
    Locus k target →
    isContr (Fiber (shift k base) target)
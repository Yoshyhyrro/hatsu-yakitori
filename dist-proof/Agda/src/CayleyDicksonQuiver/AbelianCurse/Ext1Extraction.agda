-- CayleyDicksonQuiver.AbelianCurse.Ext1Extraction
--
-- A concrete instance of extracting the Ext^1(M,N) class of an
-- extension of Frobenius modules (F-crystals), isolating it from
-- "coboundary noise" -- the ambiguity introduced by changing
-- coordinates on the extension. This is the mechanism flagged as
-- unresolved at the end of AC6 in note/AbelianCurseHypotheses.lagda.md:
-- what mod-ℓ semisimplification of a Galois representation loses is an
-- extension class, not a commutator subgroup, and this file makes that
-- mechanism precise and checks one instance of it, independent of any
-- Galois representation.
--
-- Given Frobenius actions `A` on a sub-object `N` and `B` on a
-- quotient `M`, the coboundary map `T(X) = X B - A X` acts on
-- `Hom(M,N)` (here 2x2 integer matrices); its cokernel is `Ext^1(M,N)`.
-- Vectorizing (column-major) turns `T` into a single 4x4 integer
-- matrix, `T = B^t ⊗ I_n - I_m ⊗ A`, and the invariant factors of its
-- Smith normal form `D = U T V` give the structure of the cokernel: an
-- invariant factor of `1` is pure coboundary noise (collapses to `0`),
-- of `0` is a free summand of `Ext^1(M,N)` (kept as-is), and a factor
-- that is neither would be a torsion summand (reduced mod that
-- factor, not needed below since this example has none).
--
-- `A = (2 1 ; 0 2)`, `B = (2 0 ; 0 2)`, the resulting `T`, and a Smith
-- normal form `U, D, V` of it (computed outside Agda; the general
-- Smith-normal-form algorithm is not implemented or proved correct
-- here, only this one instance of its output is checked against `T`)
-- are fixed throughout. Two extension matrices `C1` and
-- `C2 = C1 + (coboundary noise at X = I)` are checked to have the same
-- image under the extractor built from `U` and `D` (here, since
-- `diag D = (1,1,0,0)`, the extractor simply zeroes the first two
-- coordinates of `U` applied to the vectorized extension and keeps the
-- last two), witnessing that the extractor sees through exactly the
-- coboundary noise separating `C1` from `C2`, and nothing else.
--
-- See `note/AbelianCurseHypotheses.lagda.md` (AC6) for where this
-- mechanism comes from and what it is checking.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.Ext1Extraction where

open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.List using (List; []; _∷_; map)
open import Data.Nat using (ℕ; zero; suc)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (¬_)

------------------------------------------------------------------------
-- Integer matrices as lists of rows, and the one operation needed
------------------------------------------------------------------------

Row : Set
Row = List ℤ

Mat : Set
Mat = List Row

dot : Row → Row → ℤ
dot []       []       = pos 0
dot (x ∷ xs) (y ∷ ys) = x * y + dot xs ys
dot _        _        = pos 0

nth : Row → ℕ → ℤ
nth []       _       = pos 0
nth (x ∷ _)  zero    = x
nth (_ ∷ xs) (suc n) = nth xs n

col : Mat → ℕ → Row
col []       _ = []
col (r ∷ rs) j = nth r j ∷ col rs j

-- `mat-mul ncols X Y` computes `X * Y`, where `ncols` is the number of
-- columns of `Y` (equivalently, of the result); every row of `Y` is
-- assumed to have exactly `ncols` entries.

cols-upto : ℕ → List ℕ
cols-upto zero    = []
cols-upto (suc n) = cols-upto n Data.List.++ (n ∷ [])
  where open import Data.List using (_++_)

mat-mul : ℕ → Mat → Mat → Mat
mat-mul ncols X Y = map (λ row → map (λ j → dot row (col Y j)) (cols-upto ncols)) X

mat-vec : Mat → Row → Row
mat-vec M v = map (λ row → dot row v) M

------------------------------------------------------------------------
-- The data: A, B (for reference), T, and a Smith normal form of T
------------------------------------------------------------------------

A B : Mat
A = (pos 2 ∷ pos 1 ∷ []) ∷ (pos 0 ∷ pos 2 ∷ []) ∷ []
B = (pos 2 ∷ pos 0 ∷ []) ∷ (pos 0 ∷ pos 2 ∷ []) ∷ []

-- T = B^t ⊗ I_2 - I_2 ⊗ A, computed outside Agda.

T : Mat
T = (pos 0 ∷ - pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 0   ∷ pos 0 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 0   ∷ pos 0 ∷ - pos 1 ∷ []) ∷
    (pos 0 ∷ pos 0   ∷ pos 0 ∷ pos 0 ∷ []) ∷ []

U D V : Mat
U = (- pos 1 ∷ pos 0 ∷ pos 0   ∷ pos 0 ∷ []) ∷
    (pos 0   ∷ pos 0 ∷ - pos 1 ∷ pos 0 ∷ []) ∷
    (pos 0   ∷ pos 1 ∷ pos 0   ∷ pos 0 ∷ []) ∷
    (pos 0   ∷ pos 0 ∷ pos 0   ∷ pos 1 ∷ []) ∷ []

D = (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []

V = (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []) ∷
    (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 0 ∷ []) ∷
    (pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []

UTV-is-D : mat-mul 4 (mat-mul 4 U T) V ≡ D
UTV-is-D = refl

------------------------------------------------------------------------
-- The extractor, and the two colliding extensions
------------------------------------------------------------------------

-- Column-major vectorization of a 2x2 matrix: (a b ; c d) ↦ (a,c,b,d).

vec2x2 : Mat → Row
vec2x2 ((a ∷ b ∷ []) ∷ (c ∷ d ∷ []) ∷ []) = a ∷ c ∷ b ∷ d ∷ []
vec2x2 _ = []

-- `S-ext` reads off the class against `diag D = (1,1,0,0)`: the first
-- two coordinates are pure coboundary noise and are discarded, the
-- last two are the free part of `Ext^1(M,N)` and are kept.

S-ext : Row → Row
S-ext (a ∷ b ∷ c ∷ d ∷ []) = pos 0 ∷ pos 0 ∷ c ∷ d ∷ []
S-ext _ = []

extractor : Mat → Row
extractor C = S-ext (mat-vec U (vec2x2 C))

C1 C2 : Mat
C1 = (pos 5 ∷ pos 3 ∷ []) ∷ (pos 2 ∷ pos 4 ∷ []) ∷ []
C2 = (pos 5 ∷ pos 2 ∷ []) ∷ (pos 2 ∷ pos 4 ∷ []) ∷ []  -- C1 + (X B - A X) at X = I

C1-and-C2-agree-under-U : extractor C1 ≡ extractor C2
C1-and-C2-agree-under-U = refl

-- For contrast: the two raw extensions are not equal as matrices --
-- the extractor is not simply discarding all information.

C1-and-C2-differ-as-matrices : ¬ (C1 ≡ C2)
C1-and-C2-differ-as-matrices ()

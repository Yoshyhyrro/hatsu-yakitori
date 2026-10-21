-- CayleyDicksonQuiver.AbelianCurse.Ext1Torsion
--
-- A second concrete instance of extracting the Ext^1(M,N) class of an
-- extension of Frobenius modules, this time with genuine *torsion*
-- (invariant factors greater than 1), where `Ext1Extraction` had only
-- the invariant factors 1 (pure coboundary noise) and 0 (free part).
-- See `note/AbelianCurseHypotheses.lagda.md` (AC7).
--
-- Data: `A = diag(1,3)` on the sub-object and `B = diag(3,1)` on the
-- quotient. For diagonal `A` and `B`, the coboundary map
-- `T(X) = X B - A X` acts on each coordinate `X_ij` by multiplication
-- with `b_j - a_i`; in the column-major order `(x11, x21, x12, x22)`
-- used by `Ext1Extraction.vec2x2` this gives
--
--   T = diag(2, 0, 0, -2),   diag D = (2, 2, 0, 0).
--
-- So `Ext^1(M,N)` is `Z/2 + Z/2 + Z + Z` here. The two torsion
-- summands sit exactly where an eigenvalue of `B` and one of `A` are
-- congruent mod 2 but not equal (`3 - 1 = 2`); the two free summands sit
-- where they are equal (`3 - 3 = 0`, `1 - 1 = 0`).
--
-- What is proved (all for this one `(A,B)`, none for Frobenius actions
-- in general):
--   * `U` and `V` are invertible (the inverses are exhibited), which
--     `Ext1Extraction` did not check for its own `U` and `V`;
--   * `T` is the vectorization of `X B - A X` for every integer `X`;
--   * the class of an extension vector is exactly its image under `U`
--     modulo `(2Z, 2Z, 0, 0)`, in both directions: a coboundary shifts
--     coordinates 1 and 4 by even amounts and leaves 2 and 3 alone
--     (`coboundary-shifts-evenly`), and conversely any two vectors
--     that differ so are related by a coboundary with an explicit
--     witness (`tors-complete`);
--   * the torsion is real: `C-tors = (1 0; 0 0)` is not a coboundary
--     but `2 C-tors` is (`C-tors-order-2`, `C-tors-nonzero`);
--   * the determinant (indeed the whole main diagonal) of the block
--     matrix `(A C; 0 B)` cannot see `C-tors`, while the class does.
--
-- What is not proved: a canonical reduction modulo 2 (an extractor
-- function whose equality is the same class). The completeness
-- statement is given as a relation (`tors-complete`) instead, to avoid
-- parity lemmas about `ℤ` that are not the point of this file.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.Ext1Torsion where

open import CayleyDicksonQuiver.AbelianCurse.Ext1Extraction
  using (Mat; Row; dot; mat-vec; mat-mul; vec2x2)
open import CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas
  using (addR; msub2; AllZero; az-∷; az-[]; left-kernel-annihilates-image-gen;
         AllDiv; ad-∷; ad-[]; left-kernel-mod-annihilates-image-gen)
open import Data.Integer.Divisibility.Signed using (_∣_; divides)
open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos; -[1+_] to neg[1+_])
open import Data.Integer.Properties using (+-identityʳ)
open import Data.Integer.Solver using (module +-*-Solver)
open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Product using (Σ; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂; trans; sym)
open import Relation.Nullary using (¬_)
open +-*-Solver

------------------------------------------------------------------------
-- The data
------------------------------------------------------------------------

A′ B′ : Mat
A′ = (pos 1 ∷ pos 0 ∷ []) ∷ (pos 0 ∷ pos 3 ∷ []) ∷ []
B′ = (pos 3 ∷ pos 0 ∷ []) ∷ (pos 0 ∷ pos 1 ∷ []) ∷ []

-- T = B^t (x) I_2 - I_2 (x) A = diag(3,3,1,1) - diag(1,3,1,3).

T′ : Mat
T′ = (pos 2 ∷ pos 0 ∷ pos 0 ∷ pos 0   ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 0   ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 0   ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ - pos 2 ∷ []) ∷ []

-- A Smith normal form D = U T V, with U and V signed permutations.

U′ D′ V′ : Mat
U′ = (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0   ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ - pos 1 ∷ []) ∷
     (pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0   ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 0   ∷ []) ∷ []

D′ = (pos 2 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 2 ∷ pos 0 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []

V′ = (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []) ∷
     (pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []

UTV-is-D : mat-mul 4 (mat-mul 4 U′ T′) V′ ≡ D′
UTV-is-D = refl

-- U and V are invertible over ℤ: their inverses are exhibited.

U′inv V′inv I4 : Mat
U′inv = (pos 1 ∷ pos 0   ∷ pos 0 ∷ pos 0 ∷ []) ∷
        (pos 0 ∷ pos 0   ∷ pos 1 ∷ pos 0 ∷ []) ∷
        (pos 0 ∷ pos 0   ∷ pos 0 ∷ pos 1 ∷ []) ∷
        (pos 0 ∷ - pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []

V′inv = (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
        (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []) ∷
        (pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷
        (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 0 ∷ []) ∷ []

I4 = (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 0 ∷ []) ∷
     (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []) ∷ []

U′-left-inverse  : mat-mul 4 U′inv U′ ≡ I4
U′-left-inverse  = refl

U′-right-inverse : mat-mul 4 U′ U′inv ≡ I4
U′-right-inverse = refl

V′-left-inverse  : mat-mul 4 V′inv V′ ≡ I4
V′-left-inverse  = refl

V′-right-inverse : mat-mul 4 V′ V′inv ≡ I4
V′-right-inverse = refl

------------------------------------------------------------------------
-- T is the coboundary X B - A X, for every integer X
------------------------------------------------------------------------

T′-computes-coboundary : (x11 x12 x21 x22 : ℤ) →
  let X = (x11 ∷ x12 ∷ []) ∷ (x21 ∷ x22 ∷ []) ∷ []
  in vec2x2 (msub2 (mat-mul 2 X B′) (mat-mul 2 A′ X)) ≡ mat-vec T′ (vec2x2 X)
T′-computes-coboundary x11 x12 x21 x22 =
  cong₂ _∷_ c1 (cong₂ _∷_ c2 (cong₂ _∷_ c3 (cong₂ _∷_ c4 refl)))
  where
  c1 : (x11 * pos 3 + (x12 * pos 0 + pos 0)) + - (pos 1 * x11 + (pos 0 * x21 + pos 0))
       ≡ pos 2 * x11 + (pos 0 * x21 + (pos 0 * x12 + (pos 0 * x22 + pos 0)))
  c1 = solve 4 (λ X11 X12 X21 X22 →
         (X11 :* con (pos 3) :+ (X12 :* con (pos 0) :+ con (pos 0))) :+
         (:- (con (pos 1) :* X11 :+ (con (pos 0) :* X21 :+ con (pos 0))))
         :=
         con (pos 2) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22
  c2 : (x21 * pos 3 + (x22 * pos 0 + pos 0)) + - (pos 0 * x11 + (pos 3 * x21 + pos 0))
       ≡ pos 0 * x11 + (pos 0 * x21 + (pos 0 * x12 + (pos 0 * x22 + pos 0)))
  c2 = solve 4 (λ X11 X12 X21 X22 →
         (X21 :* con (pos 3) :+ (X22 :* con (pos 0) :+ con (pos 0))) :+
         (:- (con (pos 0) :* X11 :+ (con (pos 3) :* X21 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22
  c3 : (x11 * pos 0 + (x12 * pos 1 + pos 0)) + - (pos 1 * x12 + (pos 0 * x22 + pos 0))
       ≡ pos 0 * x11 + (pos 0 * x21 + (pos 0 * x12 + (pos 0 * x22 + pos 0)))
  c3 = solve 4 (λ X11 X12 X21 X22 →
         (X11 :* con (pos 0) :+ (X12 :* con (pos 1) :+ con (pos 0))) :+
         (:- (con (pos 1) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22
  c4 : (x21 * pos 0 + (x22 * pos 1 + pos 0)) + - (pos 0 * x12 + (pos 3 * x22 + pos 0))
       ≡ pos 0 * x11 + (pos 0 * x21 + (pos 0 * x12 + (- pos 2 * x22 + pos 0)))
  c4 = solve 4 (λ X11 X12 X21 X22 →
         (X21 :* con (pos 0) :+ (X22 :* con (pos 1) :+ con (pos 0))) :+
         (:- (con (pos 0) :* X12 :+ (con (pos 3) :* X22 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ ((:- con (pos 2)) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22

------------------------------------------------------------------------
-- Soundness: a coboundary shifts coordinates 1 and 4 by even amounts
------------------------------------------------------------------------
-- In the coordinates of `U′` the class lives in
-- `Z/2 + Z/2 + Z + Z`: coordinates 1 and 4 (the torsion summands) are
-- only defined up to even shifts, coordinates 2 and 3 (the free
-- summands) are not shifted at all.

coboundary-shifts-evenly : (w1 w2 w3 w4 x1 x2 x3 x4 : ℤ) →
  addR (w1 ∷ w2 ∷ w3 ∷ w4 ∷ []) (mat-vec T′ (x1 ∷ x2 ∷ x3 ∷ x4 ∷ []))
  ≡ (w1 + pos 2 * x1) ∷ w2 ∷ w3 ∷ (w4 + (- pos 2) * x4) ∷ []
coboundary-shifts-evenly w1 w2 w3 w4 x1 x2 x3 x4 =
  cong₂ _∷_ k1 (cong₂ _∷_ k2 (cong₂ _∷_ k3 (cong₂ _∷_ k4 refl)))
  where
  k1 : w1 + (pos 2 * x1 + (pos 0 * x2 + (pos 0 * x3 + (pos 0 * x4 + pos 0)))) ≡ w1 + pos 2 * x1
  k1 = solve 5 (λ W1 X1 X2 X3 X4 →
         W1 :+ (con (pos 2) :* X1 :+ (con (pos 0) :* X2 :+ (con (pos 0) :* X3 :+ (con (pos 0) :* X4 :+ con (pos 0)))))
         := W1 :+ con (pos 2) :* X1)
         refl w1 x1 x2 x3 x4
  k2 : w2 + (pos 0 * x1 + (pos 0 * x2 + (pos 0 * x3 + (pos 0 * x4 + pos 0)))) ≡ w2
  k2 = solve 5 (λ W2 X1 X2 X3 X4 →
         W2 :+ (con (pos 0) :* X1 :+ (con (pos 0) :* X2 :+ (con (pos 0) :* X3 :+ (con (pos 0) :* X4 :+ con (pos 0)))))
         := W2)
         refl w2 x1 x2 x3 x4
  k3 : w3 + (pos 0 * x1 + (pos 0 * x2 + (pos 0 * x3 + (pos 0 * x4 + pos 0)))) ≡ w3
  k3 = solve 5 (λ W3 X1 X2 X3 X4 →
         W3 :+ (con (pos 0) :* X1 :+ (con (pos 0) :* X2 :+ (con (pos 0) :* X3 :+ (con (pos 0) :* X4 :+ con (pos 0)))))
         := W3)
         refl w3 x1 x2 x3 x4
  k4 : w4 + (pos 0 * x1 + (pos 0 * x2 + (pos 0 * x3 + (- pos 2 * x4 + pos 0)))) ≡ w4 + (- pos 2) * x4
  k4 = solve 5 (λ W4 X1 X2 X3 X4 →
         W4 :+ (con (pos 0) :* X1 :+ (con (pos 0) :* X2 :+ (con (pos 0) :* X3 :+ ((:- con (pos 2)) :* X4 :+ con (pos 0)))))
         := W4 :+ (:- con (pos 2)) :* X4)
         refl w4 x1 x2 x3 x4

-- The free coordinates are also invisible to the coboundary by the
-- general Lemma 2 (`SecondOperatorLemmas`): the rows `e2` and `e3` lie
-- in the left kernel of `T′`.

e2 e3 : Row
e2 = pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []
e3 = pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 0 ∷ []

T′-image-invisible-to-e2 : (x : Row) → dot e2 (mat-vec T′ x) ≡ pos 0
T′-image-invisible-to-e2 x =
  left-kernel-annihilates-image-gen e2 T′ x
    (az-∷ refl (az-∷ refl (az-∷ refl (az-∷ refl az-[]))))

T′-image-invisible-to-e3 : (x : Row) → dot e3 (mat-vec T′ x) ≡ pos 0
T′-image-invisible-to-e3 x =
  left-kernel-annihilates-image-gen e3 T′ x
    (az-∷ refl (az-∷ refl (az-∷ refl (az-∷ refl az-[]))))

------------------------------------------------------------------------
-- Completeness: vectors that differ evenly in 1 and 4 are cohomologous
------------------------------------------------------------------------
-- The converse of `coboundary-shifts-evenly`, with the explicit
-- witness `x = (k1, 0, 0, k2)`: if `v` agrees with `w` in coordinates 2
-- and 3, and differs from it by `2 k1` in coordinate 1 and by `-2 k2`
-- in coordinate 4, then `v = w + T x`. Together the two statements say
-- that `w` and `v` have the same class in `Ext^1` exactly when `U′ v`
-- and `U′ w` agree modulo `(2Z, 2Z, 0, 0)`.

tors-complete : (w1 w2 w3 w4 v1 v2 v3 v4 k1 k2 : ℤ) →
  v1 ≡ w1 + pos 2 * k1 → v4 ≡ w4 + (- pos 2) * k2 → v2 ≡ w2 → v3 ≡ w3 →
  v1 ∷ v2 ∷ v3 ∷ v4 ∷ [] ≡
    addR (w1 ∷ w2 ∷ w3 ∷ w4 ∷ [])
         (mat-vec T′ (k1 ∷ pos 0 ∷ pos 0 ∷ k2 ∷ []))
tors-complete w1 w2 w3 w4 .(w1 + pos 2 * k1) .w2 .w3 .(w4 + (- pos 2) * k2) k1 k2 refl refl refl refl =
  sym (coboundary-shifts-evenly w1 w2 w3 w4 k1 (pos 0) (pos 0) k2)

------------------------------------------------------------------------
-- The torsion is real: an extension class of order exactly 2
------------------------------------------------------------------------
-- `C-tors = (1 0; 0 0)` has vectorization `e1 = (1,0,0,0)`.

e1 : Row
e1 = pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []

-- 2 * C-tors is a coboundary, at X = (1 0; 0 0) (vectorized: e1).

C-tors-order-2 : mat-vec T′ e1 ≡ pos 2 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []
C-tors-order-2 = refl

-- No integer is half of 1.

2x≢1 : (x : ℤ) → ¬ (pos 2 * x ≡ pos 1)
2x≢1 (pos zero)              ()
2x≢1 (pos (suc zero))        ()
2x≢1 (pos (suc (suc n)))     ()
2x≢1 (neg[1+ n ])            ()

-- C-tors is not a coboundary: the first coordinate of `T x` is `2 x1`.

C-tors-nonzero : (x1 x2 x3 x4 : ℤ) →
  ¬ (e1 ≡ mat-vec T′ (x1 ∷ x2 ∷ x3 ∷ x4 ∷ []))
C-tors-nonzero x1 x2 x3 x4 h = 2x≢1 x1 (trans (sym (+-identityʳ _)) (sym h1))
  where
  h1 : pos 1 ≡ pos 2 * x1 + (pos 0 * x2 + (pos 0 * x3 + (pos 0 * x4 + pos 0)))
  h1 = cong (λ { (a ∷ _) → a ; [] → pos 0 }) h

------------------------------------------------------------------------
-- A coarse real-analytic measurement is blind to the torsion class
------------------------------------------------------------------------
-- The full block matrix `(A C; 0 B)` is upper triangular for diagonal
-- `A` and `B`, so its main diagonal (and with it the determinant, `9`)
-- is that of `A` and `B` alone, whatever `C` is. As in
-- `RealAnalyticCurse`, the main diagonal is what is compared; no 4x4
-- determinant is needed.

M-split M-tors : Mat
M-split = (pos 1 ∷ pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷
          (pos 0 ∷ pos 3 ∷ pos 0 ∷ pos 0 ∷ []) ∷
          (pos 0 ∷ pos 0 ∷ pos 3 ∷ pos 0 ∷ []) ∷
          (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []) ∷ []
M-tors  = (pos 1 ∷ pos 0 ∷ pos 1 ∷ pos 0 ∷ []) ∷
          (pos 0 ∷ pos 3 ∷ pos 0 ∷ pos 0 ∷ []) ∷
          (pos 0 ∷ pos 0 ∷ pos 3 ∷ pos 0 ∷ []) ∷
          (pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []) ∷ []

diag4 : Mat → Row
diag4 ((a ∷ _ ∷ _ ∷ _ ∷ []) ∷ (_ ∷ b ∷ _ ∷ _ ∷ []) ∷
       (_ ∷ _ ∷ c ∷ _ ∷ []) ∷ (_ ∷ _ ∷ _ ∷ d ∷ []) ∷ []) = a ∷ b ∷ c ∷ d ∷ []
diag4 _ = []

diagonals-agree : diag4 M-split ≡ diag4 M-tors
diagonals-agree = refl

block-matrices-differ : ¬ (M-split ≡ M-tors)
block-matrices-differ ()

------------------------------------------------------------------------
-- Application of Lemma 2' (SecondOperatorLemmas): the evenness of the
-- torsion coordinates, from the shape of T' alone
------------------------------------------------------------------------
-- `coboundary-shifts-evenly` computed with the ring solver that the first
-- and last coordinates of a coboundary shift by even amounts.  Lemma 2'
-- gives the invariance half directly: `e1^t T'` is `(2, 0, 0, 0)`, every
-- entry divisible by 2, so `e1` sees the image of `T'` only modulo 2.

T′-image-even-in-e1 : (x : Row) → pos 2 ∣ dot e1 (mat-vec T′ x)
T′-image-even-in-e1 x =
  left-kernel-mod-annihilates-image-gen (pos 2) e1 T′ x
    (ad-∷ (divides (pos 1) refl) (ad-∷ (divides (pos 0) refl)
    (ad-∷ (divides (pos 0) refl) (ad-∷ (divides (pos 0) refl) ad-[]))))
-- CayleyDicksonQuiver.AbelianCurse.DepthTwoRelations
--
-- The depth-two case of Theorem 4.2 of Sakugawa (arXiv:2402.13406,
-- after Brown [5, (7.7)]) at weight 12: the relation among canonical
-- generators recorded in `IharaBracket.weight-12-relation` corresponds
-- to the restricted even period polynomial recorded in
-- `PeriodPolynomial.weight-12-period-poly`.
--
-- Both sides are checked independently by computation; the theorem
-- identifying them (an instance of Brown's faithfulness theorem for
-- the depth-graded motivic Lie algebra) is not proved here and is not
-- claimed as a general fact of this development.
--
-- At the two pairs (i,j) = (1,4), (2,3) with i+j = 5, the coarse
-- invariant "weight 12, depth 2" does not distinguish [σ̄3,σ̄9] from
-- [σ̄5,σ̄7]; the coefficients (1,-3) of the relation between them are
-- the finer information recovered, in the sense of `Separates`. The
-- one-dimensional space this relation cuts down to matches the
-- dimension of weight-12 cusp forms for SL2(Z) (spanned by Δ), which
-- is not verified here.
--
-- See `note/AbelianCurseHypotheses.lagda.md` (AC2) for the wider
-- context, including other, independent instances of the same shape
-- (AC1, AC3, AC3b) that have not been ported to Agda.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.DepthTwoRelations where

open import Algebra.Separates using (Separates)
open import CayleyDicksonQuiver.AbelianCurse.FreeLie
open import CayleyDicksonQuiver.AbelianCurse.IharaBracket
open import CayleyDicksonQuiver.AbelianCurse.PeriodPolynomial
open import Data.Integer using (-_) renaming (+_ to pos)
open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; _+_)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (¬_)

Pair : Set
Pair = ℕ × ℕ

pair-weight : Pair → ℕ
pair-weight (i , j) = (i + i) + (j + j) + 2

coarse-signature-agrees :
  pair-weight (1 , 4) ≡ pair-weight (2 , 3)
coarse-signature-agrees = refl

bracket-side :
  nc-add-sum (ihara (sigma 1) (sigma 4))
             (nc-scale (- pos 3) (ihara (sigma 2) (sigma 3)))
    ≡ []
bracket-side = weight-12-relation

period-side : three-term weight-12-period-poly ≡ []
period-side = three-term-vanishes-4-5
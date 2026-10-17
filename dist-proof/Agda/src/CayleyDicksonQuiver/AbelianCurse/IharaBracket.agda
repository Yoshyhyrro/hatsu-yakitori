-- CayleyDicksonQuiver.AbelianCurse.IharaBracket
--
-- The Ihara bracket on Q<e0,e1>. Following Sakugawa (arXiv:2402.13406,
-- Section 3.1), the derivation `a(f)` sends e0 to [e0,f] and e1 to 0;
-- the Ihara bracket is `{f,g} = [f,g] + a(f)(g) - a(g)(f)`.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.IharaBracket where

open import CayleyDicksonQuiver.AbelianCurse.FreeLie
open import Data.Bool using (Bool; false; true)
open import Data.Integer using (-_) renaming (+_ to pos)
open import Data.List using (List; []; _∷_; _++_; map)
open import Data.Product using (_,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (¬_)

------------------------------------------------------------------------
-- The derivation a(f), f fixed
------------------------------------------------------------------------
-- `replace-with w e0f` substitutes, for each occurrence of e0 in the
-- word `w`, the polynomial `e0f`, and sums the results.

replace-with : NCWord → NCPoly → NCPoly
replace-with []            e0f = []
replace-with (false ∷ w)   e0f =
  nc-add-sum (map (λ (u , d) → u ++ w , d) e0f)
             (map (λ (v , d) → false ∷ v , d) (replace-with w e0f))
replace-with (true ∷ w)    e0f =
  map (λ (v , d) → true ∷ v , d) (replace-with w e0f)

derivation : NCPoly → NCPoly → NCPoly
derivation f g = go (nc-lie E0 f) g
  where
  go : NCPoly → NCPoly → NCPoly
  go e0f []              = []
  go e0f ((w , c) ∷ gs)  = nc-add-sum (nc-scale c (replace-with w e0f)) (go e0f gs)

ihara : NCPoly → NCPoly → NCPoly
ihara f g = nc-add-sum (nc-lie f g) (nc-sub (derivation f g) (derivation g f))

------------------------------------------------------------------------
-- Sanity checks
------------------------------------------------------------------------
-- The Ihara bracket of a depth-one generator with itself vanishes, and
-- {sigma 1, sigma 2} is a nonzero element of depth (at most) two.

ihara-self : ihara (sigma 1) (sigma 1) ≡ []
ihara-self = refl

ihara-nonzero : ¬ (ihara (sigma 1) (sigma 2) ≡ [])
ihara-nonzero ()

-- Iterating the Ihara bracket against a fixed generator, in contrast
-- with `SOReflectionGroup`'s derived series, does not visibly collapse
-- to zero: `ihara (sigma 1) -` applied twice to `sigma 2` is still
-- nonzero (its expansion has 148 terms, checked outside Agda; a third
-- application already has 890 terms, well past what this file
-- attempts to check by `refl`).

ihara-iterate-2-nonzero :
  ¬ (ihara (sigma 1) (ihara (sigma 1) (sigma 2)) ≡ [])
ihara-iterate-2-nonzero ()

------------------------------------------------------------------------
-- The weight-12 depth-two relation
------------------------------------------------------------------------
-- At weight 12 (m = 5), the pairs (i,j) with i+j = 5, i < j are (1,4)
-- and (2,3). The combination below vanishes; by Theorem 4.2 of
-- Sakugawa (after Brown [5, (7.7)]), this is the relation matching the
-- one-dimensional space of weight-12 cusp forms for SL2(Z), spanned by
-- the discriminant modular form Δ. See
-- `CayleyDicksonQuiver.AbelianCurse.PeriodPolynomial` for the matching
-- restricted even period polynomial.

weight-12-relation :
  nc-add-sum (ihara (sigma 1) (sigma 4))
             (nc-scale (- pos 3) (ihara (sigma 2) (sigma 3)))
    ≡ []
weight-12-relation = refl

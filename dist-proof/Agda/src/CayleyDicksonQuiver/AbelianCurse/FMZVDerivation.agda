-- CayleyDicksonQuiver.AbelianCurse.FMZVDerivation
--
-- The Ihara-Kaneko-Zagier derivation `∂_l` on Q<x,y> and its duality
-- automorphism `φ`, following Murahara, "Derivation relations for
-- finite multiple zeta values" (arXiv:1512.08696), Theorem 1.3 and
-- Conjecture 2 (proved there as a special case of Theorem 2.1).
--
-- `∂_l` and `φ` are ordinary, computable functions on the free
-- algebra, built on `CayleyDicksonQuiver.AbelianCurse.FreeLie`'s
-- `NCPoly`. What they are not is enough, by themselves, to prove
-- Murahara's theorem: unlike the Ihara bracket relations in
-- `IharaBracket.agda`, which close within the free Lie algebra, the
-- derivation relation for finite multiple zeta values genuinely needs
-- facts about the evaluation map `Z_F` (vanishing of depth-one finite
-- values, the harmonic-product homomorphism property, and duality)
-- that are theorems about finite multiple zeta values, not facts about
-- words. Those are postulated here, and only the base case `w = 1` of
-- the derivation relation (Theorem 2.1 with `s = 0`) is derived from
-- them, matching the base case of Murahara's own induction.
--
-- See `note/AbelianCurseHypotheses.lagda.md` (AC4) for why this is
-- filed as shape-alike rather than a confirmed instance of the Abelian
-- Curse: `∂_l` and `∂_m` were checked, outside Agda, to commute on 150
-- random cases, with no counterexample found.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.FMZVDerivation where

open import CayleyDicksonQuiver.AbelianCurse.FreeLie
  using (NCWord; NCPoly; nc-add-sum; nc-scale; nc-mul; nc-sub; nc-neg)
open import Data.Bool using (Bool; false; true)
open import Data.Integer using (ℤ; -_) renaming (+_ to pos; _+_ to _+ℤ_)
open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; zero; suc; _≤_; s≤s; z≤n; _∸_)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong)

------------------------------------------------------------------------
-- The letters, `z = x + y`, and powers of `z`
------------------------------------------------------------------------
-- `false` is `x`, `true` is `y`, matching the convention in `FreeLie`.

X Y Z : NCPoly
X = (false ∷ [] , pos 1) ∷ []
Y = (true  ∷ [] , pos 1) ∷ []
Z = nc-add-sum X Y

unit : NCPoly
unit = ([] , pos 1) ∷ []

zpow : ℕ → NCPoly
zpow zero    = unit
zpow (suc n) = nc-mul Z (zpow n)

-- `xpow-y k` is the word x^k y, i.e. `z_{k+1}` in the index-word
-- naming of `CayleyDicksonQuiver.MZV`.

xpow-y : ℕ → NCWord
xpow-y zero    = true ∷ []
xpow-y (suc k) = false ∷ xpow-y k

zword : ℕ → NCPoly
zword l = (xpow-y (l ∸ 1) , pos 1) ∷ []

------------------------------------------------------------------------
-- The derivation ∂_l, by the Leibniz rule
------------------------------------------------------------------------

partial-letter : ℕ → Bool → NCPoly
partial-letter l false = nc-mul (nc-mul X (zpow (l ∸ 1))) Y
partial-letter l true  = nc-neg (nc-mul (nc-mul X (zpow (l ∸ 1))) Y)

partial-word : ℕ → NCWord → NCPoly
partial-word l []      = []
partial-word l (b ∷ w) =
  nc-add-sum
    (nc-mul (partial-letter l b) ((w , pos 1) ∷ []))
    (nc-mul ((b ∷ [] , pos 1) ∷ []) (partial-word l w))

partial : ℕ → NCPoly → NCPoly
partial l []             = []
partial l ((w , c) ∷ ps) = nc-add-sum (nc-scale c (partial-word l w)) (partial l ps)

------------------------------------------------------------------------
-- The duality automorphism φ(x) = z, φ(y) = -y
------------------------------------------------------------------------

phi-letter : Bool → NCPoly
phi-letter false = Z
phi-letter true  = nc-neg Y

phi-word : NCWord → NCPoly
phi-word []      = unit
phi-word (b ∷ w) = nc-mul (phi-letter b) (phi-word w)

phi : NCPoly → NCPoly
phi []             = []
phi ((w , c) ∷ ps) = nc-add-sum (nc-scale c (phi-word w)) (phi ps)

------------------------------------------------------------------------
-- Sanity checks
------------------------------------------------------------------------

phi-involution-x : phi (phi X) ≡ X
phi-involution-x = refl

phi-involution-xy : phi (phi (nc-mul X Y)) ≡ nc-mul X Y
phi-involution-xy = refl

partial-3-xy : partial 3 (nc-mul X Y) ≡
  nc-sub (nc-mul (nc-mul X (zpow 2)) (nc-mul Y Y))
         (nc-mul (nc-mul X X) (nc-mul (zpow 2) Y))
partial-3-xy = refl

partial-of-unit : (l : ℕ) → partial l unit ≡ []
partial-of-unit l = refl

------------------------------------------------------------------------
-- What is assumed: three theorems about Z_F, not facts about words
------------------------------------------------------------------------
-- This project's `.agda-lib` sets `--safe` for every file, which
-- disallows `postulate` outright (by design: an inconsistent postulate
-- would silently taint anything importing it). The honest `--safe`
-- substitute is to take the needed facts as explicit parameters of a
-- module, so that what is proved below is a conditional statement --
-- "if some `F` and `ZF` satisfy these laws, then the base case holds"
-- -- rather than an assertion that they do. `F` stands for either of
-- the two finite-multiple-zeta-value targets Murahara works with (the
-- rings `A` or `S`); nothing here depends on which. `ZF` is assumed
-- ℤ-linear on `NCPoly` directly, rather than built up from a per-word
-- evaluation and a separately-assumed abelian group structure on `F`,
-- to keep the hypothesis list to exactly what the argument below uses.

module BaseCase
  (F : Set) (0F : F) (_+F_ : F → F → F) (-F_ : F → F)
  (ZF : NCPoly → F)
  -- ℤ-linearity of Z_F as a map out of formal sums of words.
  (ZF-zero : ZF [] ≡ 0F)
  (ZF-add  : (p q : NCPoly) → ZF (nc-add-sum p q) ≡ ZF p +F ZF q)
  (ZF-neg  : (p : NCPoly) → ZF (nc-neg p) ≡ -F (ZF p))
  -- Depth-one finite multiple zeta values vanish (Murahara, citing
  -- Hoffman / Kaneko-Zagier): ζ_F(l) = 0 for every l > 1.
  (ZF-depth-one-vanishes : (l : ℕ) → 2 ≤ l → ZF (zword l) ≡ 0F)
  -- Duality (Murahara, Theorem 1.3, after Hoffman / Jarossay): Z_F is
  -- invariant under φ.
  (ZF-duality : (w : NCWord) → ZF (phi ((w , pos 1) ∷ [])) ≡ ZF ((w , pos 1) ∷ []))
  where

  ------------------------------------------------------------------------
  -- The base case of the derivation relation (Theorem 2.1, s = 0)
  ------------------------------------------------------------------------
  -- `Z_F(∂_l(1)) = -Z_F(z^{l-1}y)`, Murahara's Conjecture 2 at `w = 1`,
  -- derived here from the hypotheses above and nothing else about
  -- finite multiple zeta values. The one fact this does not derive in
  -- general is `φ(z_l) = -(z^{l-1}y)` itself (`phi-fact` below):
  -- proving it for every `l` needs induction on `l` through the
  -- definition of `zpow`, not attempted here; it is checked by `refl`
  -- for `l = 2,3,4,5` instead, matching how far the Python exploration
  -- went.

  base-case-from-phi-fact :
    (l : ℕ) → 2 ≤ l →
    phi (zword l) ≡ nc-neg (nc-mul (zpow (l ∸ 1)) Y) →
    ZF (partial l unit) ≡ -F (ZF (nc-mul (zpow (l ∸ 1)) Y))
  base-case-from-phi-fact l l≥2 phi-fact =
    trans (trans (cong ZF (partial-of-unit l)) ZF-zero)
      (trans (sym (ZF-depth-one-vanishes l l≥2))
        (trans (sym (ZF-duality (xpow-y (l ∸ 1))))
          (trans (cong ZF phi-fact)
            (ZF-neg (nc-mul (zpow (l ∸ 1)) Y)))))

  phi-fact-2 : phi (zword 2) ≡ nc-neg (nc-mul (zpow 1) Y)
  phi-fact-2 = refl

  phi-fact-3 : phi (zword 3) ≡ nc-neg (nc-mul (zpow 2) Y)
  phi-fact-3 = refl

  phi-fact-4 : phi (zword 4) ≡ nc-neg (nc-mul (zpow 3) Y)
  phi-fact-4 = refl

  phi-fact-5 : phi (zword 5) ≡ nc-neg (nc-mul (zpow 4) Y)
  phi-fact-5 = refl

  base-case-2 : ZF (partial 2 unit) ≡ -F (ZF (nc-mul (zpow 1) Y))
  base-case-2 = base-case-from-phi-fact 2 (s≤s (s≤s z≤n)) phi-fact-2

  base-case-3 : ZF (partial 3 unit) ≡ -F (ZF (nc-mul (zpow 2) Y))
  base-case-3 = base-case-from-phi-fact 3 (s≤s (s≤s z≤n)) phi-fact-3

  base-case-4 : ZF (partial 4 unit) ≡ -F (ZF (nc-mul (zpow 3) Y))
  base-case-4 = base-case-from-phi-fact 4 (s≤s (s≤s z≤n)) phi-fact-4

  base-case-5 : ZF (partial 5 unit) ≡ -F (ZF (nc-mul (zpow 4) Y))
  base-case-5 = base-case-from-phi-fact 5 (s≤s (s≤s z≤n)) phi-fact-5
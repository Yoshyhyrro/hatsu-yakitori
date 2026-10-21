-- CayleyDicksonQuiver.AbelianCurse.CliffordDerivation
--
-- Probe for AC4: does the Ihara-Kaneko-Zagier derivation of
-- `FMZVDerivation` act on the Clifford algebras of `CliffordContraction`?
--
-- Setting.  `Cl_N` is the quotient of the free algebra on x, y by the ideal
--
--     I_N = ( x^2 + N ,  y^2 + N ,  x y + y x )         x |-> X, y |-> Y.
--
-- A derivation of the free algebra descends to `Cl_N` exactly when it maps
-- the three generators of `I_N` into `I_N`, i.e. when their images in `Cl_N`
-- vanish.  The derivation `∂_l` has ∂_l(x) = x z^(l-1) y, ∂_l(y) = -∂_l(x),
-- z = x + y.  Evaluated in `Cl_N` (z = X + Y, z^2 = -2N is a scalar):
--
--   * z^(2k) = (-2N)^k, so for l = 2k+1 the image of ∂_l(x) is
--     (-2N)^k Z, a multiple of Z, and all three obstructions vanish:
--     ∂_l descends to `Cl_N`, for every N.                (odd-descends)
--
--   * for l = 2k+2 the image is e (X + Y) with e = -N (-2N)^k, and the
--     obstructions are (±2N e, 0, 0, 0) on x^2 + N and y^2 + N:
--     ∂_l descends over ℤ only if 2 N^2 (-2N)^k = 0, i.e. N = 0; modulo p the
--     obstruction vanishes whenever p | N.                  (even-obstructed)
--
--   * the descended odd derivations are inner: 2 D(w) = -s [z , w] on the
--     generators X, Y, Z, where s = (-2N)^k.                (inner-*)
--
--   * the duality φ (x ↦ z, y ↦ -y) maps the relations to (-N, 0, 2N): it
--     descends only at N = 0 (modulo p when p | N).          (phi-xx, -yy, -xy)
--
-- Consequence for a "covering" reading of AC4: the arrow that exists runs
-- from the free algebra on which AC4 lives to `Cl_N` (a quotient), and the
-- derivations of AC4 collapse onto a single inner direction there; at N = 0
-- every ∂_l with l >= 2 acts by zero.  Nothing here gives an arrow from
-- `Cl_N` to AC4.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.CliffordDerivation where

import CayleyDicksonQuiver.AbelianCurse.CliffordContraction as CC
open CC using (Ops; ℤ-ops; poly; GCl; c₀; c₁; c₂; c₃; Cl; Cl≡; oneCl; zeroCl; X; Y; Z; mulN; addCl; br)
open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.Integer.Divisibility.Signed using (_∣_; ∣m⇒∣m*n; ∣n⇒∣m*n)
open import Data.Integer.Solver using (module +-*-Solver)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; trans; sym; subst)
open +-*-Solver using (solve; _:=_; con; _:+_; _:*_; :-_)

------------------------------------------------------------------------
-- The images in Cl_N
------------------------------------------------------------------------

-- a tuple builder whose type is determined by its arguments (used in the
-- solver terms, where a bare tuple of non-variables leaves a metavariable)
cl : {A : Set} → A → A → A → A → GCl A
cl a b c d = a , b , c , d

z : Cl
z = pos 0 , pos 1 , pos 1 , pos 0                       -- X + Y

negCl : Cl → Cl
negCl (a , b , c , d) = - a , - b , - c , - d

-- the power of a scalar, and the base of the powers of z^2 = (-2N) * 1
pw : ℤ → ℕ → ℤ
pw b zero    = pos 1
pw b (suc n) = pw b n * b

base : ℤ → ℤ
base N = - (pos 2 * N)

twice : ℕ → ℕ
twice zero    = zero
twice (suc k) = suc (suc (twice k))

zpow : ℤ → ℕ → Cl
zpow N zero    = oneCl
zpow N (suc n) = mulN N (zpow N n) z

-- ev (∂_l x) = x z^n y, for n = l - 1.   (ev (∂_l y) is its negative.)
dx : ℤ → ℕ → Cl
dx N n = mulN N (mulN N X (zpow N n)) Y

-- the images of the derivatives of the three relations x^2 + N, y^2 + N,
-- x y + y x under the derivation with ∂x = d, ∂y = -d
ObsXX ObsYY ObsXY : ℤ → Cl → Cl
ObsXX N d = addCl (mulN N d X) (mulN N X d)
ObsYY N d = addCl (mulN N (negCl d) Y) (mulN N Y (negCl d))
ObsXY N d = addCl (addCl (mulN N d Y) (mulN N X (negCl d)))
                  (addCl (mulN N (negCl d) X) (mulN N Y d))

------------------------------------------------------------------------
-- Scalar powers of z
------------------------------------------------------------------------

-- A scalar acts by multiplication.
scal-left : ∀ N s t a b c →
  mulN N (s , pos 0 , pos 0 , pos 0) (t , a , b , c) ≡ (s * t , s * a , s * b , s * c)
scal-left N s t a b c = Cl≡

  (solve 6 (λ N s t a b c →
      let x = cl (s) (CC.P6.𝟎) (CC.P6.𝟎) (CC.P6.𝟎)
          y = t , a , b , c
      in c₀ (CC.P6.mul N x y) := s :* t) refl N s t a b c)
  (solve 6 (λ N s t a b c →
      let x = cl (s) (CC.P6.𝟎) (CC.P6.𝟎) (CC.P6.𝟎)
          y = t , a , b , c
      in c₁ (CC.P6.mul N x y) := s :* a) refl N s t a b c)
  (solve 6 (λ N s t a b c →
      let x = cl (s) (CC.P6.𝟎) (CC.P6.𝟎) (CC.P6.𝟎)
          y = t , a , b , c
      in c₂ (CC.P6.mul N x y) := s :* b) refl N s t a b c)
  (solve 6 (λ N s t a b c →
      let x = cl (s) (CC.P6.𝟎) (CC.P6.𝟎) (CC.P6.𝟎)
          y = t , a , b , c
      in c₃ (CC.P6.mul N x y) := s :* c) refl N s t a b c)

-- Multiplying a scalar by z twice multiplies it by z^2 = -2N.
zz-scalar : ∀ N s →
  mulN N (mulN N (s , pos 0 , pos 0 , pos 0) z) z ≡ (s * base N , pos 0 , pos 0 , pos 0)
zz-scalar N s = Cl≡
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.mul N (CC.P2.mul N w zz) zz) := s :* (:- (con (pos 2) :* N))) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.mul N (CC.P2.mul N w zz) zz) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.mul N (CC.P2.mul N w zz) zz) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.mul N (CC.P2.mul N w zz) zz) := CC.P2.𝟎) refl N s)

-- z^(2k) = (-2N)^k
zpow-even : ∀ N k → zpow N (twice k) ≡ (pw (base N) k , pos 0 , pos 0 , pos 0)
zpow-even N zero    = refl
zpow-even N (suc k) =
  trans (cong (λ w → mulN N (mulN N w z) z) (zpow-even N k))
        (zz-scalar N (pw (base N) k))

-- x z^(2k) y = (-2N)^k Z
dx-odd-step : ∀ N s → mulN N (mulN N X (s , pos 0 , pos 0 , pos 0)) Y ≡ (pos 0 , pos 0 , pos 0 , s)
dx-odd-step N s = Cl≡
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.mul N (CC.P2.mul N xx w) yy) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.mul N (CC.P2.mul N xx w) yy) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.mul N (CC.P2.mul N xx w) yy) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.mul N (CC.P2.mul N xx w) yy) := s) refl N s)

dx-odd : ∀ N k → dx N (twice k) ≡ (pos 0 , pos 0 , pos 0 , pw (base N) k)
dx-odd N k = trans (cong (λ w → mulN N (mulN N X w) Y) (zpow-even N k))
                   (dx-odd-step N (pw (base N) k))

-- x z^(2k+1) y = e (X + Y) with e = -N (-2N)^k
dx-even-step : ∀ N s →
  mulN N (mulN N X (mulN N (s , pos 0 , pos 0 , pos 0) z)) Y ≡ (pos 0 , - (N * s) , - (N * s) , pos 0)
dx-even-step N s = Cl≡
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.mul N (CC.P2.mul N xx (CC.P2.mul N w zz)) yy) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.mul N (CC.P2.mul N xx (CC.P2.mul N w zz)) yy) := :- (N :* s)) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.mul N (CC.P2.mul N xx (CC.P2.mul N w zz)) yy) := :- (N :* s)) refl N s)
  (solve 2 (λ N s →
      let w = cl (s) (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎)
          zz = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟏) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.mul N (CC.P2.mul N xx (CC.P2.mul N w zz)) yy) := CC.P2.𝟎) refl N s)

dx-even : ∀ N k →
  dx N (suc (twice k)) ≡ (pos 0 , - (N * pw (base N) k) , - (N * pw (base N) k) , pos 0)
dx-even N k = trans (cong (λ w → mulN N (mulN N X (mulN N w z)) Y) (zpow-even N k))
                    (dx-even-step N (pw (base N) k))

------------------------------------------------------------------------
-- The obstructions
------------------------------------------------------------------------

-- If the image of ∂x is a multiple of Z, all three relations are preserved.
central-XX : ∀ N c → ObsXX N (pos 0 , pos 0 , pos 0 , c) ≡ zeroCl
central-XX N c = Cl≡
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N c)

central-YY : ∀ N c → ObsYY N (pos 0 , pos 0 , pos 0 , c) ≡ zeroCl
central-YY N c = Cl≡
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N c)

central-XY : ∀ N c → ObsXY N (pos 0 , pos 0 , pos 0 , c) ≡ zeroCl
central-XY N c = Cl≡
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N c)
  (solve 2 (λ N c →
      let d = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (c)
          nd = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- c)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N c)

-- If the image of ∂x is e (X + Y), the relations x^2 + N and y^2 + N are
-- not preserved: they move by -+ 2N e.
zdir-XX : ∀ N e → ObsXX N (pos 0 , e , e , pos 0) ≡ (- (pos 2 * N) * e , pos 0 , pos 0 , pos 0)
zdir-XX N e = Cl≡
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := (:- (con (pos 2) :* N)) :* e) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.addC (CC.P2.mul N d xx) (CC.P2.mul N xx d)) := CC.P2.𝟎) refl N e)

zdir-YY : ∀ N e → ObsYY N (pos 0 , e , e , pos 0) ≡ (pos 2 * N * e , pos 0 , pos 0 , pos 0)
zdir-YY N e = Cl≡
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := (con (pos 2) :* N) :* e) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.addC (CC.P2.mul N nd yy) (CC.P2.mul N yy nd)) := CC.P2.𝟎) refl N e)

zdir-XY : ∀ N e → ObsXY N (pos 0 , e , e , pos 0) ≡ zeroCl
zdir-XY N e = Cl≡
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₀ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₁ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₂ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N e)
  (solve 2 (λ N e →
      let d = cl (CC.P2.𝟎) (e) (e) (CC.P2.𝟎)
          nd = cl (CC.P2.𝟎) (:- e) (:- e) (CC.P2.𝟎)
          xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
      in c₃ (CC.P2.addC (CC.P2.addC (CC.P2.mul N d yy) (CC.P2.mul N xx nd)) (CC.P2.addC (CC.P2.mul N nd xx) (CC.P2.mul N yy d))) := CC.P2.𝟎) refl N e)

------------------------------------------------------------------------
-- The theorems, for every l
------------------------------------------------------------------------

-- l = 2k + 1: ∂_l descends to Cl_N, for every N.
odd-descends : ∀ N k →
  (ObsXX N (dx N (twice k)) ≡ zeroCl) × (ObsYY N (dx N (twice k)) ≡ zeroCl)
  × (ObsXY N (dx N (twice k)) ≡ zeroCl)
odd-descends N k =
  subst (λ d → (ObsXX N d ≡ zeroCl) × (ObsYY N d ≡ zeroCl) × (ObsXY N d ≡ zeroCl))
        (sym (dx-odd N k))
        (central-XX N s , central-YY N s , central-XY N s)
  where s = pw (base N) k

-- l = 2k + 2: ∂_l does not descend; the obstruction is 2 N (N (-2N)^k).
even-obstructed : ∀ N k →
  (ObsXX N (dx N (suc (twice k))) ≡ ((pos 2 * N) * (N * pw (base N) k) , pos 0 , pos 0 , pos 0))
  × (ObsXY N (dx N (suc (twice k))) ≡ zeroCl)
even-obstructed N k =
  subst (λ d → (ObsXX N d ≡ ((pos 2 * N) * (N * pw (base N) k) , pos 0 , pos 0 , pos 0))
               × (ObsXY N d ≡ zeroCl))
        (sym (dx-even N k))
        (trans (zdir-XX N e) (Cl≡ (solve 2 (λ N s → (:- (con (pos 2) :* N)) :* (:- (N :* s))
                                                 := (con (pos 2) :* N) :* (N :* s)) refl N s)
                                  refl refl refl)
        , zdir-XY N e)
  where s = pw (base N) k
        e = - (N * s)

-- Modulo a prime p dividing N the obstruction vanishes.
even-obstruction-divisible : ∀ p N → p ∣ N → ∀ k →
  p ∣ c₀ (ObsXX N (dx N (suc (twice k))))
even-obstruction-divisible p N p∣N k =
  subst (λ w → p ∣ c₀ w) (sym (proj₁-of (even-obstructed N k)))
        (∣m⇒∣m*n (N * pw (base N) k) (∣n⇒∣m*n (pos 2) p∣N))
  where proj₁-of : ∀ {A B : Set} → A × B → A
        proj₁-of (a , _) = a

------------------------------------------------------------------------
-- The odd derivations are inner
------------------------------------------------------------------------
-- D(X) = s Z, D(Y) = -s Z, D(Z) = D(X) Y + X D(Y).  With [z , -] the
-- commutator with z = X + Y:   2 D(w) = -s [z , w]  for w = X, Y, Z.

br-z-X : ∀ N → br N z X ≡ (pos 0 , pos 0 , pos 0 , - pos 2)
br-z-X N = Cl≡
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          xx = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₀ (CC.P1.br N zz xx) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          xx = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₁ (CC.P1.br N zz xx) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          xx = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₂ (CC.P1.br N zz xx) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          xx = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₃ (CC.P1.br N zz xx) := :- (con (pos 2))) refl N)

br-z-Y : ∀ N → br N z Y ≡ (pos 0 , pos 0 , pos 0 , pos 2)
br-z-Y N = Cl≡
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          yy = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎)
      in c₀ (CC.P1.br N zz yy) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          yy = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎)
      in c₁ (CC.P1.br N zz yy) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          yy = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎)
      in c₂ (CC.P1.br N zz yy) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          yy = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟎)
      in c₃ (CC.P1.br N zz yy) := con (pos 2)) refl N)

br-z-Z : ∀ N → br N z Z ≡ (pos 0 , pos 2 * N , - (pos 2 * N) , pos 0)
br-z-Z N = Cl≡
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          zc = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏)
      in c₀ (CC.P1.br N zz zc) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          zc = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏)
      in c₁ (CC.P1.br N zz zc) := con (pos 2) :* N) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          zc = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏)
      in c₂ (CC.P1.br N zz zc) := :- (con (pos 2) :* N)) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          zc = cl (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟏)
      in c₃ (CC.P1.br N zz zc) := CC.P1.𝟎) refl N)

-- D(Z) = D(X) Y + X D(Y) = s N (Y - X)
D-Z : ∀ N s →
  addCl (mulN N (pos 0 , pos 0 , pos 0 , s) Y) (mulN N X (pos 0 , pos 0 , pos 0 , - s))
    ≡ (pos 0 , - (s * N) , s * N , pos 0)
D-Z N s = Cl≡
  (solve 2 (λ N s →
      let xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
          dX = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (s)
          dY = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- s)
      in c₀ (CC.P2.addC (CC.P2.mul N dX yy) (CC.P2.mul N xx dY)) := CC.P2.𝟎) refl N s)
  (solve 2 (λ N s →
      let xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
          dX = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (s)
          dY = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- s)
      in c₁ (CC.P2.addC (CC.P2.mul N dX yy) (CC.P2.mul N xx dY)) := :- (s :* N)) refl N s)
  (solve 2 (λ N s →
      let xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
          dX = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (s)
          dY = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- s)
      in c₂ (CC.P2.addC (CC.P2.mul N dX yy) (CC.P2.mul N xx dY)) := s :* N) refl N s)
  (solve 2 (λ N s →
      let xx = cl (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎) (CC.P2.𝟎)
          yy = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟏) (CC.P2.𝟎)
          dX = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (s)
          dY = cl (CC.P2.𝟎) (CC.P2.𝟎) (CC.P2.𝟎) (:- s)
      in c₃ (CC.P2.addC (CC.P2.mul N dX yy) (CC.P2.mul N xx dY)) := CC.P2.𝟎) refl N s)

------------------------------------------------------------------------
-- The duality φ  (x ↦ z, y ↦ -y)
------------------------------------------------------------------------
-- φ is an automorphism of the free algebra.  It descends to Cl_N exactly
-- when the images of the relations lie in I_N.  They do not, by
--     φ(x^2 + N) = z^2 + N = -N,   φ(y^2 + N) = 0,   φ(xy + yx) = 2N,
-- so φ descends over ℤ only at N = 0 (and modulo p when p | N).  At N = 0 it
-- is the involution X ↦ X + Y, Y ↦ -Y of the exterior algebra.

phi-xx : ∀ N → addCl (mulN N z z) (N , pos 0 , pos 0 , pos 0) ≡ (- N , pos 0 , pos 0 , pos 0)
phi-xx N = Cl≡
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₀ (CC.P1.addC (CC.P1.mul N zz zz) nn) := :- N) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₁ (CC.P1.addC (CC.P1.mul N zz zz) nn) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₂ (CC.P1.addC (CC.P1.mul N zz zz) nn) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₃ (CC.P1.addC (CC.P1.mul N zz zz) nn) := CC.P1.𝟎) refl N)

phi-yy : ∀ N → addCl (mulN N (negCl Y) (negCl Y)) (N , pos 0 , pos 0 , pos 0) ≡ zeroCl
phi-yy N = Cl≡
  (solve 1 (λ N →
      let ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₀ (CC.P1.addC (CC.P1.mul N ny ny) nn) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₁ (CC.P1.addC (CC.P1.mul N ny ny) nn) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₂ (CC.P1.addC (CC.P1.mul N ny ny) nn) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
          nn = cl (N) (CC.P1.𝟎) (CC.P1.𝟎) (CC.P1.𝟎)
      in c₃ (CC.P1.addC (CC.P1.mul N ny ny) nn) := CC.P1.𝟎) refl N)

phi-xy : ∀ N → addCl (mulN N z (negCl Y)) (mulN N (negCl Y) z) ≡ (pos 2 * N , pos 0 , pos 0 , pos 0)
phi-xy N = Cl≡
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
      in c₀ (CC.P1.addC (CC.P1.mul N zz ny) (CC.P1.mul N ny zz)) := con (pos 2) :* N) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
      in c₁ (CC.P1.addC (CC.P1.mul N zz ny) (CC.P1.mul N ny zz)) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
      in c₂ (CC.P1.addC (CC.P1.mul N zz ny) (CC.P1.mul N ny zz)) := CC.P1.𝟎) refl N)
  (solve 1 (λ N →
      let zz = cl (CC.P1.𝟎) (CC.P1.𝟏) (CC.P1.𝟏) (CC.P1.𝟎)
          ny = cl (CC.P1.𝟎) (CC.P1.𝟎) (:- CC.P1.𝟏) (CC.P1.𝟎)
      in c₃ (CC.P1.addC (CC.P1.mul N zz ny) (CC.P1.mul N ny zz)) := CC.P1.𝟎) refl N)

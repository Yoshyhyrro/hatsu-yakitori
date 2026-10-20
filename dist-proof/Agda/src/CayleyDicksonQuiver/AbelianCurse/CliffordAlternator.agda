-- CayleyDicksonQuiver.AbelianCurse.CliffordAlternator
--
-- The Clifford algebras `Cl_N(2)` of `CliffordContraction`, deformed by the
-- anticommutator of the two generators.
--
-- Let f, g be two operators with f^2 = g^2 = -N, and put
--
--     S = f g + g f        (the anticommutator, `AlternatorBracket.S`).
--
-- Then for scalars x, y
--
--     (x f + y g)^2 = q(x, y) := -N x^2 + S x y - N y^2,
--
-- so S is the off-diagonal entry of the Gram matrix of the binary quadratic
-- form q.  The relations of `HeisenbergSeedRelations` (`UV c`: f g + g f = 0)
-- are the case S = 0, and the sedenion zero-divisor pairs of
-- `AlternatorBracket` are the pairs with S != 0.
--
-- This file works in coordinates.  The algebra `Cl_{N,S}` has basis
-- 1, X = f, Y = g, Z = f g with
--
--     X^2 = Y^2 = -N,   X Y = Z,   Y X = S - Z,
--
-- (it is the Clifford algebra of q).  Checked here, for all N and S:
--
--   * for S = 0 it is the algebra of `CliffordContraction`   (mulS-at-0);
--   * the defining relations, and (x X + y Y)^2 = q(x,y)      (sq-vector-form);
--   * associativity and the unit                              (assocS, oneS-*);
--   * the bracket moves under translation by Z by an explicit amount,
--         [x + k Z , y] = [x , y] + k (0 , S a' - 2N b' , 2N a' - S b' , 0),
--     which vanishes (at N = 0, and modulo p when p | N and p | S) exactly when
--     the whole Gram matrix of q vanishes: the Heisenberg regime is "q = 0".
--
-- NOT done here: no homomorphism from `Cl_{N,S}` into the operators on `CD 4`
-- is constructed, so nothing is claimed about the sedenion pairs beyond the
-- relation between S and the quadratic form q.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.CliffordAlternator where

import CayleyDicksonQuiver.AbelianCurse.CliffordContraction as CC
open CC using (Ops; ℤ-ops; poly; GCl; c₀; c₁; c₂; c₃; Cl; Cl≡; oneCl; zeroCl; X; Y; Z; addCl; DivCl)
open import Data.Empty using (⊥)
open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.Integer.Divisibility.Signed using (_∣_; divides)
open import Data.Integer.Properties using (+-identityʳ)
open import Data.Integer.Solver using (module +-*-Solver)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂; trans; sym)
open import Relation.Nullary using (¬_)
open +-*-Solver using (solve; _:=_; con; _:+_; _:*_; :-_)

------------------------------------------------------------------------
-- The algebra Cl_{N,S}, generically
------------------------------------------------------------------------

module GenS {A : Set} (O : Ops A) where
  open Ops O public
  open CC.Gen O public using (subC; addC; shiftZ; one)

  -- (s,a,b,c)(t,a',b',c') in the basis 1, f, g, z = f g, with
  --   f f = g g = -N,  f g = z,  g f = S - z.
  mulS : A → A → GCl A → GCl A → GCl A
  mulS N S (s , a , b , c) (t , a' , b' , c') =
    ((((s ⊗ t) ⊕ ⊝ (N ⊗ (a ⊗ a'))) ⊕ ⊝ (N ⊗ (b ⊗ b'))) ⊕ (S ⊗ (b ⊗ a'))) ⊕ ⊝ ((N ⊗ N) ⊗ (c ⊗ c'))
    , ((((s ⊗ a') ⊕ (a ⊗ t)) ⊕ (N ⊗ (b ⊗ c'))) ⊕ (S ⊗ (c ⊗ a'))) ⊕ ⊝ (N ⊗ (c ⊗ b'))
    , ((((s ⊗ b') ⊕ (b ⊗ t)) ⊕ ⊝ (N ⊗ (a ⊗ c'))) ⊕ (S ⊗ (b ⊗ c'))) ⊕ (N ⊗ (c ⊗ a'))
    , ((((s ⊗ c') ⊕ (c ⊗ t)) ⊕ (a ⊗ b')) ⊕ ⊝ (b ⊗ a')) ⊕ (S ⊗ (c ⊗ c'))

  brS : A → A → GCl A → GCl A → GCl A
  brS N S x y = subC (mulS N S x y) (mulS N S y x)

  -- how far [x , y] moves when x is translated by k Z
  driftS : A → A → A → GCl A → GCl A
  driftS N S k (t , a' , b' , c') =
    𝟎 , (((S ⊗ a') ⊕ ⊝ ((𝟏 ⊕ 𝟏) ⊗ (N ⊗ b'))) ⊗ k)
      , ((((𝟏 ⊕ 𝟏) ⊗ (N ⊗ a')) ⊕ ⊝ (S ⊗ b')) ⊗ k) , 𝟎

module ℤS = GenS ℤ-ops

mulS : ℤ → ℤ → Cl → Cl → Cl
mulS = ℤS.mulS

brS : ℤ → ℤ → Cl → Cl → Cl
brS = ℤS.brS

driftS : ℤ → ℤ → ℤ → Cl → Cl
driftS = ℤS.driftS

shiftZ : ℤ → Cl → Cl
shiftZ = ℤS.shiftZ

module Q2  = GenS (poly 2)
module Q4  = GenS (poly 4)
module Q6  = GenS (poly 6)
module Q9  = GenS (poly 9)
module Q11 = GenS (poly 11)
module Q14 = GenS (poly 14)

-- the quadratic form  q(x,y) = -N x^2 + S x y - N y^2
q : ℤ → ℤ → ℤ → ℤ → ℤ
q N S x y = (- (N * (x * x)) + S * (x * y)) + - (N * (y * y))

------------------------------------------------------------------------
-- S = 0 is the algebra of CliffordContraction
------------------------------------------------------------------------

mulS-at-0 : ∀ N (x y : Cl) → mulS N (pos 0) x y ≡ CC.mulN N x y
mulS-at-0 N (s , a , b , c) (t , a' , b' , c') = Cl≡
  (solve 9 (λ N s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₀ (Q9.mulS N Q9.𝟎 x y) := c₀ (CC.P9.mul N x y)) refl N s a b c t a' b' c')
  (solve 9 (λ N s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₁ (Q9.mulS N Q9.𝟎 x y) := c₁ (CC.P9.mul N x y)) refl N s a b c t a' b' c')
  (solve 9 (λ N s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₂ (Q9.mulS N Q9.𝟎 x y) := c₂ (CC.P9.mul N x y)) refl N s a b c t a' b' c')
  (solve 9 (λ N s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₃ (Q9.mulS N Q9.𝟎 x y) := c₃ (CC.P9.mul N x y)) refl N s a b c t a' b' c')

------------------------------------------------------------------------
-- The relations, and (x X + y Y)^2 = q(x, y)
------------------------------------------------------------------------

-- X^2 = -N
X-sq : ∀ N S → mulS N S X X ≡ (- N , pos 0 , pos 0 , pos 0)
X-sq N S = Cl≡
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
      in c₀ (Q2.mulS N S x x) := :- N) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
      in c₁ (Q2.mulS N S x x) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
      in c₂ (Q2.mulS N S x x) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
      in c₃ (Q2.mulS N S x x) := Q2.𝟎) refl N S)

-- Y^2 = -N
Y-sq : ∀ N S → mulS N S Y Y ≡ (- N , pos 0 , pos 0 , pos 0)
Y-sq N S = Cl≡
  (solve 2 (λ N S →
      let y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₀ (Q2.mulS N S y y) := :- N) refl N S)
  (solve 2 (λ N S →
      let y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₁ (Q2.mulS N S y y) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₂ (Q2.mulS N S y y) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₃ (Q2.mulS N S y y) := Q2.𝟎) refl N S)

-- X Y = Z
XY-is-Z : ∀ N S → mulS N S X Y ≡ Z
XY-is-Z N S = Cl≡
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₀ (Q2.mulS N S x y) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₁ (Q2.mulS N S x y) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₂ (Q2.mulS N S x y) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₃ (Q2.mulS N S x y) := Q2.𝟏) refl N S)

-- X Y + Y X = S : the anticommutator is the scalar S.
anticommutator-is-S : ∀ N S →
  addCl (mulS N S X Y) (mulS N S Y X) ≡ (S , pos 0 , pos 0 , pos 0)
anticommutator-is-S N S = Cl≡
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₀ (Q2.addC (Q2.mulS N S x y) (Q2.mulS N S y x)) := S) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₁ (Q2.addC (Q2.mulS N S x y) (Q2.mulS N S y x)) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₂ (Q2.addC (Q2.mulS N S x y) (Q2.mulS N S y x)) := Q2.𝟎) refl N S)
  (solve 2 (λ N S →
      let x = Q2.𝟎 , Q2.𝟏 , Q2.𝟎 , Q2.𝟎
          y = Q2.𝟎 , Q2.𝟎 , Q2.𝟏 , Q2.𝟎
      in c₃ (Q2.addC (Q2.mulS N S x y) (Q2.mulS N S y x)) := Q2.𝟎) refl N S)

-- (x X + y Y)^2 = q(x,y): the square of a vector in the span of X, Y is the
-- scalar given by the quadratic form whose Gram matrix has S off the diagonal.
sq-vector-form : ∀ N S x y →
  mulS N S (pos 0 , x , y , pos 0) (pos 0 , x , y , pos 0) ≡ (q N S x y , pos 0 , pos 0 , pos 0)
sq-vector-form N S x y = Cl≡
  (solve 4 (λ N S x y →
      let v = Q4.𝟎 , x , y , Q4.𝟎
      in c₀ (Q4.mulS N S v v) := :- (N :* (x :* x)) :+ (S :* (x :* y)) :+ (:- (N :* (y :* y)))) refl N S x y)
  (solve 4 (λ N S x y →
      let v = Q4.𝟎 , x , y , Q4.𝟎
      in c₁ (Q4.mulS N S v v) := Q4.𝟎) refl N S x y)
  (solve 4 (λ N S x y →
      let v = Q4.𝟎 , x , y , Q4.𝟎
      in c₂ (Q4.mulS N S v v) := Q4.𝟎) refl N S x y)
  (solve 4 (λ N S x y →
      let v = Q4.𝟎 , x , y , Q4.𝟎
      in c₃ (Q4.mulS N S v v) := Q4.𝟎) refl N S x y)

-- At N = 1, S = 2 the form is q(x,y) = -(x - y)^2: degenerate, and X + Y is a
-- nonzero element whose square vanishes.
nilpotent-example :
  mulS (pos 1) (pos 2) (pos 0 , pos 1 , pos 1 , pos 0) (pos 0 , pos 1 , pos 1 , pos 0) ≡ zeroCl
nilpotent-example = refl

nilpotent-nonzero : ¬ ((pos 0 , pos 1 , pos 1 , pos 0) ≡ zeroCl)
nilpotent-nonzero ()

------------------------------------------------------------------------
-- Associativity and the unit, for all N and S
------------------------------------------------------------------------

assocS : ∀ N S (x y z : Cl) → mulS N S (mulS N S x y) z ≡ mulS N S x (mulS N S y z)
assocS N S (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3) = Cl≡
  (solve 14 (λ N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₀ (Q14.mulS N S (Q14.mulS N S x y) z) := c₀ (Q14.mulS N S x (Q14.mulS N S y z))) refl N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
  (solve 14 (λ N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₁ (Q14.mulS N S (Q14.mulS N S x y) z) := c₁ (Q14.mulS N S x (Q14.mulS N S y z))) refl N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
  (solve 14 (λ N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₂ (Q14.mulS N S (Q14.mulS N S x y) z) := c₂ (Q14.mulS N S x (Q14.mulS N S y z))) refl N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
  (solve 14 (λ N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₃ (Q14.mulS N S (Q14.mulS N S x y) z) := c₃ (Q14.mulS N S x (Q14.mulS N S y z))) refl N S a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)

oneS-left : ∀ N S (x : Cl) → mulS N S oneCl x ≡ x
oneS-left N S (a0 , a1 , a2 , a3) = Cl≡
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₀ (Q6.mulS N S Q6.one x) := a0) refl N S a0 a1 a2 a3)
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₁ (Q6.mulS N S Q6.one x) := a1) refl N S a0 a1 a2 a3)
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₂ (Q6.mulS N S Q6.one x) := a2) refl N S a0 a1 a2 a3)
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₃ (Q6.mulS N S Q6.one x) := a3) refl N S a0 a1 a2 a3)

oneS-right : ∀ N S (x : Cl) → mulS N S x oneCl ≡ x
oneS-right N S (a0 , a1 , a2 , a3) = Cl≡
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₀ (Q6.mulS N S x Q6.one) := a0) refl N S a0 a1 a2 a3)
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₁ (Q6.mulS N S x Q6.one) := a1) refl N S a0 a1 a2 a3)
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₂ (Q6.mulS N S x Q6.one) := a2) refl N S a0 a1 a2 a3)
  (solve 6 (λ N S a0 a1 a2 a3 →
      let x = a0 , a1 , a2 , a3
      in c₃ (Q6.mulS N S x Q6.one) := a3) refl N S a0 a1 a2 a3)

------------------------------------------------------------------------
-- Where the bracket is well defined modulo Z: exactly when the Gram matrix
-- of q vanishes
------------------------------------------------------------------------

-- For every N and S:
--   [x + k Z , y] = [x , y] + k (0 , S a' - 2N b' , 2N a' - S b' , 0).
brS-shift-Z : ∀ N S k (x y : Cl) →
  brS N S (shiftZ k x) y ≡ addCl (brS N S x y) (driftS N S k y)
brS-shift-Z N S k (s , a , b , c) (t , a' , b' , c') = Cl≡
  (solve 11 (λ N S k s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₀ (Q11.brS N S (Q11.shiftZ k x) y) := c₀ (Q11.addC (Q11.brS N S x y) (Q11.driftS N S k y))) refl N S k s a b c t a' b' c')
  (solve 11 (λ N S k s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₁ (Q11.brS N S (Q11.shiftZ k x) y) := c₁ (Q11.addC (Q11.brS N S x y) (Q11.driftS N S k y))) refl N S k s a b c t a' b' c')
  (solve 11 (λ N S k s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₂ (Q11.brS N S (Q11.shiftZ k x) y) := c₂ (Q11.addC (Q11.brS N S x y) (Q11.driftS N S k y))) refl N S k s a b c t a' b' c')
  (solve 11 (λ N S k s a b c t a' b' c' →
      let x = s , a , b , c
          y = t , a' , b' , c'
      in c₃ (Q11.brS N S (Q11.shiftZ k x) y) := c₃ (Q11.addC (Q11.brS N S x y) (Q11.driftS N S k y))) refl N S k s a b c t a' b' c')

-- If N = 0 and S = 0 the drift vanishes (the Heisenberg regime) ...
brS-descends-at-00 : ∀ k (x y : Cl) →
  brS (pos 0) (pos 0) (shiftZ k x) y ≡ brS (pos 0) (pos 0) x y
brS-descends-at-00 k (s , a , b , c) (t , a' , b' , c') =
  trans (brS-shift-Z (pos 0) (pos 0) k (s , a , b , c) (t , a' , b' , c'))
        (Cl≡ (+-identityʳ _) (+-identityʳ _) (+-identityʳ _) (+-identityʳ _))

-- ... and modulo a prime p it vanishes when p divides both N and S, i.e. when
-- the quadratic form q is identically zero modulo p.
brS-drift-divisible : ∀ p N S → p ∣ N → p ∣ S → ∀ k (y : Cl) → DivCl p (driftS N S k y)
brS-drift-divisible p N S (divides qN eqN) (divides qS eqS) k (t , a' , b' , c') =
  divides (pos 0) refl
  , divides ((qS * a' + - (pos 2 * (qN * b'))) * k)
      (trans (cong₂ (λ s n → (s * a' + - ((pos 1 + pos 1) * (n * b'))) * k) eqS eqN)
        (solve 6 (λ qS qN p a' b' k →
           ((qS :* p) :* a' :+ :- ((con (pos 1) :+ con (pos 1)) :* ((qN :* p) :* b'))) :* k
           := ((qS :* a' :+ :- (con (pos 2) :* (qN :* b'))) :* k) :* p) refl qS qN p a' b' k))
  , divides ((pos 2 * (qN * a') + - (qS * b')) * k)
      (trans (cong₂ (λ s n → (((pos 1 + pos 1) * (n * a')) + - (s * b')) * k) eqS eqN)
        (solve 6 (λ qS qN p a' b' k →
           ((con (pos 1) :+ con (pos 1)) :* ((qN :* p) :* a') :+ :- ((qS :* p) :* b')) :* k
           := ((con (pos 2) :* (qN :* a') :+ :- (qS :* b')) :* k) :* p) refl qS qN p a' b' k))
  , divides (pos 0) refl

-- Conversely, if the bracket is well defined modulo Z, then 2N = 0 and S = 0.
brS-descends-only-if : ∀ N S →
  (∀ k (x y : Cl) → brS N S (shiftZ k x) y ≡ brS N S x y) →
  ((- pos 2) * N ≡ pos 0) × (- S ≡ pos 0)
brS-descends-only-if N S h =
  trans (solve 2 (λ N S → (:- con (pos 2)) :* N
                    := (S :* con (pos 0) :+ :- ((con (pos 1) :+ con (pos 1)) :* (N :* con (pos 1)))) :* con (pos 1)) refl N S)
        (CC.+-cancelˡ (c₁ (brS N S zeroCl Y)) _ (step c₁))
  , trans (solve 2 (λ N S → :- S
                    := (((con (pos 1) :+ con (pos 1)) :* (N :* con (pos 0))) :+ :- (S :* con (pos 1))) :* con (pos 1)) refl N S)
        (CC.+-cancelˡ (c₂ (brS N S zeroCl Y)) _ (step c₂))
  where
  step : (cᵢ : Cl → ℤ) → _
  step cᵢ = trans (sym (cong cᵢ (brS-shift-Z N S (pos 1) zeroCl Y)))
            (trans (cong cᵢ (h (pos 1) zeroCl Y)) (sym (+-identityʳ _)))


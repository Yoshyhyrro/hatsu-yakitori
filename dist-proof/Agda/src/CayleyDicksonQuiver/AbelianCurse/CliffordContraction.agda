-- CayleyDicksonQuiver.AbelianCurse.CliffordContraction
--
-- The one-parameter family of Clifford algebras behind the Heisenberg
-- relations of H15 and H17 (`note/CarabinerHypotheses.lagda.md`), and its
-- commutator bracket.
--
-- `Cl_N(2)` over the integers has basis 1, X, Y, Z = XY, with
--
--   X^2 = -N,   Y^2 = -N,   XY = -YX.
--
-- At N = 0 the algebra is the exterior algebra on two generators, and the
-- unipotent elements 1 + aX, 1 + bY generate a Heisenberg group.
--
-- STRUCTURE OF THE DEVELOPMENT
--
-- An element is a pair (s , v) of a scalar s and a vector v = (v1 , v2 , v3),
-- standing for s + v1 X + v2 Y + v3 Z.  The product has the quaternionic shape
--
--   (s , v) (t , w) = ( s t - g v w ,  s w + t v + v x w )
--
-- where
--   g N v w     = N v1 w1 + N v2 w2 + N^2 v3 w3     (a symmetric bilinear form)
--   cross N v w = the N-twisted cross product.
--
-- Layer 1  (vector part)  g-comm, lie-cyc-zero (Jacobi for the vector bracket)
-- Layer 1b (identities)   g-cross-inv, cross-defect: what associativity packages
-- Layer 2  (bracket)      br-split : [x , y] = (0 , 2 (v x w)),
--                         i.e. the scalar part of a commutator vanishes
-- Layer 3  (theorems)     assoc, units, jacobi, structure constants,
--                         the Heisenberg group commutator (in three steps)
-- Layer 4  (grading)      mul-scale : the weight grading (X, Y : 1, Z : 2)
--
-- HOW THE PROOFS ARE WRITTEN
--
-- Every polynomial identity is discharged by `Data.Integer.Solver`.  The
-- operations are defined once, generically over a dictionary `Ops A`, and
-- instantiated at A = ℤ (statements) and A = solver `Polynomial n` (proofs).
-- No solver syntax tree is ever written by hand: a proof reads
--
--     solve n (λ x1 ... xn → <equation, written with Pn.mul, Pn.g, ...>) refl
--
-- where `Pn` is the generic library instantiated on n solver variables.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.CliffordContraction where

open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.Integer.Solver using (module +-*-Solver)
open import Data.Product using (_×_; _,_; proj₁; proj₂)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂; trans)
open +-*-Solver using (solve; _:=_; con; _:+_; _:*_; :-_; Polynomial)

------------------------------------------------------------------------
-- Layer 0: operations, defined once and generically
------------------------------------------------------------------------

-- A dictionary of ring operations.
record Ops (A : Set) : Set where
  infixl 6 _⊕_
  infixl 7 _⊗_
  infix  8 ⊝_
  field
    _⊕_ _⊗_ : A → A → A
    ⊝_      : A → A
    𝟎 𝟏     : A

-- Instance used in statements.
ℤ-ops : Ops ℤ
ℤ-ops = record { _⊕_ = _+_ ; _⊗_ = _*_ ; ⊝_ = -_ ; 𝟎 = pos 0 ; 𝟏 = pos 1 }

-- Instance used in proofs: the solver's expression language on n variables.
poly : ∀ n → Ops (Polynomial n)
poly n = record { _⊕_ = _:+_ ; _⊗_ = _:*_ ; ⊝_ = :-_ ; 𝟎 = con (pos 0) ; 𝟏 = con (pos 1) }

GV : Set → Set
GV A = A × A × A

GCl : Set → Set
GCl A = A × A × A × A

-- coordinate projections
π₁ π₂ π₃ : {A : Set} → GV A → A
π₁ (a , _ , _) = a
π₂ (_ , a , _) = a
π₃ (_ , _ , a) = a

c₀ c₁ c₂ c₃ : {A : Set} → GCl A → A
c₀ (a , _ , _ , _) = a
c₁ (_ , a , _ , _) = a
c₂ (_ , _ , a , _) = a
c₃ (_ , _ , _ , a) = a

module Gen {A : Set} (O : Ops A) where
  open Ops O public

  infixl 6 _⊞_
  infixr 7 _⊡_

  -- vectors
  _⊞_ : GV A → GV A → GV A
  (a1 , a2 , a3) ⊞ (b1 , b2 , b3) = (a1 ⊕ b1) , (a2 ⊕ b2) , (a3 ⊕ b3)

  _⊡_ : A → GV A → GV A
  k ⊡ (a1 , a2 , a3) = (k ⊗ a1) , (k ⊗ a2) , (k ⊗ a3)

  -- the symmetric bilinear form g_N (the scalar part of -v v)
  g : A → GV A → GV A → A
  g N (a1 , a2 , a3) (b1 , b2 , b3) =
    ((N ⊗ (a1 ⊗ b1)) ⊕ (N ⊗ (a2 ⊗ b2))) ⊕ ((N ⊗ N) ⊗ (a3 ⊗ b3))

  -- the N-twisted cross product (the vector part of v w)
  cross : A → GV A → GV A → GV A
  cross N (a1 , a2 , a3) (b1 , b2 , b3) =
    ((N ⊗ (a2 ⊗ b3)) ⊕ ⊝ (N ⊗ (a3 ⊗ b2)))
    , ((N ⊗ (a3 ⊗ b1)) ⊕ ⊝ (N ⊗ (a1 ⊗ b3)))
    , ((a1 ⊗ b2) ⊕ ⊝ (a2 ⊗ b1))

  -- the Lie bracket on vectors: 2 (v x w)
  lie : A → GV A → GV A → GV A
  lie N v w = cross N v w ⊞ cross N v w

  -- the cyclic sum appearing in the Jacobi identity
  lie-cyc : A → GV A → GV A → GV A → GV A
  lie-cyc N v w u = lie N v (lie N w u) ⊞ (lie N w (lie N u v) ⊞ lie N u (lie N v w))

  -- Clifford elements
  mul : A → GCl A → GCl A → GCl A
  mul N (s , v) (t , w) = ((s ⊗ t) ⊕ ⊝ (g N v w)) , (((s ⊡ w) ⊞ (t ⊡ v)) ⊞ cross N v w)

  addC subC : GCl A → GCl A → GCl A
  addC (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) =
    (a0 ⊕ b0) , (a1 ⊕ b1) , (a2 ⊕ b2) , (a3 ⊕ b3)
  subC (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) =
    (a0 ⊕ ⊝ b0) , (a1 ⊕ ⊝ b1) , (a2 ⊕ ⊝ b2) , (a3 ⊕ ⊝ b3)

  -- the commutator bracket [x , y] = x y - y x
  br : A → GCl A → GCl A → GCl A
  br N x y = subC (mul N x y) (mul N y x)

  one : GCl A
  one = 𝟏 , 𝟎 , 𝟎 , 𝟎

  -- weights: 1 and the scalar part have weight 0, X and Y weight 1, Z weight 2
  scaleC : A → GCl A → GCl A
  scaleC t (s , v1 , v2 , v3) = s , (t ⊗ v1) , (t ⊗ v2) , ((t ⊗ t) ⊗ v3)

  -- the unipotent elements 1 + aX and 1 + bY
  uX uY : A → GCl A
  uX a = 𝟏 , a , 𝟎 , 𝟎
  uY b = 𝟏 , 𝟎 , b , 𝟎

-- The instance at ℤ.
module ℤG = Gen ℤ-ops
open ℤG using (g; cross; lie; lie-cyc; _⊞_; _⊡_; uX; uY; scaleC)

-- The instances at n solver variables, one for each arity used below.
module P1  = Gen (poly 1)
module P2  = Gen (poly 2)
module P5  = Gen (poly 5)
module P7  = Gen (poly 7)
module P9  = Gen (poly 9)
module P10 = Gen (poly 10)
module P13 = Gen (poly 13)

V Cl : Set
V  = GV ℤ
Cl = GCl ℤ

mulN : ℤ → Cl → Cl → Cl
mulN = ℤG.mul

br : ℤ → Cl → Cl → Cl
br = ℤG.br

addCl : Cl → Cl → Cl
addCl = ℤG.addC

oneCl zeroCl X Y Z : Cl
oneCl  = pos 1 , pos 0 , pos 0 , pos 0
zeroCl = pos 0 , pos 0 , pos 0 , pos 0
X      = pos 0 , pos 1 , pos 0 , pos 0
Y      = pos 0 , pos 0 , pos 1 , pos 0
Z      = pos 0 , pos 0 , pos 0 , pos 1

-- Equality of tuples from equality of coordinates.
V≡ : {a1 a2 a3 b1 b2 b3 : ℤ} →
     a1 ≡ b1 → a2 ≡ b2 → a3 ≡ b3 → (a1 , a2 , a3) ≡ (b1 , b2 , b3)
V≡ refl refl refl = refl

Cl≡ : {a0 a1 a2 a3 b0 b1 b2 b3 : ℤ} →
      a0 ≡ b0 → a1 ≡ b1 → a2 ≡ b2 → a3 ≡ b3 →
      (a0 , a1 , a2 , a3) ≡ (b0 , b1 , b2 , b3)
Cl≡ refl refl refl refl = refl

------------------------------------------------------------------------
-- Layer 1: the vector part
------------------------------------------------------------------------

-- g_N is symmetric.
g-comm : ∀ N v1 v2 v3 w1 w2 w3 →
  g N (v1 , v2 , v3) (w1 , w2 , w3) ≡ g N (w1 , w2 , w3) (v1 , v2 , v3)
g-comm = solve 7 (λ N v1 v2 v3 w1 w2 w3 →
  P7.g N (v1 , v2 , v3) (w1 , w2 , w3) := P7.g N (w1 , w2 , w3) (v1 , v2 , v3)) refl

-- The Jacobi identity for the vector bracket.  Scalars play no role here.
lie-cyc-zero : ∀ N (v w u : V) → lie-cyc N v w u ≡ (pos 0 , pos 0 , pos 0)
lie-cyc-zero N (v1 , v2 , v3) (w1 , w2 , w3) (u1 , u2 , u3) = V≡
  (solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
     π₁ (P10.lie-cyc N (v1 , v2 , v3) (w1 , w2 , w3) (u1 , u2 , u3)) := P10.𝟎) refl N v1 v2 v3 w1 w2 w3 u1 u2 u3)
  (solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
     π₂ (P10.lie-cyc N (v1 , v2 , v3) (w1 , w2 , w3) (u1 , u2 , u3)) := P10.𝟎) refl N v1 v2 v3 w1 w2 w3 u1 u2 u3)
  (solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
     π₃ (P10.lie-cyc N (v1 , v2 , v3) (w1 , w2 , w3) (u1 , u2 , u3)) := P10.𝟎) refl N v1 v2 v3 w1 w2 w3 u1 u2 u3)

------------------------------------------------------------------------
-- Layer 1b: the two identities behind associativity
------------------------------------------------------------------------

-- g_N is invariant under the cross product (cyclic triple product).
g-cross-inv : ∀ N (v w u : V) → g N (cross N v w) u ≡ g N v (cross N w u)
g-cross-inv N (v1 , v2 , v3) (w1 , w2 , w3) (u1 , u2 , u3) =
  solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          u = u1 , u2 , u3
      in P10.g N (P10.cross N v w) u := P10.g N v (P10.cross N w u))
    refl N v1 v2 v3 w1 w2 w3 u1 u2 u3

-- The failure of associativity of the cross product is measured by g:
--     (v x w) x u - v x (w x u) = g v w . u - g w u . v
cross-defect : ∀ N (v w u : V) →
  cross N (cross N v w) u ⊞ (g N w u ⊡ v) ≡ cross N v (cross N w u) ⊞ (g N v w ⊡ u)
cross-defect N (v1 , v2 , v3) (w1 , w2 , w3) (u1 , u2 , u3) = V≡
  (solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          u = u1 , u2 , u3
      in π₁ (P10.cross N (P10.cross N v w) u P10.⊞ (P10.g N w u P10.⊡ v))
         := π₁ (P10.cross N v (P10.cross N w u) P10.⊞ (P10.g N v w P10.⊡ u))) refl N v1 v2 v3 w1 w2 w3 u1 u2 u3)
  (solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          u = u1 , u2 , u3
      in π₂ (P10.cross N (P10.cross N v w) u P10.⊞ (P10.g N w u P10.⊡ v))
         := π₂ (P10.cross N v (P10.cross N w u) P10.⊞ (P10.g N v w P10.⊡ u))) refl N v1 v2 v3 w1 w2 w3 u1 u2 u3)
  (solve 10 (λ N v1 v2 v3 w1 w2 w3 u1 u2 u3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          u = u1 , u2 , u3
      in π₃ (P10.cross N (P10.cross N v w) u P10.⊞ (P10.g N w u P10.⊡ v))
         := π₃ (P10.cross N v (P10.cross N w u) P10.⊞ (P10.g N v w P10.⊡ u))) refl N v1 v2 v3 w1 w2 w3 u1 u2 u3)

------------------------------------------------------------------------
-- Layer 2: the commutator bracket
------------------------------------------------------------------------

-- The scalar part of a commutator vanishes, and its vector part is the Lie
-- bracket of the vector parts:   [(s , v) , (t , w)] = (0 , 2 (v x w)).
-- Scalars are central, so s and t drop out.  Mathematically the scalar part
-- cancels because g is symmetric (`g-comm`) and the vector part because
-- `cross` is antisymmetric; the solver checks the combined identity directly.
br-split : ∀ N s (v : V) t (w : V) → br N (s , v) (t , w) ≡ (pos 0 , lie N v w)
br-split N s (v1 , v2 , v3) t (w1 , w2 , w3) = Cl≡
  (solve 9 (λ N s v1 v2 v3 t w1 w2 w3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          x = s , v
          y = t , w
      in c₀ (P9.br N x y) := P9.𝟎) refl N s v1 v2 v3 t w1 w2 w3)
  (solve 9 (λ N s v1 v2 v3 t w1 w2 w3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          x = s , v
          y = t , w
      in c₁ (P9.br N x y) := π₁ (P9.lie N v w)) refl N s v1 v2 v3 t w1 w2 w3)
  (solve 9 (λ N s v1 v2 v3 t w1 w2 w3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          x = s , v
          y = t , w
      in c₂ (P9.br N x y) := π₂ (P9.lie N v w)) refl N s v1 v2 v3 t w1 w2 w3)
  (solve 9 (λ N s v1 v2 v3 t w1 w2 w3 →
      let v = v1 , v2 , v3
          w = w1 , w2 , w3
          x = s , v
          y = t , w
      in c₃ (P9.br N x y) := π₃ (P9.lie N v w)) refl N s v1 v2 v3 t w1 w2 w3)

------------------------------------------------------------------------
-- Layer 3: theorems
------------------------------------------------------------------------

-- The Jacobi identity: the scalar parts vanish by `br-split`, and the vector
-- parts cancel by `lie-cyc-zero`.
jacobi : (N : ℤ) (x y z : Cl) →
  addCl (br N x (br N y z)) (addCl (br N y (br N z x)) (br N z (br N x y))) ≡ zeroCl
jacobi N (s , v) (t , w) (r , u) =
  trans (cong₂ addCl (cong (br N (s , v)) (br-split N t w r u))
          (cong₂ addCl (cong (br N (t , w)) (br-split N r u s v))
                       (cong (br N (r , u)) (br-split N s v t w))))
 (trans (cong₂ addCl (br-split N s v (pos 0) (lie N w u))
          (cong₂ addCl (br-split N t w (pos 0) (lie N u v))
                       (br-split N r u (pos 0) (lie N v w))))
        (cong (_,_ (pos 0)) (lie-cyc-zero N v w u)))

-- Associativity.  A polynomial identity in 13 variables, proved directly
-- by the solver, one coordinate at a time.  Specialising to s = t = r = 0
-- shows that it packages exactly the two identities of Layer 1b
-- (`g-cross-inv` for the scalar part, `cross-defect` for the vector part).
assoc : (N : ℤ) (x y z : Cl) → mulN N (mulN N x y) z ≡ mulN N x (mulN N y z)
assoc N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3) = Cl≡
  (solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₀ (P13.mul N (P13.mul N x y) z) := c₀ (P13.mul N x (P13.mul N y z))) refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
  (solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₁ (P13.mul N (P13.mul N x y) z) := c₁ (P13.mul N x (P13.mul N y z))) refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
  (solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₂ (P13.mul N (P13.mul N x y) z) := c₂ (P13.mul N x (P13.mul N y z))) refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
  (solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
          z = c0 , c1 , c2 , c3
      in c₃ (P13.mul N (P13.mul N x y) z) := c₃ (P13.mul N x (P13.mul N y z))) refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)

-- The unit.
one-left : (N : ℤ) (x : Cl) → mulN N oneCl x ≡ x
one-left N (a0 , a1 , a2 , a3) = Cl≡
  (solve 5 (λ N a0 a1 a2 a3 →
     c₀ (P5.mul N P5.one (a0 , a1 , a2 , a3)) := a0) refl N a0 a1 a2 a3)
  (solve 5 (λ N a0 a1 a2 a3 →
     c₁ (P5.mul N P5.one (a0 , a1 , a2 , a3)) := a1) refl N a0 a1 a2 a3)
  (solve 5 (λ N a0 a1 a2 a3 →
     c₂ (P5.mul N P5.one (a0 , a1 , a2 , a3)) := a2) refl N a0 a1 a2 a3)
  (solve 5 (λ N a0 a1 a2 a3 →
     c₃ (P5.mul N P5.one (a0 , a1 , a2 , a3)) := a3) refl N a0 a1 a2 a3)

one-right : (N : ℤ) (x : Cl) → mulN N x oneCl ≡ x
one-right N (a0 , a1 , a2 , a3) = Cl≡
  (solve 5 (λ N a0 a1 a2 a3 →
     c₀ (P5.mul N (a0 , a1 , a2 , a3) P5.one) := a0) refl N a0 a1 a2 a3)
  (solve 5 (λ N a0 a1 a2 a3 →
     c₁ (P5.mul N (a0 , a1 , a2 , a3) P5.one) := a1) refl N a0 a1 a2 a3)
  (solve 5 (λ N a0 a1 a2 a3 →
     c₂ (P5.mul N (a0 , a1 , a2 , a3) P5.one) := a2) refl N a0 a1 a2 a3)
  (solve 5 (λ N a0 a1 a2 a3 →
     c₃ (P5.mul N (a0 , a1 , a2 , a3) P5.one) := a3) refl N a0 a1 a2 a3)

------------------------------------------------------------------------
-- Structure constants for all N, and the Heisenberg Lie algebra at N = 0
------------------------------------------------------------------------

-- The bracket of the basis vectors (the whole computation is on 1 variable).
lie-XY : ∀ N → lie N (pos 1 , pos 0 , pos 0) (pos 0 , pos 1 , pos 0) ≡ (pos 0 , pos 0 , pos 2)
lie-XY = λ N → V≡
  (solve 1 (λ N →
     π₁ (P1.lie N (P1.𝟏 , P1.𝟎 , P1.𝟎) (P1.𝟎 , P1.𝟏 , P1.𝟎)) := P1.𝟎) refl N)
  (solve 1 (λ N →
     π₂ (P1.lie N (P1.𝟏 , P1.𝟎 , P1.𝟎) (P1.𝟎 , P1.𝟏 , P1.𝟎)) := P1.𝟎) refl N)
  (solve 1 (λ N →
     π₃ (P1.lie N (P1.𝟏 , P1.𝟎 , P1.𝟎) (P1.𝟎 , P1.𝟏 , P1.𝟎)) := con (pos 2)) refl N)

lie-XZ : ∀ N → lie N (pos 1 , pos 0 , pos 0) (pos 0 , pos 0 , pos 1) ≡ (pos 0 , (- pos 2) * N , pos 0)
lie-XZ = λ N → V≡
  (solve 1 (λ N →
     π₁ (P1.lie N (P1.𝟏 , P1.𝟎 , P1.𝟎) (P1.𝟎 , P1.𝟎 , P1.𝟏)) := P1.𝟎) refl N)
  (solve 1 (λ N →
     π₂ (P1.lie N (P1.𝟏 , P1.𝟎 , P1.𝟎) (P1.𝟎 , P1.𝟎 , P1.𝟏)) := (:- (con (pos 2))) :* N) refl N)
  (solve 1 (λ N →
     π₃ (P1.lie N (P1.𝟏 , P1.𝟎 , P1.𝟎) (P1.𝟎 , P1.𝟎 , P1.𝟏)) := P1.𝟎) refl N)

lie-YZ : ∀ N → lie N (pos 0 , pos 1 , pos 0) (pos 0 , pos 0 , pos 1) ≡ (pos 2 * N , pos 0 , pos 0)
lie-YZ = λ N → V≡
  (solve 1 (λ N →
     π₁ (P1.lie N (P1.𝟎 , P1.𝟏 , P1.𝟎) (P1.𝟎 , P1.𝟎 , P1.𝟏)) := (con (pos 2)) :* N) refl N)
  (solve 1 (λ N →
     π₂ (P1.lie N (P1.𝟎 , P1.𝟏 , P1.𝟎) (P1.𝟎 , P1.𝟎 , P1.𝟏)) := P1.𝟎) refl N)
  (solve 1 (λ N →
     π₃ (P1.lie N (P1.𝟎 , P1.𝟏 , P1.𝟎) (P1.𝟎 , P1.𝟎 , P1.𝟏)) := P1.𝟎) refl N)

bracket-XY : (N : ℤ) → br N X Y ≡ ((pos 0) , (pos 0) , (pos 0) , (pos 2))
bracket-XY N = trans (br-split N (pos 0) (pos 1 , pos 0 , pos 0) (pos 0) (pos 0 , pos 1 , pos 0))
                     (cong (_,_ (pos 0)) (lie-XY N))

bracket-XZ : (N : ℤ) → br N X Z ≡ ((pos 0) , (pos 0) , ((- pos 2) * N) , (pos 0))
bracket-XZ N = trans (br-split N (pos 0) (pos 1 , pos 0 , pos 0) (pos 0) (pos 0 , pos 0 , pos 1))
                     (cong (_,_ (pos 0)) (lie-XZ N))

bracket-YZ : (N : ℤ) → br N Y Z ≡ ((pos 0) , ((pos 2) * N) , (pos 0) , (pos 0))
bracket-YZ N = trans (br-split N (pos 0) (pos 0 , pos 1 , pos 0) (pos 0) (pos 0 , pos 0 , pos 1))
                     (cong (_,_ (pos 0)) (lie-YZ N))

-- At N = 0 the element Z is central: the Lie algebra is the Heisenberg algebra.
heisenberg-XZ : br (pos 0) X Z ≡ zeroCl
heisenberg-XZ = refl

heisenberg-YZ : br (pos 0) Y Z ≡ zeroCl
heisenberg-YZ = refl

heisenberg-XY : br (pos 0) X Y ≡ (pos 0 , pos 0 , pos 0 , pos 2)
heisenberg-XY = refl

------------------------------------------------------------------------
-- The bracket lemma at N = 0: the group commutator of 1 + aX and 1 + bY
-- is 1 + ab [X,Y].  The computation is split into three named steps, each
-- a polynomial identity in the two variables a and b.
------------------------------------------------------------------------

-- (1 + aX)(1 + bY) = 1 + aX + bY + abZ
gc-step₁ : (a b : ℤ) → mulN (pos 0) (uX a) (uY b) ≡ (pos 1 , a , b , a * b)
gc-step₁ a b = Cl≡
  (solve 2 (λ a b →
     c₀ (P2.mul P2.𝟎 (P2.uX a) (P2.uY b)) := P2.𝟏) refl a b)
  (solve 2 (λ a b →
     c₁ (P2.mul P2.𝟎 (P2.uX a) (P2.uY b)) := a) refl a b)
  (solve 2 (λ a b →
     c₂ (P2.mul P2.𝟎 (P2.uX a) (P2.uY b)) := b) refl a b)
  (solve 2 (λ a b →
     c₃ (P2.mul P2.𝟎 (P2.uX a) (P2.uY b)) := a :* b) refl a b)

-- (1 + aX + bY + abZ)(1 - aX) = 1 + bY + 2abZ
gc-step₂ : (a b : ℤ) →
  mulN (pos 0) (pos 1 , a , b , a * b) (uX (- a)) ≡ (pos 1 , pos 0 , b , (pos 2 * a) * b)
gc-step₂ a b = Cl≡
  (solve 2 (λ a b →
     c₀ (P2.mul P2.𝟎 (P2.𝟏 , a , b , a :* b) (P2.uX (:- a))) := P2.𝟏) refl a b)
  (solve 2 (λ a b →
     c₁ (P2.mul P2.𝟎 (P2.𝟏 , a , b , a :* b) (P2.uX (:- a))) := P2.𝟎) refl a b)
  (solve 2 (λ a b →
     c₂ (P2.mul P2.𝟎 (P2.𝟏 , a , b , a :* b) (P2.uX (:- a))) := b) refl a b)
  (solve 2 (λ a b →
     c₃ (P2.mul P2.𝟎 (P2.𝟏 , a , b , a :* b) (P2.uX (:- a))) := ((con (pos 2)) :* a) :* b) refl a b)

-- (1 + bY + 2abZ)(1 - bY) = 1 + 2abZ
gc-step₃ : (a b : ℤ) →
  mulN (pos 0) (pos 1 , pos 0 , b , (pos 2 * a) * b) (uY (- b)) ≡ (pos 1 , pos 0 , pos 0 , (pos 2 * a) * b)
gc-step₃ a b = Cl≡
  (solve 2 (λ a b →
     c₀ (P2.mul P2.𝟎 (P2.𝟏 , P2.𝟎 , b , ((con (pos 2)) :* a) :* b) (P2.uY (:- b))) := P2.𝟏) refl a b)
  (solve 2 (λ a b →
     c₁ (P2.mul P2.𝟎 (P2.𝟏 , P2.𝟎 , b , ((con (pos 2)) :* a) :* b) (P2.uY (:- b))) := P2.𝟎) refl a b)
  (solve 2 (λ a b →
     c₂ (P2.mul P2.𝟎 (P2.𝟏 , P2.𝟎 , b , ((con (pos 2)) :* a) :* b) (P2.uY (:- b))) := P2.𝟎) refl a b)
  (solve 2 (λ a b →
     c₃ (P2.mul P2.𝟎 (P2.𝟏 , P2.𝟎 , b , ((con (pos 2)) :* a) :* b) (P2.uY (:- b))) := ((con (pos 2)) :* a) :* b) refl a b)

group-commutator : (a b : ℤ) →
  mulN (pos 0) (mulN (pos 0) (mulN (pos 0) (uX a) (uY b)) (uX (- a))) (uY (- b))
    ≡ (pos 1 , pos 0 , pos 0 , (pos 2 * a) * b)
group-commutator a b =
  trans (cong (λ p → mulN (pos 0) (mulN (pos 0) p (uX (- a))) (uY (- b))) (gc-step₁ a b))
 (trans (cong (λ q → mulN (pos 0) q (uY (- b))) (gc-step₂ a b))
        (gc-step₃ a b))

------------------------------------------------------------------------
-- Layer 4: the weight grading (Inönü–Wigner contraction)
------------------------------------------------------------------------

-- Give X and Y weight 1 and Z weight 2, and scale by t accordingly.  This
-- identifies Cl_{t² N} with Cl_N: contracting N to 0 is scaling t to 0, and
-- the Heisenberg algebra is the associated graded algebra.
scale : ℤ → Cl → Cl
scale = scaleC

mul-scale : ∀ N t (x y : Cl) →
  mulN N (scale t x) (scale t y) ≡ scale t (mulN ((t * t) * N) x y)
mul-scale N t (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) = Cl≡
  (solve 10 (λ N t a0 a1 a2 a3 b0 b1 b2 b3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
      in c₀ (P10.mul N (P10.scaleC t x) (P10.scaleC t y))
         := c₀ (P10.scaleC t (P10.mul ((t :* t) :* N) x y))) refl N t a0 a1 a2 a3 b0 b1 b2 b3)
  (solve 10 (λ N t a0 a1 a2 a3 b0 b1 b2 b3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
      in c₁ (P10.mul N (P10.scaleC t x) (P10.scaleC t y))
         := c₁ (P10.scaleC t (P10.mul ((t :* t) :* N) x y))) refl N t a0 a1 a2 a3 b0 b1 b2 b3)
  (solve 10 (λ N t a0 a1 a2 a3 b0 b1 b2 b3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
      in c₂ (P10.mul N (P10.scaleC t x) (P10.scaleC t y))
         := c₂ (P10.scaleC t (P10.mul ((t :* t) :* N) x y))) refl N t a0 a1 a2 a3 b0 b1 b2 b3)
  (solve 10 (λ N t a0 a1 a2 a3 b0 b1 b2 b3 →
      let x = a0 , a1 , a2 , a3
          y = b0 , b1 , b2 , b3
      in c₃ (P10.mul N (P10.scaleC t x) (P10.scaleC t y))
         := c₃ (P10.scaleC t (P10.mul ((t :* t) :* N) x y))) refl N t a0 a1 a2 a3 b0 b1 b2 b3)
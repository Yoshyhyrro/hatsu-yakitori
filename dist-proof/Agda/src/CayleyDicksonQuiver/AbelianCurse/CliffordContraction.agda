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
-- These are exactly the relations satisfied by the left multiplications
-- f = L_u, g = L_v of the lower-half seeds (`HeisenbergSeedRelations`:
-- u (u y) = -N y, v (v y) = -N y, u (v y) + v (u y) = 0, N = 1 + c^2).
-- At N = 0 (modulo a prime p dividing N) the algebra is the exterior
-- algebra on two generators, and the unipotent elements 1 + aX, 1 + bY
-- generate a Heisenberg group.
--
-- Proved here, for ALL N, by the ring solver on the coordinates (a0, a1, a2,
-- a3) = a0 + a1 X + a2 Y + a3 Z:
--   * `assoc`: the product is associative; `one-left`, `one-right`: unit;
--   * `jacobi`: the commutator bracket [x, y] = xy - yx satisfies the Jacobi
--     identity;
--   * `bracket-XY`, `bracket-XZ`, `bracket-YZ`: the structure constants
--     [X,Y] = 2Z, [X,Z] = -2N Y, [Y,Z] = 2N X;
-- and, at N = 0 (the Heisenberg Lie algebra: Z is central):
--   * `heisenberg-XZ`, `heisenberg-YZ`;
--   * `group-commutator`: (1 + aX)(1 + bY)(1 - aX)(1 - bY) = 1 + ab [X,Y],
--     the bracket lemma "the group commutator is one plus the Lie bracket".
-- The family N -> Cl_N is a contraction: for N != 0 the bracket is that of
-- so(3) (up to scaling), and at N = 0 that of the Heisenberg algebra.
--
-- NOT here: the homomorphism from `Cl_N(2)` into the operators L_u, L_v on
-- `CD 4` (it needs the relations of `HeisenbergSeedRelations` on every vector,
-- not only on basis vectors), and any statement about p-fold powers or the
-- finite group over Z/p.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.CliffordContraction where

open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.Integer.Solver using (module +-*-Solver)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong₂)
open +-*-Solver

Cl : Set
Cl = ℤ × ℤ × ℤ × ℤ

-- components of the product (a0 + a1 X + a2 Y + a3 Z)(b0 + b1 X + b2 Y + b3 Z)

mul0 : ℤ → Cl → Cl → ℤ
mul0 N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) =
  ((((a0 * b0) + (- ((N * a1) * b1))) + (- ((N * a2) * b2))) + (- (((N * N) * a3) * b3)))

mul1 : ℤ → Cl → Cl → ℤ
mul1 N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) =
  ((((a0 * b1) + (a1 * b0)) + ((N * a2) * b3)) + (- ((N * a3) * b2)))

mul2 : ℤ → Cl → Cl → ℤ
mul2 N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) =
  ((((a0 * b2) + (a2 * b0)) + (- ((N * a1) * b3))) + ((N * a3) * b1))

mul3 : ℤ → Cl → Cl → ℤ
mul3 N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) =
  ((((a0 * b3) + (a3 * b0)) + (a1 * b2)) + (- (a2 * b1)))


mulN : ℤ → Cl → Cl → Cl
mulN N x y = mul0 N x y , mul1 N x y , mul2 N x y , mul3 N x y

oneCl zeroCl X Y Z : Cl
oneCl  = pos 1 , pos 0 , pos 0 , pos 0
zeroCl = pos 0 , pos 0 , pos 0 , pos 0
X      = pos 0 , pos 1 , pos 0 , pos 0
Y      = pos 0 , pos 0 , pos 1 , pos 0
Z      = pos 0 , pos 0 , pos 0 , pos 1

-- the commutator bracket

br0 : ℤ → Cl → Cl → ℤ
br0 N x y = mul0 N x y + (- mul0 N y x)

br1 : ℤ → Cl → Cl → ℤ
br1 N x y = mul1 N x y + (- mul1 N y x)

br2 : ℤ → Cl → Cl → ℤ
br2 N x y = mul2 N x y + (- mul2 N y x)

br3 : ℤ → Cl → Cl → ℤ
br3 N x y = mul3 N x y + (- mul3 N y x)

br : ℤ → Cl → Cl → Cl
br N x y = br0 N x y , br1 N x y , br2 N x y , br3 N x y


------------------------------------------------------------------------
-- Associativity, units, Jacobi (all N)
------------------------------------------------------------------------

assoc-0 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  mul0 N (mulN N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)) (c0 , c1 , c2 , c3)
  ≡ mul0 N (a0 , a1 , a2 , a3) (mulN N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
assoc-0 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :* c0) :+ (:- ((N :* ((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2)))) :* c1))) :+ (:- ((N :* ((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1))) :* c2))) :+ (:- (((N :* N) :* ((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1)))) :* c3)))
    :=
    ((((a0 :* ((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3)))) :+ (:- ((N :* a1) :* ((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2)))))) :+ (:- ((N :* a2) :* ((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1))))) :+ (:- (((N :* N) :* a3) :* ((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1)))))))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3

assoc-1 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  mul1 N (mulN N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)) (c0 , c1 , c2 , c3)
  ≡ mul1 N (a0 , a1 , a2 , a3) (mulN N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
assoc-1 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :* c1) :+ (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :* c0)) :+ ((N :* ((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1))) :* c3)) :+ (:- ((N :* ((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1)))) :* c2)))
    :=
    ((((a0 :* ((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2)))) :+ (a1 :* ((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))))) :+ ((N :* a2) :* ((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))))) :+ (:- ((N :* a3) :* ((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1))))))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3

assoc-2 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  mul2 N (mulN N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)) (c0 , c1 , c2 , c3)
  ≡ mul2 N (a0 , a1 , a2 , a3) (mulN N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
assoc-2 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :* c2) :+ (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :* c0)) :+ (:- ((N :* ((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2)))) :* c3))) :+ ((N :* ((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1)))) :* c1))
    :=
    ((((a0 :* ((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1))) :+ (a2 :* ((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))))) :+ (:- ((N :* a1) :* ((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1)))))) :+ ((N :* a3) :* ((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))))))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3

assoc-3 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  mul3 N (mulN N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)) (c0 , c1 , c2 , c3)
  ≡ mul3 N (a0 , a1 , a2 , a3) (mulN N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
assoc-3 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :* c3) :+ (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :* c0)) :+ (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :* c2)) :+ (:- (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :* c1)))
    :=
    ((((a0 :* ((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1)))) :+ (a3 :* ((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))))) :+ (a1 :* ((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)))) :+ (:- (a2 :* ((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2)))))))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3


assoc : (N : ℤ) (x y z : Cl) → mulN N (mulN N x y) z ≡ mulN N x (mulN N y z)
assoc N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3) =
  cong₂ _,_ (assoc-0 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
 (cong₂ _,_ (assoc-1 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
 (cong₂ _,_ (assoc-2 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
            (assoc-3 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)))

one-left-0 : (N a0 a1 a2 a3 : ℤ) → mul0 N oneCl (a0 , a1 , a2 , a3) ≡ a0
one-left-0 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → (((((con (pos 1)) :* a0) :+ (:- ((N :* (con (pos 0))) :* a1))) :+ (:- ((N :* (con (pos 0))) :* a2))) :+ (:- (((N :* N) :* (con (pos 0))) :* a3))) := a0) refl N a0 a1 a2 a3

one-left-1 : (N a0 a1 a2 a3 : ℤ) → mul1 N oneCl (a0 , a1 , a2 , a3) ≡ a1
one-left-1 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → (((((con (pos 1)) :* a1) :+ ((con (pos 0)) :* a0)) :+ ((N :* (con (pos 0))) :* a3)) :+ (:- ((N :* (con (pos 0))) :* a2))) := a1) refl N a0 a1 a2 a3

one-left-2 : (N a0 a1 a2 a3 : ℤ) → mul2 N oneCl (a0 , a1 , a2 , a3) ≡ a2
one-left-2 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → (((((con (pos 1)) :* a2) :+ ((con (pos 0)) :* a0)) :+ (:- ((N :* (con (pos 0))) :* a3))) :+ ((N :* (con (pos 0))) :* a1)) := a2) refl N a0 a1 a2 a3

one-left-3 : (N a0 a1 a2 a3 : ℤ) → mul3 N oneCl (a0 , a1 , a2 , a3) ≡ a3
one-left-3 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → (((((con (pos 1)) :* a3) :+ ((con (pos 0)) :* a0)) :+ ((con (pos 0)) :* a2)) :+ (:- ((con (pos 0)) :* a1))) := a3) refl N a0 a1 a2 a3

one-right-0 : (N a0 a1 a2 a3 : ℤ) → mul0 N (a0 , a1 , a2 , a3) oneCl ≡ a0
one-right-0 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → ((((a0 :* (con (pos 1))) :+ (:- ((N :* a1) :* (con (pos 0))))) :+ (:- ((N :* a2) :* (con (pos 0))))) :+ (:- (((N :* N) :* a3) :* (con (pos 0))))) := a0) refl N a0 a1 a2 a3

one-right-1 : (N a0 a1 a2 a3 : ℤ) → mul1 N (a0 , a1 , a2 , a3) oneCl ≡ a1
one-right-1 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → ((((a0 :* (con (pos 0))) :+ (a1 :* (con (pos 1)))) :+ ((N :* a2) :* (con (pos 0)))) :+ (:- ((N :* a3) :* (con (pos 0))))) := a1) refl N a0 a1 a2 a3

one-right-2 : (N a0 a1 a2 a3 : ℤ) → mul2 N (a0 , a1 , a2 , a3) oneCl ≡ a2
one-right-2 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → ((((a0 :* (con (pos 0))) :+ (a2 :* (con (pos 1)))) :+ (:- ((N :* a1) :* (con (pos 0))))) :+ ((N :* a3) :* (con (pos 0)))) := a2) refl N a0 a1 a2 a3

one-right-3 : (N a0 a1 a2 a3 : ℤ) → mul3 N (a0 , a1 , a2 , a3) oneCl ≡ a3
one-right-3 N a0 a1 a2 a3 =
  solve 5 (λ N a0 a1 a2 a3 → ((((a0 :* (con (pos 0))) :+ (a3 :* (con (pos 1)))) :+ (a1 :* (con (pos 0)))) :+ (:- (a2 :* (con (pos 0))))) := a3) refl N a0 a1 a2 a3

one-left : (N : ℤ) (x : Cl) → mulN N oneCl x ≡ x
one-left N (a0 , a1 , a2 , a3) =
  cong₂ _,_ (one-left-0 N a0 a1 a2 a3)
 (cong₂ _,_ (one-left-1 N a0 a1 a2 a3)
 (cong₂ _,_ (one-left-2 N a0 a1 a2 a3)
            (one-left-3 N a0 a1 a2 a3)))

one-right : (N : ℤ) (x : Cl) → mulN N x oneCl ≡ x
one-right N (a0 , a1 , a2 , a3) =
  cong₂ _,_ (one-right-0 N a0 a1 a2 a3)
 (cong₂ _,_ (one-right-1 N a0 a1 a2 a3)
 (cong₂ _,_ (one-right-2 N a0 a1 a2 a3)
            (one-right-3 N a0 a1 a2 a3)))

jacobi-0 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  br0 N (a0 , a1 , a2 , a3) (br N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
  + (br0 N (b0 , b1 , b2 , b3) (br N (c0 , c1 , c2 , c3) (a0 , a1 , a2 , a3))
  + br0 N (c0 , c1 , c2 , c3) (br N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)))
  ≡ pos 0
jacobi-0 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((a0 :* (((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3)))))) :+ (:- ((N :* a1) :* (((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2)))))))) :+ (:- ((N :* a2) :* (((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1))))))) :+ (:- (((N :* N) :* a3) :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1)))))))) :+ (:- (((((((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))) :* a0) :+ (:- ((N :* (((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2)))))) :* a1))) :+ (:- ((N :* (((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1))))) :* a2))) :+ (:- (((N :* N) :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1)))))) :* a3))))) :+ ((((((b0 :* (((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3)))))) :+ (:- ((N :* b1) :* (((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2)))))))) :+ (:- ((N :* b2) :* (((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1))))))) :+ (:- (((N :* N) :* b3) :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1)))))))) :+ (:- (((((((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))) :* b0) :+ (:- ((N :* (((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2)))))) :* b1))) :+ (:- ((N :* (((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1))))) :* b2))) :+ (:- (((N :* N) :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1)))))) :* b3))))) :+ (((((c0 :* (((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3)))))) :+ (:- ((N :* c1) :* (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2)))))))) :+ (:- ((N :* c2) :* (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1))))))) :+ (:- (((N :* N) :* c3) :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1)))))))) :+ (:- (((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))) :* c0) :+ (:- ((N :* (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2)))))) :* c1))) :+ (:- ((N :* (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1))))) :* c2))) :+ (:- (((N :* N) :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1)))))) :* c3)))))))
    :=
    con (pos 0))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3

jacobi-1 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  br1 N (a0 , a1 , a2 , a3) (br N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
  + (br1 N (b0 , b1 , b2 , b3) (br N (c0 , c1 , c2 , c3) (a0 , a1 , a2 , a3))
  + br1 N (c0 , c1 , c2 , c3) (br N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)))
  ≡ pos 0
jacobi-1 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((a0 :* (((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2)))))) :+ (a1 :* (((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))))) :+ ((N :* a2) :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1))))))) :+ (:- ((N :* a3) :* (((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1))))))) :+ (:- (((((((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))) :* a1) :+ ((((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2))))) :* a0)) :+ ((N :* (((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1))))) :* a3)) :+ (:- ((N :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1)))))) :* a2))))) :+ ((((((b0 :* (((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2)))))) :+ (b1 :* (((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))))) :+ ((N :* b2) :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1))))))) :+ (:- ((N :* b3) :* (((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1))))))) :+ (:- (((((((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))) :* b1) :+ ((((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2))))) :* b0)) :+ ((N :* (((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1))))) :* b3)) :+ (:- ((N :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1)))))) :* b2))))) :+ (((((c0 :* (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2)))))) :+ (c1 :* (((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))))) :+ ((N :* c2) :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1))))))) :+ (:- ((N :* c3) :* (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1))))))) :+ (:- (((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))) :* c1) :+ ((((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2))))) :* c0)) :+ ((N :* (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1))))) :* c3)) :+ (:- ((N :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1)))))) :* c2)))))))
    :=
    con (pos 0))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3

jacobi-2 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  br2 N (a0 , a1 , a2 , a3) (br N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
  + (br2 N (b0 , b1 , b2 , b3) (br N (c0 , c1 , c2 , c3) (a0 , a1 , a2 , a3))
  + br2 N (c0 , c1 , c2 , c3) (br N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)))
  ≡ pos 0
jacobi-2 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((a0 :* (((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1))))) :+ (a2 :* (((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))))) :+ (:- ((N :* a1) :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1)))))))) :+ ((N :* a3) :* (((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2))))))) :+ (:- (((((((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))) :* a2) :+ ((((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1)))) :* a0)) :+ (:- ((N :* (((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2)))))) :* a3))) :+ ((N :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1)))))) :* a1)))) :+ ((((((b0 :* (((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1))))) :+ (b2 :* (((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))))) :+ (:- ((N :* b1) :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1)))))))) :+ ((N :* b3) :* (((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2))))))) :+ (:- (((((((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))) :* b2) :+ ((((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1)))) :* b0)) :+ (:- ((N :* (((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2)))))) :* b3))) :+ ((N :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1)))))) :* b1)))) :+ (((((c0 :* (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1))))) :+ (c2 :* (((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))))) :+ (:- ((N :* c1) :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1)))))))) :+ ((N :* c3) :* (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2))))))) :+ (:- (((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))) :* c2) :+ ((((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1)))) :* c0)) :+ (:- ((N :* (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2)))))) :* c3))) :+ ((N :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1)))))) :* c1))))))
    :=
    con (pos 0))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3

jacobi-3 : (N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 : ℤ) →
  br3 N (a0 , a1 , a2 , a3) (br N (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3))
  + (br3 N (b0 , b1 , b2 , b3) (br N (c0 , c1 , c2 , c3) (a0 , a1 , a2 , a3))
  + br3 N (c0 , c1 , c2 , c3) (br N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3)))
  ≡ pos 0
jacobi-3 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 =
  solve 13 (λ N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 →
    ((((((a0 :* (((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1)))))) :+ (a3 :* (((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))))) :+ (a1 :* (((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1)))))) :+ (:- (a2 :* (((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2)))))))) :+ (:- (((((((((b0 :* c0) :+ (:- ((N :* b1) :* c1))) :+ (:- ((N :* b2) :* c2))) :+ (:- (((N :* N) :* b3) :* c3))) :+ (:- ((((c0 :* b0) :+ (:- ((N :* c1) :* b1))) :+ (:- ((N :* c2) :* b2))) :+ (:- (((N :* N) :* c3) :* b3))))) :* a3) :+ ((((((b0 :* c3) :+ (b3 :* c0)) :+ (b1 :* c2)) :+ (:- (b2 :* c1))) :+ (:- ((((c0 :* b3) :+ (c3 :* b0)) :+ (c1 :* b2)) :+ (:- (c2 :* b1))))) :* a0)) :+ ((((((b0 :* c1) :+ (b1 :* c0)) :+ ((N :* b2) :* c3)) :+ (:- ((N :* b3) :* c2))) :+ (:- ((((c0 :* b1) :+ (c1 :* b0)) :+ ((N :* c2) :* b3)) :+ (:- ((N :* c3) :* b2))))) :* a2)) :+ (:- ((((((b0 :* c2) :+ (b2 :* c0)) :+ (:- ((N :* b1) :* c3))) :+ ((N :* b3) :* c1)) :+ (:- ((((c0 :* b2) :+ (c2 :* b0)) :+ (:- ((N :* c1) :* b3))) :+ ((N :* c3) :* b1)))) :* a1))))) :+ ((((((b0 :* (((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1)))))) :+ (b3 :* (((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))))) :+ (b1 :* (((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1)))))) :+ (:- (b2 :* (((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2)))))))) :+ (:- (((((((((c0 :* a0) :+ (:- ((N :* c1) :* a1))) :+ (:- ((N :* c2) :* a2))) :+ (:- (((N :* N) :* c3) :* a3))) :+ (:- ((((a0 :* c0) :+ (:- ((N :* a1) :* c1))) :+ (:- ((N :* a2) :* c2))) :+ (:- (((N :* N) :* a3) :* c3))))) :* b3) :+ ((((((c0 :* a3) :+ (c3 :* a0)) :+ (c1 :* a2)) :+ (:- (c2 :* a1))) :+ (:- ((((a0 :* c3) :+ (a3 :* c0)) :+ (a1 :* c2)) :+ (:- (a2 :* c1))))) :* b0)) :+ ((((((c0 :* a1) :+ (c1 :* a0)) :+ ((N :* c2) :* a3)) :+ (:- ((N :* c3) :* a2))) :+ (:- ((((a0 :* c1) :+ (a1 :* c0)) :+ ((N :* a2) :* c3)) :+ (:- ((N :* a3) :* c2))))) :* b2)) :+ (:- ((((((c0 :* a2) :+ (c2 :* a0)) :+ (:- ((N :* c1) :* a3))) :+ ((N :* c3) :* a1)) :+ (:- ((((a0 :* c2) :+ (a2 :* c0)) :+ (:- ((N :* a1) :* c3))) :+ ((N :* a3) :* c1)))) :* b1))))) :+ (((((c0 :* (((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1)))))) :+ (c3 :* (((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))))) :+ (c1 :* (((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1)))))) :+ (:- (c2 :* (((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2)))))))) :+ (:- (((((((((a0 :* b0) :+ (:- ((N :* a1) :* b1))) :+ (:- ((N :* a2) :* b2))) :+ (:- (((N :* N) :* a3) :* b3))) :+ (:- ((((b0 :* a0) :+ (:- ((N :* b1) :* a1))) :+ (:- ((N :* b2) :* a2))) :+ (:- (((N :* N) :* b3) :* a3))))) :* c3) :+ ((((((a0 :* b3) :+ (a3 :* b0)) :+ (a1 :* b2)) :+ (:- (a2 :* b1))) :+ (:- ((((b0 :* a3) :+ (b3 :* a0)) :+ (b1 :* a2)) :+ (:- (b2 :* a1))))) :* c0)) :+ ((((((a0 :* b1) :+ (a1 :* b0)) :+ ((N :* a2) :* b3)) :+ (:- ((N :* a3) :* b2))) :+ (:- ((((b0 :* a1) :+ (b1 :* a0)) :+ ((N :* b2) :* a3)) :+ (:- ((N :* b3) :* a2))))) :* c2)) :+ (:- ((((((a0 :* b2) :+ (a2 :* b0)) :+ (:- ((N :* a1) :* b3))) :+ ((N :* a3) :* b1)) :+ (:- ((((b0 :* a2) :+ (b2 :* a0)) :+ (:- ((N :* b1) :* a3))) :+ ((N :* b3) :* a1)))) :* c1)))))))
    :=
    con (pos 0))
    refl N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3


addCl : Cl → Cl → Cl
addCl (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) = a0 + b0 , a1 + b1 , a2 + b2 , a3 + b3

jacobi : (N : ℤ) (x y z : Cl) →
  addCl (br N x (br N y z)) (addCl (br N y (br N z x)) (br N z (br N x y))) ≡ zeroCl
jacobi N (a0 , a1 , a2 , a3) (b0 , b1 , b2 , b3) (c0 , c1 , c2 , c3) =
  cong₂ _,_ (jacobi-0 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
 (cong₂ _,_ (jacobi-1 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
 (cong₂ _,_ (jacobi-2 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)
            (jacobi-3 N a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3)))


------------------------------------------------------------------------
-- Structure constants for all N, and the Heisenberg Lie algebra at N = 0
------------------------------------------------------------------------

bracket-XY-0 : (N : ℤ) → br0 N X Y ≡ (pos 0)
bracket-XY-0 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 0))))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 1))))) :+ (:- (((N :* N) :* (con (pos 0))) :* (con (pos 0))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 1))))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 0))))) :+ (:- (((N :* N) :* (con (pos 0))) :* (con (pos 0))))))) := (con (pos 0))) refl N

bracket-XY-1 : (N : ℤ) → br1 N X Y ≡ (pos 0)
bracket-XY-1 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ ((N :* (con (pos 0))) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 1))))) :+ (:- (((((con (pos 0)) :* (con (pos 1))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((N :* (con (pos 1))) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))))) := (con (pos 0))) refl N

bracket-XY-2 : (N : ℤ) → br2 N X Y ≡ (pos 0)
bracket-XY-2 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 1))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 0))))) :+ ((N :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ ((N :* (con (pos 0))) :* (con (pos 1)))))) := (con (pos 0))) refl N

bracket-XY-3 : (N : ℤ) → br3 N X Y ≡ (pos 2)
bracket-XY-3 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((con (pos 1)) :* (con (pos 1)))) :+ (:- ((con (pos 0)) :* (con (pos 0))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((con (pos 1)) :* (con (pos 1))))))) := (con (pos 2))) refl N

bracket-XY : (N : ℤ) → br N X Y ≡ ((pos 0) , (pos 0) , (pos 0) , (pos 2))
bracket-XY N =
  cong₂ _,_ (bracket-XY-0 N)
 (cong₂ _,_ (bracket-XY-1 N)
 (cong₂ _,_ (bracket-XY-2 N)
            (bracket-XY-3 N)))

bracket-XZ-0 : (N : ℤ) → br0 N X Z ≡ (pos 0)
bracket-XZ-0 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 0))))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ (:- (((N :* N) :* (con (pos 0))) :* (con (pos 1))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 1))))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ (:- (((N :* N) :* (con (pos 1))) :* (con (pos 0))))))) := (con (pos 0))) refl N

bracket-XZ-1 : (N : ℤ) → br1 N X Z ≡ (pos 0)
bracket-XZ-1 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ ((N :* (con (pos 0))) :* (con (pos 1)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ (:- (((((con (pos 0)) :* (con (pos 1))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((N :* (con (pos 0))) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 0))))))) := (con (pos 0))) refl N

bracket-XZ-2 : (N : ℤ) → br2 N X Z ≡ ((- pos 2) * N)
bracket-XZ-2 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 1))))) :+ ((N :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ ((N :* (con (pos 1))) :* (con (pos 1)))))) := ((:- con (pos 2)) :* N)) refl N

bracket-XZ-3 : (N : ℤ) → br3 N X Z ≡ (pos 0)
bracket-XZ-3 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 1))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ (:- ((con (pos 0)) :* (con (pos 0))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((con (pos 0)) :* (con (pos 1))))))) := (con (pos 0))) refl N

bracket-XZ : (N : ℤ) → br N X Z ≡ ((pos 0) , (pos 0) , ((- pos 2) * N) , (pos 0))
bracket-XZ N =
  cong₂ _,_ (bracket-XZ-0 N)
 (cong₂ _,_ (bracket-XZ-1 N)
 (cong₂ _,_ (bracket-XZ-2 N)
            (bracket-XZ-3 N)))

bracket-YZ-0 : (N : ℤ) → br0 N Y Z ≡ (pos 0)
bracket-YZ-0 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 0))))) :+ (:- (((N :* N) :* (con (pos 0))) :* (con (pos 1))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 1))))) :+ (:- (((N :* N) :* (con (pos 1))) :* (con (pos 0))))))) := (con (pos 0))) refl N

bracket-YZ-1 : (N : ℤ) → br1 N Y Z ≡ ((pos 2) * N)
bracket-YZ-1 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((N :* (con (pos 1))) :* (con (pos 1)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((N :* (con (pos 0))) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 1))) :* (con (pos 1))))))) := ((con (pos 2)) :* N)) refl N

bracket-YZ-2 : (N : ℤ) → br2 N Y Z ≡ (pos 0)
bracket-YZ-2 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 1))))) :+ ((N :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((((con (pos 0)) :* (con (pos 1))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((N :* (con (pos 0))) :* (con (pos 0))))) :+ ((N :* (con (pos 1))) :* (con (pos 0)))))) := (con (pos 0))) refl N

bracket-YZ-3 : (N : ℤ) → br3 N Y Z ≡ (pos 0)
bracket-YZ-3 N =
  solve 1 (λ N → ((((((con (pos 0)) :* (con (pos 1))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ ((con (pos 0)) :* (con (pos 0)))) :+ (:- ((con (pos 1)) :* (con (pos 0))))) :+ (:- (((((con (pos 0)) :* (con (pos 0))) :+ ((con (pos 1)) :* (con (pos 0)))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- ((con (pos 0)) :* (con (pos 0))))))) := (con (pos 0))) refl N

bracket-YZ : (N : ℤ) → br N Y Z ≡ ((pos 0) , ((pos 2) * N) , (pos 0) , (pos 0))
bracket-YZ N =
  cong₂ _,_ (bracket-YZ-0 N)
 (cong₂ _,_ (bracket-YZ-1 N)
 (cong₂ _,_ (bracket-YZ-2 N)
            (bracket-YZ-3 N)))


-- At N = 0 the element Z is central: the Lie algebra is the Heisenberg algebra.
heisenberg-XZ : br (pos 0) X Z ≡ zeroCl
heisenberg-XZ = refl

heisenberg-YZ : br (pos 0) Y Z ≡ zeroCl
heisenberg-YZ = refl

heisenberg-XY : br (pos 0) X Y ≡ (pos 0 , pos 0 , pos 0 , pos 2)
heisenberg-XY = refl

------------------------------------------------------------------------
-- The bracket lemma at N = 0: the group commutator of 1 + aX and 1 + bY
-- is 1 + ab [X,Y]
------------------------------------------------------------------------

gc-0 : (a b : ℤ) → mul0 (pos 0) (mulN (pos 0) (mulN (pos 0) (pos 1 , a , pos 0 , pos 0) (pos 1 , pos 0 , b , pos 0)) (pos 1 , - a , pos 0 , pos 0)) (pos 1 , pos 0 , - b , pos 0) ≡ (pos 1)
gc-0 a b =
  solve 2 (λ a b → (((((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (:- a)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0))))) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (:- a)) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 1)))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0)))))) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (con (pos 0))))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (:- a)))) :* (:- b)))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0))))) :* (con (pos 1)))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 0)))) :+ (:- ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (:- a))))) :* (con (pos 0))))) := (con (pos 1))) refl a b

gc-1 : (a b : ℤ) → mul1 (pos 0) (mulN (pos 0) (mulN (pos 0) (pos 1 , a , pos 0 , pos 0) (pos 1 , pos 0 , b , pos 0)) (pos 1 , - a , pos 0 , pos 0)) (pos 1 , pos 0 , - b , pos 0) ≡ (pos 0)
gc-1 a b =
  solve 2 (λ a b → (((((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (:- a)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (:- a)) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 1)))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0))))) :* (con (pos 1)))) :+ (((con (pos 0)) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (con (pos 0))))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (:- a)))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0))))) :* (con (pos 1)))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 0)))) :+ (:- ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (:- a))))) :* (:- b)))) := (con (pos 0))) refl a b

gc-2 : (a b : ℤ) → mul2 (pos 0) (mulN (pos 0) (mulN (pos 0) (pos 1 , a , pos 0 , pos 0) (pos 1 , pos 0 , b , pos 0)) (pos 1 , - a , pos 0 , pos 0)) (pos 1 , pos 0 , - b , pos 0) ≡ (pos 0)
gc-2 a b =
  solve 2 (λ a b → (((((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (:- a)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0))))) :* (:- b)) :+ ((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (con (pos 0))))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (:- a))) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (:- a)) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 1)))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0)))))) :* (con (pos 0))))) :+ (((con (pos 0)) :* (((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0))))) :* (con (pos 1)))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 0)))) :+ (:- ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (:- a))))) :* (con (pos 0)))) := (con (pos 0))) refl a b

gc-3 : (a b : ℤ) → mul3 (pos 0) (mulN (pos 0) (mulN (pos 0) (pos 1 , a , pos 0 , pos 0) (pos 1 , pos 0 , b , pos 0)) (pos 1 , - a , pos 0 , pos 0)) (pos 1 , pos 0 , - b , pos 0) ≡ (((pos 2) * a) * b)
gc-3 a b =
  solve 2 (λ a b → (((((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (:- a)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0))))) :* (con (pos 1)))) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 0)))) :+ (:- ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (:- a)))) :* (con (pos 1)))) :+ ((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (:- a)) :+ ((((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :* (con (pos 1)))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (con (pos 0))))) :* (:- b))) :+ (:- ((((((((((con (pos 1)) :* (con (pos 1))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b))) :+ (:- ((((con (pos 0)) :* (con (pos 0))) :* (con (pos 0))) :* (con (pos 0))))) :* (con (pos 0))) :+ ((((((con (pos 1)) :* b) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* a) :* (con (pos 0))))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :* (con (pos 1)))) :+ (:- (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ (a :* (con (pos 1)))) :+ (((con (pos 0)) :* (con (pos 0))) :* (con (pos 0)))) :+ (:- (((con (pos 0)) :* (con (pos 0))) :* b)))) :* (con (pos 0))))) :+ (((con (pos 0)) :* (((((con (pos 1)) :* (con (pos 0))) :+ ((con (pos 0)) :* (con (pos 1)))) :+ (a :* b)) :+ (:- ((con (pos 0)) :* (con (pos 0)))))) :* (:- a))) :* (con (pos 0))))) := (((con (pos 2)) :* a) :* b)) refl a b

group-commutator : (a b : ℤ) →
  mulN (pos 0) (mulN (pos 0) (mulN (pos 0) (pos 1 , a , pos 0 , pos 0) (pos 1 , pos 0 , b , pos 0)) (pos 1 , - a , pos 0 , pos 0)) (pos 1 , pos 0 , - b , pos 0) ≡ (pos 1 , pos 0 , pos 0 , (pos 2 * a) * b)
group-commutator a b =
  cong₂ _,_ (gc-0 a b)
 (cong₂ _,_ (gc-1 a b)
 (cong₂ _,_ (gc-2 a b)
            (gc-3 a b)))

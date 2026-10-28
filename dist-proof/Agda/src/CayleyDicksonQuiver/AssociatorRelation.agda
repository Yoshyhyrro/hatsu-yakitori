-- CayleyDicksonQuiver.AssociatorRelation
--
-- Adding the associator-type relation to `PathEquiv`, and what it does to
-- candidate morphisms.
--
-- `PathEquiv` of `CayleyDicksonQuiver` has no generating relation (it is
-- propositional equality, see `equiv⇒≡` in `Properties`), so a functor out
-- of the path category is unconstrained by relations.  The relation the
-- repository intends -- "arrows of equal associator type give equivalent
-- one-step paths" -- cannot be a lemma (`associator-determines-equiv-false`
-- in `Properties`), so it has to be a constructor.  `PathEquivT t` is
-- `PathEquiv` with that constructor, for a function `t : Pair → X` that
-- assigns a type to each pair.
--
-- Results, for every `t` (so independent of how the postulated
-- `ZeroDivisor-associator-type` is eventually defined):
--
--  * `Eval.respects⇔`    an assignment `F` of a monoid element to every pair
--                        respects `PathEquivT t` iff `F` is constant on the
--                        fibres of `t`;
--  * `NoGo`              if `F` separates five pairs, no `t` with four values
--                        is respected: `Arrow ↦ get-linear-map` cannot factor
--                        through the quotient by ANY associator type with
--                        values in `AssociatorType`;
--  * `type-word`         what does factor through it: the word of types along
--                        a path, in the free monoid on the types.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AssociatorRelation where

open import CayleyDicksonQuiver
  using (Pair; Vertex; mkVertex; Arrow; mkArrow; _StrictlyDecreases_; decreases;
         Path; empty-path; extend-path; path-multiply;
         AssociatorType; type-A; type-B; type-C; type-X)
open import Data.Empty using (⊥-elim)
open import Data.Fin using (Fin; toℕ) renaming (zero to fzero; suc to fsuc)
import Data.Fin.Properties as FinP
open import Data.List using (List; []; _∷_; _++_)
open import Data.List.Properties using (++-assoc; ++-identityˡ; ++-identityʳ)
open import Data.Nat using (ℕ; zero; suc; z≤n; s≤s)
open import Data.Product using (_×_; _,_; proj₁; proj₂)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong; cong₂)
open import Relation.Nullary using (¬_)

------------------------------------------------------------------------
-- PathEquiv with the associator-type relation
------------------------------------------------------------------------

data PathEquivT {X : Set} (t : Pair → X) : ∀ {v1 v2} → Path v1 v2 → Path v1 v2 → Set where
  eq-refl  : ∀ {v1 v2} {p : Path v1 v2} → PathEquivT t p p
  eq-sym   : ∀ {v1 v2} {p q : Path v1 v2} → PathEquivT t p q → PathEquivT t q p
  eq-trans : ∀ {v1 v2} {p q r : Path v1 v2} → PathEquivT t p q → PathEquivT t q r → PathEquivT t p r
  eq-assoc : ∀ {v1 v2} (a1 a2 : Arrow v1 v2) →
             t (Arrow.zero-div a1) ≡ t (Arrow.zero-div a2) →
             PathEquivT t (extend-path a1 empty-path) (extend-path a2 empty-path)
  eq-cong  : ∀ {v1 v2 v3} {p p' : Path v1 v2} {q q' : Path v2 v3} →
             PathEquivT t p p' → PathEquivT t q q' →
             PathEquivT t (path-multiply p q) (path-multiply p' q')

------------------------------------------------------------------------
-- Monoid-valued assignments on pairs, and when they respect the relation
------------------------------------------------------------------------

record Mon : Set₁ where
  field
    M     : Set
    _∙_   : M → M → M
    ε     : M
    ∙-assoc : ∀ a b c → (a ∙ b) ∙ c ≡ a ∙ (b ∙ c)
    ∙-idˡ   : ∀ a → ε ∙ a ≡ a
    ∙-idʳ   : ∀ a → a ∙ ε ≡ a

module Eval (Mo : Mon) (F : Pair → Mon.M Mo) where
  open Mon Mo

  -- the product of the images of the arrows along a path
  ev : ∀ {v1 v2} → Path v1 v2 → M
  ev empty-path        = ε
  ev (extend-path a p) = F (Arrow.zero-div a) ∙ ev p

  ev-multiply : ∀ {v1 v2 v3} (p : Path v1 v2) (q : Path v2 v3) →
    ev (path-multiply p q) ≡ ev p ∙ ev q
  ev-multiply empty-path        q = sym (∙-idˡ (ev q))
  ev-multiply (extend-path a p) q =
    trans (cong (F (Arrow.zero-div a) ∙_) (ev-multiply p q))
          (sym (∙-assoc (F (Arrow.zero-div a)) (ev p) (ev q)))

  -- `F` is constant on the fibres of `t`
  Respects : {X : Set} → (Pair → X) → Set
  Respects t = ∀ {v1 v2} (a1 a2 : Arrow v1 v2) →
    t (Arrow.zero-div a1) ≡ t (Arrow.zero-div a2) → F (Arrow.zero-div a1) ≡ F (Arrow.zero-div a2)

  respects⇒ev : ∀ {X} {t : Pair → X} → Respects t →
    ∀ {v1 v2} {p q : Path v1 v2} → PathEquivT t p q → ev p ≡ ev q
  respects⇒ev r eq-refl          = refl
  respects⇒ev r (eq-sym e)       = sym (respects⇒ev r e)
  respects⇒ev r (eq-trans e1 e2) = trans (respects⇒ev r e1) (respects⇒ev r e2)
  respects⇒ev r (eq-assoc a1 a2 e) =
    trans (cong (_∙ ε) (r a1 a2 e)) refl
  respects⇒ev r (eq-cong {p = p} {p' = p'} {q = q} {q' = q'} e1 e2) =
    trans (ev-multiply p q)
      (trans (cong₂ _∙_ (respects⇒ev r e1) (respects⇒ev r e2)) (sym (ev-multiply p' q')))

  ev⇒respects : ∀ {X} {t : Pair → X} →
    (∀ {v1 v2} {p q : Path v1 v2} → PathEquivT t p q → ev p ≡ ev q) → Respects t
  ev⇒respects h a1 a2 e =
    trans (sym (∙-idʳ (F (Arrow.zero-div a1))))
      (trans (h (eq-assoc a1 a2 e)) (∙-idʳ (F (Arrow.zero-div a2))))

------------------------------------------------------------------------
-- No four-valued type is respected by a map that separates five pairs
------------------------------------------------------------------------

assoc-code : AssociatorType → Fin 4
assoc-code type-A = fzero
assoc-code type-B = fsuc fzero
assoc-code type-C = fsuc (fsuc fzero)
assoc-code type-X = fsuc (fsuc (fsuc fzero))

assoc-code-injective : ∀ {a b} → assoc-code a ≡ assoc-code b → a ≡ b
assoc-code-injective {type-A} {type-A} _ = refl
assoc-code-injective {type-B} {type-B} _ = refl
assoc-code-injective {type-C} {type-C} _ = refl
assoc-code-injective {type-X} {type-X} _ = refl
assoc-code-injective {type-A} {type-B} ()
assoc-code-injective {type-A} {type-C} ()
assoc-code-injective {type-A} {type-X} ()
assoc-code-injective {type-B} {type-A} ()
assoc-code-injective {type-B} {type-C} ()
assoc-code-injective {type-B} {type-X} ()
assoc-code-injective {type-C} {type-A} ()
assoc-code-injective {type-C} {type-B} ()
assoc-code-injective {type-C} {type-X} ()
assoc-code-injective {type-X} {type-A} ()
assoc-code-injective {type-X} {type-B} ()
assoc-code-injective {type-X} {type-C} ()

-- two vertices joined by an arrow for every pair
vtx-2 vtx-1 : Vertex
vtx-2 = mkVertex 2 []
vtx-1 = mkVertex 1 []

arrow-at : Pair → Arrow vtx-2 vtx-1
arrow-at p = mkArrow p (decreases (s≤s (s≤s z≤n)) (s≤s z≤n))

pair-at : Fin 5 → Pair
pair-at i = 0 , toℕ i

-- `sep`: the images of the five pairs (0,0), ..., (0,4) are pairwise distinct.
-- (For `get-linear-map`, which is left multiplication by `e_i + e_j`, this
-- holds because `L_{e_i + e_j}(1) = e_i + e_j`.)  Then, whatever
-- `t : Pair → AssociatorType` is, `F` does not respect it.
module NoGo (Mo : Mon) (F : Pair → Mon.M Mo)
            (sep : ∀ (i j : Fin 5) → F (0 , toℕ i) ≡ F (0 , toℕ j) → i ≡ j) where

  no-respect : ∀ (t : Pair → AssociatorType) → ¬ Eval.Respects Mo F t
  no-respect t r
    with FinP.pigeonhole (s≤s (s≤s (s≤s (s≤s (s≤s z≤n)))))
           (λ i → assoc-code (t (pair-at i)))
  ... | i , j , i<j , same =
    FinP.<-irrefl
      (sep i j (r (arrow-at (pair-at i)) (arrow-at (pair-at j)) (assoc-code-injective same)))
      i<j

------------------------------------------------------------------------
-- What does factor through the quotient: the word of types along a path
------------------------------------------------------------------------

ListMon : Set → Mon
ListMon X = record
  { M = List X ; _∙_ = _++_ ; ε = []
  ; ∙-assoc = ++-assoc ; ∙-idˡ = ++-identityˡ ; ∙-idʳ = ++-identityʳ }

module TypeWord {X : Set} (t : Pair → X) where
  open Eval (ListMon X) (λ p → t p ∷ [])

  -- the types of the arrows along a path, in order
  type-word : ∀ {v1 v2} → Path v1 v2 → List X
  type-word = ev

  -- `p ↦ [t p]` is constant on the fibres of `t`, so it respects the relation
  respects-type : Respects t
  respects-type a1 a2 e = cong (_∷ []) e

  -- hence the type word is an invariant of `PathEquivT t`
  type-word-invariant : ∀ {v1 v2} {p q : Path v1 v2} → PathEquivT t p q → type-word p ≡ type-word q
  type-word-invariant = respects⇒ev respects-type

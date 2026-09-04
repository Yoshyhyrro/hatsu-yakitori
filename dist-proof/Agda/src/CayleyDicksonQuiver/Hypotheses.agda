-- CayleyDicksonQuiver.Hypotheses
--
-- Safe, --safe-clean home for small structural results that started as
-- experiments in the exploratory scratchpad
-- (CayleyDicksonQuiver/Hypotheses.lagda.md, not part of Everything.agda).
-- Only genuinely complete, postulate-free, hole-free content belongs
-- here -- anything still open stays in the scratchpad until it is
-- actually proven.
--
-- Deliberately depends only on `CayleyDicksonQuiver` (already safe), not
-- on `CayleyDicksonQuiver.Properties` (still has open postulates), so
-- this module can be added to `Everything.agda` and checked on its own
-- merits without waiting on that unrelated work.
module CayleyDicksonQuiver.Hypotheses where

open import CayleyDicksonQuiver using (ambient-dim)
open import Data.Empty using (⊥-elim)
open import Data.Fin using (Fin; zero; suc)
open import Data.Fin.Properties using (_≟_)
open import Data.Integer using (ℤ; -_)
open import Data.Integer.Properties using (neg-involutive)
open import Data.Nat using (ℕ) renaming (zero to ℕzero; suc to ℕsuc)
open import Data.Product using (_×_; _,_)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Relation.Binary.PropositionalEquality
  using (_≡_; refl; sym; trans; subst; cong₂)
open import Relation.Nullary using (Dec; ¬_)

------------------------------------------------------------------------
-- H1: GF(4)-style phase periodicity (ported sanity check)
------------------------------------------------------------------------
-- `CliffordCarabiner.lean`'s `Carabiner.crossLoad` shifts `phase : ZMod 4`
-- by +1, and `crossLoad_four` shows four shifts return to the start.
-- Restated on `Fin 4` to confirm the pattern survives the Lean-to-Agda
-- move.

rotate : Fin 4 → Fin 4
rotate zero                   = suc zero
rotate (suc zero)             = suc (suc zero)
rotate (suc (suc zero))       = suc (suc (suc zero))
rotate (suc (suc (suc zero))) = zero

_ : ∀ (x : Fin 4) → rotate (rotate (rotate (rotate x))) ≡ x
_ = λ { zero                   → refl
      ; (suc zero)             → refl
      ; (suc (suc zero))       → refl
      ; (suc (suc (suc zero))) → refl
      }

------------------------------------------------------------------------
-- H4: on-shell / off-shell via an involution's fixed points
------------------------------------------------------------------------
-- Pattern borrowed from `InverseHeegnerGram.lean`'s Gram-matrix kernel
-- split (kernel = "on-shell"/orthogonal, non-kernel = "off-shell"), but
-- built from a plain involution on `Fin (ambient-dim k)` rather than a
-- Gram matrix -- kept unbundled (no dependency on `Properties.agda`'s
-- `ImageUniverse`) so this file stays independently checkable.

Paired : (k : ℕ) (f : Fin (ambient-dim k) → Fin (ambient-dim k)) →
  Fin (ambient-dim k) → Fin (ambient-dim k) → Set
Paired k f x y = f x ≡ y

-- Symmetric for free, given the involution law. Uses `subst` rather
-- than pattern-matching `refl` directly, and takes `k` explicitly
-- rather than as an implicit `{k}`: `Fin (ambient-dim k)`'s index
-- (`2 ^ k`) is opaque to the unifier (it cannot invert `ambient-dim` to
-- recover `k` from a `Fin (ambient-dim k)` value alone), so leaving `k`
-- implicit left it as a permanently-unresolved metavariable wherever it
-- wasn't independently pinned down by something else. Explicit `k` is
-- simply given by the caller, no inference needed.
paired-symm : (k : ℕ) (f : Fin (ambient-dim k) → Fin (ambient-dim k))
  (inv : ∀ x → f (f x) ≡ x) {x y : Fin (ambient-dim k)} →
  Paired k f x y → Paired k f y x
paired-symm k f inv {x} {y} h = subst (λ z → f z ≡ x) h (inv x)

OnShell : (k : ℕ) (f : Fin (ambient-dim k) → Fin (ambient-dim k)) →
  Fin (ambient-dim k) → Set
OnShell k f x = Paired k f x x

OffShell : (k : ℕ) (f : Fin (ambient-dim k) → Fin (ambient-dim k)) →
  Fin (ambient-dim k) → Set
OffShell k f x = ¬ OnShell k f x

-- Every point is decidably one or the other.
_ : (k : ℕ) (f : Fin (ambient-dim k) → Fin (ambient-dim k))
  (x : Fin (ambient-dim k)) → Dec (OnShell k f x)
_ = λ k f x → f x ≟ x

-- Smallest case (k=0, ambient-dim 0 = 1): the one available point is
-- forced on-shell, for ANY f -- there is nothing else to map it to, and
-- the involution law is not even needed here.
_ : (f : Fin (ambient-dim 0) → Fin (ambient-dim 0)) → OnShell 0 f zero
_ = go
  where
  go : (f : Fin (ambient-dim 0) → Fin (ambient-dim 0)) → OnShell 0 f zero
  go f with f zero
  ... | zero = refl

------------------------------------------------------------------------
-- H4, next case: k=1 (ambient-dim 1 = 2, Fin 2)
------------------------------------------------------------------------
-- An involution on a 2-point set is either the identity (both points
-- on-shell) or the swap (both points off-shell, paired with each
-- other) -- never a mix of exactly one fixed point. Unlike the k=0
-- case, this genuinely needs the involution law.

0≢1 : ¬ (_≡_ {A = Fin 2} zero (suc zero))
0≢1 ()

involution-Fin2-dichotomy :
  (f : Fin (ambient-dim 1) → Fin (ambient-dim 1)) (inv : ∀ x → f (f x) ≡ x) →
  (f zero ≡ zero × f (suc zero) ≡ suc zero)
    ⊎ (f zero ≡ suc zero × f (suc zero) ≡ zero)
involution-Fin2-dichotomy f inv
  with f zero | inv zero | f (suc zero) | inv (suc zero)
... | zero     | i0 | zero     | i1 = ⊥-elim (0≢1 (trans (sym i0) i1))
... | zero     | i0 | suc zero | i1 = inj₁ (refl , refl)
... | suc zero | i0 | zero     | i1 = inj₂ (refl , refl)
... | suc zero | i0 | suc zero | i1 = ⊥-elim (0≢1 (trans (sym i0) i1))

------------------------------------------------------------------------
-- Cayley-Dickson conjugation as a linear involution (point 4)
------------------------------------------------------------------------
-- D = P_H - P_H⊥, with D b = b, D a = -a, is concretely the standard
-- Cayley-Dickson conjugate: (a, b) ↦ (conj a, -b) at each doubling
-- step, fixing the "real" part and negating the "purely imaginary"
-- part. Unlike points 1/2/3/5 of the projection-operator proposal
-- (P_H, P_H⊥, {P_H,P_H⊥} = 0, Z = P_H P_H⊥ = 0 -- all true for ANY
-- orthogonal decomposition of ANY Hilbert space, not specific to zero
-- divisors), this one is not a relabeling: H⊥, the -1 eigenspace of
-- conjugation, IS Moreno's space of "purely imaginary" elements, the
-- actual raw material his zero-divisor constructions are built from.
-- Points 1/2/3/5 fall out for free once `conj` exists (P_H = (I +
-- conj)/2, P_H⊥ = (I - conj)/2, the standard projections-from-an-
-- involution formulas) rather than needing to be built separately.
--
-- Point 7 (J, an anti-automorphism with the same stated linear
-- properties) is most likely this same `conj`, viewed through its
-- multiplicative role (conj (x y) = conj y * conj x) rather than its
-- linear/eigenspace role -- not built here, since no multiplication
-- exists yet (see below). Point 6 (U : H → H with "U a" for a
-- presumably outside H) has a domain mismatch as literally stated; not
-- attempted until that's resolved.
--
-- Coefficients are ℤ, matching `Sedenion := List Int` on the Lean side.
-- Only the additive/conjugation structure is built here -- no
-- multiplication, no inner product, no norm yet, so `D` cannot yet be
-- checked self-adjoint or `P_H`/`P_H⊥` idempotent against a real inner
-- product. This is deliberately the smallest next piece, not the whole
-- vector-space model at once.

CD : ℕ → Set
CD ℕzero    = ℤ
CD (ℕsuc k) = CD k × CD k

neg : (k : ℕ) → CD k → CD k
neg ℕzero    x       = - x
neg (ℕsuc k) (a , b) = neg k a , neg k b

conj : (k : ℕ) → CD k → CD k
conj ℕzero    x       = x
conj (ℕsuc k) (a , b) = conj k a , neg k b

neg-neg : (k : ℕ) (x : CD k) → neg k (neg k x) ≡ x
neg-neg ℕzero    x       = neg-involutive x
neg-neg (ℕsuc k) (a , b) = cong₂ _,_ (neg-neg k a) (neg-neg k b)

-- D² = I.
conj-conj : (k : ℕ) (x : CD k) → conj k (conj k x) ≡ x
conj-conj ℕzero    x       = refl
conj-conj (ℕsuc k) (a , b) = cong₂ _,_ (conj-conj k a) (neg-neg k b)
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
open import Data.Integer using (ℤ; -_; +_; -[1+_]; 1ℤ; _+_; _*_)
open import Data.Integer.Properties
  using (neg-involutive; *-comm; +-identityˡ; +-identityʳ;
         *-identityˡ; *-identityʳ; *-zeroˡ; *-zeroʳ)
open import Data.Nat using (ℕ) renaming (zero to ℕzero; suc to ℕsuc)
open import Data.Product using (_×_; _,_; Σ; proj₁; proj₂)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Relation.Binary.PropositionalEquality
  using (_≡_; refl; sym; trans; subst; cong; cong₂)
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

------------------------------------------------------------------------
-- Dimension of the +1 eigenspace (points 1/2, done with ordinary
-- dimension instead of Hausdorff/fractal dimension)
------------------------------------------------------------------------
-- The +1 eigenspace of `conj` is an honest linear subspace, so its
-- Hausdorff dimension just IS its ordinary dimension -- no fractal
-- machinery needed or applicable. What follows shows it concretely:
-- Fix(conj_k) is exactly the image of the "real axis" embedding
-- `real-part`, i.e. in bijection with ℤ. Dimension exactly 1, for
-- every k, proved rather than merely asserted.

zeroCD : (k : ℕ) → CD k
zeroCD ℕzero    = + ℕzero
zeroCD (ℕsuc k) = zeroCD k , zeroCD k

neg-zeroCD : (k : ℕ) → neg k (zeroCD k) ≡ zeroCD k
neg-zeroCD ℕzero    = refl
neg-zeroCD (ℕsuc k) = cong₂ _,_ (neg-zeroCD k) (neg-zeroCD k)

-- Embed the "real axis" at level k: a, followed by all-zero elsewhere.
real-part : (k : ℕ) → ℤ → CD k
real-part ℕzero    a = a
real-part (ℕsuc k) a = real-part k a , zeroCD k

-- Every real-part embedding is a fixed point of conj.
real-part-fixed : (k : ℕ) (a : ℤ) → conj k (real-part k a) ≡ real-part k a
real-part-fixed ℕzero    a = refl
real-part-fixed (ℕsuc k) a =
  cong₂ _,_ (real-part-fixed k a) (neg-zeroCD k)

-- real-part is injective (different reals embed to different points).
real-part-injective : (k : ℕ) (a b : ℤ) →
  real-part k a ≡ real-part k b → a ≡ b
real-part-injective ℕzero    a b eq = eq
real-part-injective (ℕsuc k) a b eq =
  real-part-injective k a b (cong proj₁ eq)

-- A fixed point of `neg` at any level must be zero (ℤ has no 2-torsion:
-- `- c ≡ c` forces `c` and `- c` to share a constructor, and `+_` /
-- `-[1+_]` never do except through `+ 0`).
neg-fixed-is-zeroℤ : (c : ℤ) → - c ≡ c → c ≡ + ℕzero
neg-fixed-is-zeroℤ (+ ℕzero)    eq = refl
neg-fixed-is-zeroℤ (+ (ℕsuc n)) ()
neg-fixed-is-zeroℤ (-[1+ n ])   ()

neg-fixed-is-zeroCD : (k : ℕ) (x : CD k) → neg k x ≡ x → x ≡ zeroCD k
neg-fixed-is-zeroCD ℕzero    x       eq = neg-fixed-is-zeroℤ x eq
neg-fixed-is-zeroCD (ℕsuc k) (a , b) eq =
  cong₂ _,_ (neg-fixed-is-zeroCD k a (cong proj₁ eq))
            (neg-fixed-is-zeroCD k b (cong proj₂ eq))

-- Every fixed point of conj comes from real-part: combined with
-- real-part-fixed and real-part-injective above, Fix(conj_k) is
-- exactly ℤ, not merely "at least" or "at most" ℤ-sized.
Fix-is-real-part : (k : ℕ) (x : CD k) → conj k x ≡ x →
  Σ ℤ (λ a → real-part k a ≡ x)
Fix-is-real-part ℕzero    x       eq = x , refl
Fix-is-real-part (ℕsuc k) (p , q) eq =
  let a , p-fixed = Fix-is-real-part k p (cong proj₁ eq)
      q-zero      = neg-fixed-is-zeroCD k q (cong proj₂ eq)
  in a , cong₂ _,_ p-fixed (sym q-zero)

------------------------------------------------------------------------
-- Cayley-Dickson multiplication
------------------------------------------------------------------------
-- Standard doubling-construction product (Baez, "The Octonions", eq.
-- 4.2): (a,b)(c,d) = (ac - d̄b, da + bc̄). Matches the conjugate already
-- built above ((a,b)‾ = (ā,-b)), so `conj` and `mul` are not
-- independently-invented -- they come from the same textbook
-- construction. No associativity/alternativity claimed or needed here
-- -- those genuinely fail starting at the sedenions (k=4), which is
-- part of why zero divisors exist there at all.

add : (k : ℕ) → CD k → CD k → CD k
add ℕzero    x       y       = x + y
add (ℕsuc k) (a , b) (c , d) = add k a c , add k b d

mul : (k : ℕ) → CD k → CD k → CD k
mul ℕzero    x       y       = x * y
mul (ℕsuc k) (a , b) (c , d) =
  add k (mul k a c) (neg k (mul k (conj k d) b)) ,
  add k (mul k d a) (mul k b (conj k c))

-- Sanity check: at k=1 (Gaussian-integer-style pairs, conj is identity
-- on the ℤ coordinates), this specializes to ordinary complex
-- multiplication (a,b)(c,d) = (ac - bd, ad + bc), up to reordering the
-- two products that commutativity of ℤ multiplication accounts for.
mul-k1-is-complex-mul : (a b c d : ℤ) →
  mul 1 (a , b) (c , d) ≡ ((a * c) + (- (b * d)) , (a * d) + (b * c))
mul-k1-is-complex-mul a b c d =
  cong₂ _,_
    (cong (λ z → (a * c) + (- z)) (*-comm d b))
    (cong (λ z → z + (b * c)) (*-comm d a))

------------------------------------------------------------------------
-- Multiplicative identity: real-part k 1ℤ acts as identity for mul
------------------------------------------------------------------------
-- Built from `mul-zeroˡ`/`mul-zeroʳ` (mutually recursive: each one's
-- inductive step needs the other one at the *same* level, since mul's
-- doubling formula always pairs up one left-multiplication and one
-- right-multiplication), plus the additive-identity and conjugate-of-
-- zero facts below.

conj-zeroCD : (k : ℕ) → conj k (zeroCD k) ≡ zeroCD k
conj-zeroCD ℕzero    = refl
conj-zeroCD (ℕsuc k) = cong₂ _,_ (conj-zeroCD k) (neg-zeroCD k)

add-identityˡ : (k : ℕ) (x : CD k) → add k (zeroCD k) x ≡ x
add-identityˡ ℕzero    x       = +-identityˡ x
add-identityˡ (ℕsuc k) (a , b) = cong₂ _,_ (add-identityˡ k a) (add-identityˡ k b)

add-identityʳ : (k : ℕ) (x : CD k) → add k x (zeroCD k) ≡ x
add-identityʳ ℕzero    x       = +-identityʳ x
add-identityʳ (ℕsuc k) (a , b) = cong₂ _,_ (add-identityʳ k a) (add-identityʳ k b)

mul-zeroˡ : (k : ℕ) (x : CD k) → mul k (zeroCD k) x ≡ zeroCD k
mul-zeroʳ : (k : ℕ) (x : CD k) → mul k x (zeroCD k) ≡ zeroCD k

mul-zeroˡ ℕzero    x       = *-zeroˡ x
mul-zeroˡ (ℕsuc k) (c , d) =
  cong₂ _,_
    (trans (cong₂ (add k) (mul-zeroˡ k c)
                           (trans (cong (neg k) (mul-zeroʳ k (conj k d)))
                                  (neg-zeroCD k)))
           (add-identityˡ k (zeroCD k)))
    (trans (cong₂ (add k) (mul-zeroʳ k d) (mul-zeroˡ k (conj k c)))
           (add-identityˡ k (zeroCD k)))

mul-zeroʳ ℕzero    x       = *-zeroʳ x
mul-zeroʳ (ℕsuc k) (a , b) =
  cong₂ _,_
    (trans (cong₂ (add k) (mul-zeroʳ k a)
                           (trans (cong (neg k)
                                        (trans (cong (λ z → mul k z b) (conj-zeroCD k))
                                               (mul-zeroˡ k b)))
                                  (neg-zeroCD k)))
           (add-identityˡ k (zeroCD k)))
    (trans (cong₂ (add k) (mul-zeroˡ k a)
                           (trans (cong (mul k b) (conj-zeroCD k))
                                  (mul-zeroʳ k b)))
           (add-identityˡ k (zeroCD k)))

-- Proved first: mul-identityˡ's inductive step needs this at the same
-- level, but not vice versa.
mul-identityʳ : (k : ℕ) (x : CD k) → mul k x (real-part k 1ℤ) ≡ x
mul-identityʳ ℕzero    x       = *-identityʳ x
mul-identityʳ (ℕsuc k) (a , b) =
  cong₂ _,_
    (trans (cong₂ (add k) (mul-identityʳ k a)
                           (trans (cong (neg k)
                                        (trans (cong (λ z → mul k z b) (conj-zeroCD k))
                                               (mul-zeroˡ k b)))
                                  (neg-zeroCD k)))
           (add-identityʳ k a))
    (trans (cong₂ (add k) (mul-zeroˡ k a)
                           (trans (cong (mul k b) (real-part-fixed k 1ℤ))
                                  (mul-identityʳ k b)))
           (add-identityˡ k b))

mul-identityˡ : (k : ℕ) (x : CD k) → mul k (real-part k 1ℤ) x ≡ x
mul-identityˡ ℕzero    x       = *-identityˡ x
mul-identityˡ (ℕsuc k) (c , d) =
  cong₂ _,_
    (trans (cong₂ (add k) (mul-identityˡ k c)
                           (trans (cong (neg k) (mul-zeroʳ k (conj k d)))
                                  (neg-zeroCD k)))
           (add-identityʳ k c))
    (trans (cong₂ (add k) (mul-identityʳ k d) (mul-zeroˡ k (conj k c)))
           (add-identityʳ k d))

------------------------------------------------------------------------
-- Concrete zero-divisor smoke test at k=4 (sedenions)
------------------------------------------------------------------------
-- e_3 + e_10 is Moreno's standard example of a sedenion zero divisor
-- (the same seed used in the accompanying Sage/NumPy experiment, and
-- in the same family as the Lean side's `ex4_count` sedenion work).
-- Numerically, a NumPy/SymPy rank-chain computation found this exact
-- kernel witness (-e_5 + e_12) with a * witness = 0. Re-checking it
-- here via `refl` is an independent verification: Agda re-derives the
-- same fact purely from `mul`'s own reduction rules, not by trusting
-- the external computation.

seed-a : CD 4
seed-a = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 1))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
          ((((+ 0) , (+ 0)) , ((+ 1) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

witness-x : CD 4
witness-x = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (- (+ 1))) , ((+ 0) , (+ 0)))) ,
             ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 1) , (+ 0)) , ((+ 0) , (+ 0)))))

_ : mul 4 seed-a witness-x ≡ zeroCD 4
_ = refl
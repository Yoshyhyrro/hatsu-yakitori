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
         *-identityˡ; *-identityʳ; *-zeroˡ; *-zeroʳ; +-comm; +-assoc;
         neg-distrib-+; neg-distribˡ-*; neg-distribʳ-*; +-inverseˡ;
         *-distribˡ-+; *-distribʳ-+)
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

------------------------------------------------------------------------
-- Algebraic plumbing for future norm/bilinearity work
------------------------------------------------------------------------
-- The numerical experiment (Sage/NumPy, outside this file) found
-- rank(L_a) = rank(L_a^2) for every tested seed -- i.e. Im(L_a) and
-- ker(L_a) never overlap ("index <= 1"), which is exactly the
-- structure `zero-divisor-has-gen-inv` needs. The natural route to a
-- real proof runs through the norm N(x) = mul k x (conj k x) being
-- always fixed by conjugation (i.e. "real"); reaching that theorem
-- needs commutativity/associativity of `add` and `conj`/`neg`
-- commuting, none of which exist yet. Built here as safe, mechanical
-- groundwork (same pattern as `neg-neg`/`conj-conj`) -- NOT attempting
-- the norm theorem itself yet, since it additionally needs
-- bilinearity of `mul` over `neg`, a bigger, still-unverified piece.

add-comm : (k : ℕ) (x y : CD k) → add k x y ≡ add k y x
add-comm ℕzero    x       y       = +-comm x y
add-comm (ℕsuc k) (a , b) (c , d) = cong₂ _,_ (add-comm k a c) (add-comm k b d)

add-assoc : (k : ℕ) (x y z : CD k) →
  add k (add k x y) z ≡ add k x (add k y z)
add-assoc ℕzero    x       y       z       = +-assoc x y z
add-assoc (ℕsuc k) (a , b) (c , d) (e , f) =
  cong₂ _,_ (add-assoc k a c e) (add-assoc k b d f)

conj-neg-comm : (k : ℕ) (x : CD k) → conj k (neg k x) ≡ neg k (conj k x)
conj-neg-comm ℕzero    x       = refl
conj-neg-comm (ℕsuc k) (a , b) = cong₂ _,_ (conj-neg-comm k a) refl

------------------------------------------------------------------------
-- Bilinearity of mul over neg
------------------------------------------------------------------------
-- The true bottleneck identified from two independent directions: the
-- norm theorem (N(x) = x * conj x is real) and the Cayley-Dickson/Hopf
-- closure theorem (product of two basis vectors is always +-or-minus a
-- third) both got stuck on exactly this. Mutually recursive for the
-- same structural reason as `mul-zeroˡ`/`mul-zeroʳ`: `mul`'s doubling
-- formula always pairs up one left- and one right-multiplication at
-- each step.

neg-add-distrib : (k : ℕ) (x y : CD k) → neg k (add k x y) ≡ add k (neg k x) (neg k y)
neg-add-distrib ℕzero    x       y       = neg-distrib-+ x y
neg-add-distrib (ℕsuc k) (a , b) (c , d) =
  cong₂ _,_ (neg-add-distrib k a c) (neg-add-distrib k b d)

mul-neg-distribˡ : (k : ℕ) (x y : CD k) → mul k (neg k x) y ≡ neg k (mul k x y)
mul-neg-distribʳ : (k : ℕ) (x y : CD k) → mul k x (neg k y) ≡ neg k (mul k x y)

mul-neg-distribˡ ℕzero x y = sym (neg-distribˡ-* x y)
mul-neg-distribˡ (ℕsuc k) (a , b) (c , d) = cong₂ _,_ P1≡P2 Q1≡Q2
  where
  P1≡P2 : add k (mul k (neg k a) c) (neg k (mul k (conj k d) (neg k b)))
          ≡ neg k (add k (mul k a c) (neg k (mul k (conj k d) b)))
  P1≡P2 =
    trans (cong₂ (add k)
                 (mul-neg-distribˡ k a c)
                 (trans (cong (neg k) (mul-neg-distribʳ k (conj k d) b))
                        (neg-neg k (mul k (conj k d) b))))
          (sym (trans (neg-add-distrib k (mul k a c) (neg k (mul k (conj k d) b)))
                      (cong (add k (neg k (mul k a c)))
                            (neg-neg k (mul k (conj k d) b)))))

  Q1≡Q2 : add k (mul k d (neg k a)) (mul k (neg k b) (conj k c))
          ≡ neg k (add k (mul k d a) (mul k b (conj k c)))
  Q1≡Q2 =
    trans (cong₂ (add k)
                 (mul-neg-distribʳ k d a)
                 (mul-neg-distribˡ k b (conj k c)))
          (sym (neg-add-distrib k (mul k d a) (mul k b (conj k c))))

mul-neg-distribʳ ℕzero x y = sym (neg-distribʳ-* x y)
mul-neg-distribʳ (ℕsuc k) (a , b) (c , d) = cong₂ _,_ R1≡R2 S1≡S2
  where
  R1≡R2 : add k (mul k a (neg k c)) (neg k (mul k (conj k (neg k d)) b))
          ≡ neg k (add k (mul k a c) (neg k (mul k (conj k d) b)))
  R1≡R2 =
    trans (cong₂ (add k)
                 (mul-neg-distribʳ k a c)
                 (trans (cong (neg k)
                              (trans (cong (λ z → mul k z b) (conj-neg-comm k d))
                                     (mul-neg-distribˡ k (conj k d) b)))
                        (neg-neg k (mul k (conj k d) b))))
          (sym (trans (neg-add-distrib k (mul k a c) (neg k (mul k (conj k d) b)))
                      (cong (add k (neg k (mul k a c)))
                            (neg-neg k (mul k (conj k d) b)))))

  S1≡S2 : add k (mul k (neg k d) a) (mul k b (conj k (neg k c)))
          ≡ neg k (add k (mul k d a) (mul k b (conj k c)))
  S1≡S2 =
    trans (cong₂ (add k)
                 (mul-neg-distribˡ k d a)
                 (trans (cong (mul k b) (conj-neg-comm k c))
                        (mul-neg-distribʳ k b (conj k c))))
          (sym (neg-add-distrib k (mul k d a) (mul k b (conj k c))))

------------------------------------------------------------------------
-- The norm N(x) = x * conj(x) is always real (fixed by conj)
------------------------------------------------------------------------
-- The payoff of the last several sections. `conj-add-distrib` and
-- `add-neg-inverseˡ` are the two small remaining pieces; both are
-- proved first, standalone.

conj-add-distrib : (k : ℕ) (x y : CD k) → conj k (add k x y) ≡ add k (conj k x) (conj k y)
conj-add-distrib ℕzero    x       y       = refl
conj-add-distrib (ℕsuc k) (a , b) (c , d) =
  cong₂ _,_ (conj-add-distrib k a c) (neg-add-distrib k b d)

add-neg-inverseˡ : (k : ℕ) (x : CD k) → add k (neg k x) x ≡ zeroCD k
add-neg-inverseˡ ℕzero    x       = +-inverseˡ x
add-neg-inverseˡ (ℕsuc k) (a , b) =
  cong₂ _,_ (add-neg-inverseˡ k a) (add-neg-inverseˡ k b)

-- N(x) := mul k x (conj k x) is fixed by conj k, for every x.
norm-real : (k : ℕ) (x : CD k) → conj k (mul k x (conj k x)) ≡ mul k x (conj k x)
norm-real ℕzero x = refl
norm-real (ℕsuc k) (a , b) =
  subst (λ z → conj (ℕsuc k) z ≡ z) (sym M-eq) P-fixed
  where
  N_a  : CD k
  N_a  = mul k a (conj k a)
  N'_b : CD k
  N'_b = mul k (conj k b) b

  -- N'(b) = conj(b) * b is real too: it is literally N(conj k b),
  -- since conj-conj turns conj(conj(b)) back into b -- an instance of
  -- this very theorem at the smaller argument `conj k b`, not a
  -- separate fact.
  N'-real : conj k N'_b ≡ N'_b
  N'-real = subst (λ z → conj k (mul k (conj k b) z) ≡ mul k (conj k b) z)
                   (conj-conj k b) (norm-real k (conj k b))

  First-eq : add k N_a (neg k (mul k (conj k (neg k b)) b)) ≡ add k N_a N'_b
  First-eq = cong₂ (add k) refl
    (trans (cong (neg k)
                 (trans (cong (λ z → mul k z b) (conj-neg-comm k b))
                        (mul-neg-distribˡ k (conj k b) b)))
           (neg-neg k N'_b))

  -- The "off-diagonal" second coordinate cancels entirely.
  Second-eq : add k (mul k (neg k b) a) (mul k b (conj k (conj k a))) ≡ zeroCD k
  Second-eq =
    trans (cong₂ (add k) (mul-neg-distribˡ k b a) (cong (mul k b) (conj-conj k a)))
          (add-neg-inverseˡ k (mul k b a))

  M-eq : mul (ℕsuc k) (a , b) (conj (ℕsuc k) (a , b)) ≡ (add k N_a N'_b , zeroCD k)
  M-eq = cong₂ _,_ First-eq Second-eq

  P-fixed : conj (ℕsuc k) (add k N_a N'_b , zeroCD k) ≡ (add k N_a N'_b , zeroCD k)
  P-fixed = cong₂ _,_
    (trans (conj-add-distrib k N_a N'_b) (cong₂ (add k) (norm-real k a) N'-real))
    (neg-zeroCD k)

------------------------------------------------------------------------
-- mul is genuinely linear (distributes over add)
------------------------------------------------------------------------
-- `LinearMap` (CayleyDicksonQuiver.Properties, Section 8) has been
-- called that since it was first written, but nothing ever checked
-- that `mul k a` actually respects addition -- this is exactly that
-- check, i.e. the "R-module homomorphism" property `a * (x + y) = a*x
-- + a*y` (and the mirror law), the first stage of the
-- ModuleStructureExperiment separation (rank-nullity and invertibility
-- are later, harder stages, deliberately not attempted here).

-- The "middle four exchange" law, needed repeatedly below to reconcile
-- two different ways of grouping four summands. A direct consequence
-- of add-comm/add-assoc, not itself an induction on k.
add-interchange : (k : ℕ) (P Q R S : CD k) →
  add k (add k P Q) (add k R S) ≡ add k (add k P R) (add k Q S)
add-interchange k P Q R S =
  trans (add-assoc k P Q (add k R S))
        (trans (cong (add k P)
                     (trans (sym (add-assoc k Q R S))
                            (trans (cong (λ z → add k z S) (add-comm k Q R))
                                   (add-assoc k R Q S))))
               (sym (add-assoc k P R (add k Q S))))

mul-add-distribˡ : (k : ℕ) (x y z : CD k) →
  mul k x (add k y z) ≡ add k (mul k x y) (mul k x z)
mul-add-distribʳ : (k : ℕ) (x y z : CD k) →
  mul k (add k x y) z ≡ add k (mul k x z) (mul k y z)

mul-add-distribˡ ℕzero x y z = *-distribˡ-+ x y z
mul-add-distribˡ (ℕsuc k) (a , b) (c , d) (e , f) = cong₂ _,_ first-eq second-eq
  where
  first-eq : add k (mul k a (add k c e)) (neg k (mul k (conj k (add k d f)) b))
             ≡ add k (add k (mul k a c) (neg k (mul k (conj k d) b)))
                     (add k (mul k a e) (neg k (mul k (conj k f) b)))
  first-eq =
    trans (cong₂ (add k)
                 (mul-add-distribˡ k a c e)
                 (trans (cong (neg k)
                              (trans (cong (λ z → mul k z b) (conj-add-distrib k d f))
                                     (mul-add-distribʳ k (conj k d) (conj k f) b)))
                        (neg-add-distrib k (mul k (conj k d) b) (mul k (conj k f) b))))
          (add-interchange k (mul k a c) (mul k a e)
                              (neg k (mul k (conj k d) b)) (neg k (mul k (conj k f) b)))

  second-eq : add k (mul k (add k d f) a) (mul k b (conj k (add k c e)))
              ≡ add k (add k (mul k d a) (mul k b (conj k c)))
                      (add k (mul k f a) (mul k b (conj k e)))
  second-eq =
    trans (cong₂ (add k)
                 (mul-add-distribʳ k d f a)
                 (trans (cong (mul k b) (conj-add-distrib k c e))
                        (mul-add-distribˡ k b (conj k c) (conj k e))))
          (add-interchange k (mul k d a) (mul k f a)
                              (mul k b (conj k c)) (mul k b (conj k e)))

mul-add-distribʳ ℕzero x y z = *-distribʳ-+ z x y
mul-add-distribʳ (ℕsuc k) (a , b) (c , d) (e , f) = cong₂ _,_ first-eq second-eq
  where
  first-eq : add k (mul k (add k a c) e) (neg k (mul k (conj k f) (add k b d)))
             ≡ add k (add k (mul k a e) (neg k (mul k (conj k f) b)))
                     (add k (mul k c e) (neg k (mul k (conj k f) d)))
  first-eq =
    trans (cong₂ (add k)
                 (mul-add-distribʳ k a c e)
                 (trans (cong (neg k) (mul-add-distribˡ k (conj k f) b d))
                        (neg-add-distrib k (mul k (conj k f) b) (mul k (conj k f) d))))
          (add-interchange k (mul k a e) (mul k c e)
                              (neg k (mul k (conj k f) b)) (neg k (mul k (conj k f) d)))

  second-eq : add k (mul k f (add k a c)) (mul k (add k b d) (conj k e))
              ≡ add k (add k (mul k f a) (mul k b (conj k e)))
                      (add k (mul k f c) (mul k d (conj k e)))
  second-eq =
    trans (cong₂ (add k)
                 (mul-add-distribˡ k f a c)
                 (mul-add-distribʳ k b d (conj k e)))
          (add-interchange k (mul k f a) (mul k f c)
                              (mul k b (conj k e)) (mul k d (conj k e)))

------------------------------------------------------------------------
-- Does N(a) = 0 detect zero divisors? A concrete refutation
------------------------------------------------------------------------
-- With `norm-real` in hand, the natural next question is whether N
-- detects zero divisors: N(a) = 0 exactly when `get-linear-map a`
-- (Properties.agda, Section 8) fails to be full rank. Scanning every
-- seed e_i + e_j at k=4 (i < j, 120 in total) gives a clean negative
-- answer:
--
--     zero-divisor seeds (rank(L_a) = 12 < 16): 42, all with nullity 4
--     ...of which N(a) = 0:                      0
--     ...of which N(a) = 2:                     42
--
-- and the 78 non-zero-divisor seeds also all have N(a) = 2 -- the norm
-- is constant across the whole family and carries no information about
-- zero-divisor status. `seed-a` (= e_3 + e_10, the smoke test above) is
-- one of the 42; N(seed-a) = 2, confirmed below by Agda's own
-- reduction.
--
-- This is not a quirk of this one family, it is the standard fact
-- about the Cayley-Dickson tower. N(x) = x * conj(x) stays a
-- positive-definite sum-of-squares form -- anisotropic, N(x) = 0 only
-- at x = 0 -- at every level, including the sedenions. What breaks at
-- the sedenions (k=4) is multiplicativity, N(x*y) = N(x)*N(y), and
-- with it the classical inverse formula: x * (conj(x) * y) = N(x) * y
-- holds whenever `mul` is alternative (true through the octonions,
-- k <= 3), which is exactly what would turn "N(a) nonzero" into
-- "a invertible". At k=4 it no longer holds in general, and it fails
-- precisely at `seed-a`: applying `conj(seed-a)` and then `seed-a` to
-- `witness-x` collapses straight back to zero (`non-alternative-witness`
-- below) instead of returning `N(seed-a) * witness-x`, a nonzero
-- multiple of `witness-x`. So `norm-real` alone was never going to
-- reach `zero-divisor-has-gen-inv` -- the missing ingredient is this
-- alternativity-type identity, not realness of the norm, and that
-- identity is false exactly where it would need to hold. (This also
-- lines up with `CarabinerHypotheses.lagda.md`'s own H2 note: Moreno's
-- actual zero-divisor invariant is the eigenvalue structure of L_a
-- restricted to Spec(a), not the norm -- a genuinely different, and
-- still not formalizable here, shape of argument.)
--
-- `N(a) = 0 <=> rank(L_a) < 2^k` is therefore false in general, and the
-- counterexample lives in the "<=" direction (rank-deficient does not
-- imply isotropic), not the trivial "=>" one. What is recorded below
-- instead is that concrete refutation: `seed-a` is a genuine zero
-- divisor (nonzero kernel witness `witness-x`, not just "rank looks
-- low"), yet its norm is provably not the zero element -- the correct
-- fact to record here in place of the false biconditional,
-- postulate-free and hole-free like the rest of this file.

N : (k : ℕ) → CD k → CD k
N k x = mul k x (conj k x)

-- N(seed-a) reduces to the real integer 2.
N-seed-a : N 4 seed-a ≡ real-part 4 (+ 2)
N-seed-a = refl

-- `real-part k 0` and `zeroCD k` are the same element: base case, both
-- reduce to `+ 0`; step case, the first coordinate follows the
-- induction hypothesis and the second coordinate is `zeroCD k` on both
-- sides already.
real-part-zero-is-zeroCD : (k : ℕ) → real-part k (+ 0) ≡ zeroCD k
real-part-zero-is-zeroCD ℕzero    = refl
real-part-zero-is-zeroCD (ℕsuc k) =
  cong (λ z → z , zeroCD k) (real-part-zero-is-zeroCD k)

two≢zero : ¬ (_≡_ {A = ℤ} (+ 2) (+ 0))
two≢zero ()

-- The inequality made explicit rather than left to eyeballing the `2`
-- above: chase `N-seed-a` back through `real-part-injective` (already
-- on file, from the Fix(conj) = ℤ development) to the underlying ℤ fact
-- 2 ≠ 0.
N-seed-a≢zero : ¬ (N 4 seed-a ≡ zeroCD 4)
N-seed-a≢zero eq =
  two≢zero (real-part-injective 4 (+ 2) (+ 0)
    (trans eq (sym (real-part-zero-is-zeroCD 4))))

-- `witness-x` is genuinely nonzero, not just "looks nonzero": isolate
-- the one leaf coordinate where it differs from `zeroCD 4` (its
-- `-e_5` coefficient, per the header comment on `witness-x` above) and
-- show that single ℤ value cannot be 0.
witness-x-e5-coord : CD 4 → ℤ
witness-x-e5-coord x = proj₂ (proj₁ (proj₂ (proj₁ x)))

neg1≢0 : ¬ (_≡_ {A = ℤ} (- (+ 1)) (+ 0))
neg1≢0 ()

witness-x≢zeroCD4 : ¬ (witness-x ≡ zeroCD 4)
witness-x≢zeroCD4 eq = neg1≢0 (cong witness-x-e5-coord eq)

-- The mechanical witness of exactly where the classical
-- "N(a) ≠ 0 ⇒ a invertible" argument fails for `seed-a`: routing
-- `witness-x` through `conj(seed-a)` and then `seed-a` collapses it to
-- zero, rather than to N(seed-a) * witness-x as it would under an
-- alternative product.
non-alternative-witness :
  mul 4 seed-a (mul 4 (conj 4 seed-a) witness-x) ≡ zeroCD 4
non-alternative-witness = refl

-- Packaged as one fact: `seed-a` is a zero divisor via a genuinely
-- nonzero kernel witness, yet its norm is genuinely nonzero -- the
-- complete, Agda-checked counterexample to `N(a) = 0 <=> rank(L_a) < 2^k`.
zero-divisor-need-not-be-isotropic :
  ¬ (witness-x ≡ zeroCD 4)
    × mul 4 seed-a witness-x ≡ zeroCD 4
    × ¬ (N 4 seed-a ≡ zeroCD 4)
zero-divisor-need-not-be-isotropic =
  witness-x≢zeroCD4 , refl , N-seed-a≢zero

------------------------------------------------------------------------
-- Where exactly does associativity break? [a,a,x] at seed-a vs. a safe pair
------------------------------------------------------------------------
-- For every seed e_i+e_j at k=4, the operator D(a) := L_conj(a) L_a -
-- N(a) I (measuring the gap between conj(a)*(a*x) and N(a)*x) is either
-- identically zero or has rank exactly 8 = 2 * nullity(L_a), with no
-- exceptions: rank 0 on all 78 invertible seeds -- the composition-
-- algebra identity a*(conj(a)*x) = N(a)*x holds exactly, for every x,
-- not just on average -- and rank 8 on all 42 genuine zero divisors,
-- `seed-a` among them. The 42 are themselves a complete closed-form
-- set: writing the 16 basis indices as two blocks {0..7} and {8..15},
-- e_i+e_j (i<j) is a zero divisor iff i in 1..7, j in 9..15, and
-- j != i+8 -- the 7 "matched" cross pairs e_i+e_(i+8) are the only
-- cross pairs that stay safe, and nothing confined to one block, or
-- touching e_0 or e_8, is ever a zero divisor.
--
-- For a purely imaginary a (conj a = neg a, i.e. trace zero -- every pair
-- seed e_i+e_j with i,j != 0 qualifies), N(a) = a*conj(a) = a*(neg a) =
-- neg(a*a) [`mul-neg-distribʳ`], so a*a is always exactly -N(a): a plain
-- consequence of bilinearity that has nothing to do with associativity
-- (`purely-imaginary-square` below, general in k). `seed-a` squares to
-- -N(seed-a) = real-part 4 (-2), confirmed by refl.
--
-- What D(a) is actually measuring, once a*a = -N(a) is known, is
-- whether (a*a)*x = a*(a*x) -- the left-alternative law. That is
-- exactly where `seed-a` and `witness-x` part ways: a*(a*witness-x)
-- collapses to zero, but (a*a)*witness-x does not (it computes to
-- -2 * witness-x, since a*a = -2), so the two sides genuinely disagree.
-- `left-alternative-fails-at-seed-a` below is a complete, refl-checked
-- proof of that disagreement -- no rank/nullity machinery needed, and no
-- postulate either. This is the honest, mechanical version of "the norm
-- test failed": a concrete demonstration of the actual failure.
--
-- For contrast, the matched cross pair e_1+e_9 -- one of the 7 safe
-- seeds -- stays left-alternative at `witness-x`
-- (`left-alternative-holds-at-matched-pair` below). One pair at one
-- vector is not a proof that all 78 safe seeds are alternative for every
-- x (that general theorem is not attempted here), just a second concrete
-- data point confirming which direction the dichotomy runs.

purely-imaginary-square :
  (k : ℕ) (a : CD k) → conj k a ≡ neg k a → N k a ≡ neg k (mul k a a)
purely-imaginary-square k a a-pure =
  trans (cong (mul k a) a-pure) (mul-neg-distribʳ k a a)

seed-a-pure : conj 4 seed-a ≡ neg 4 seed-a
seed-a-pure = refl

seed-a-squared : mul 4 seed-a seed-a ≡ neg 4 (real-part 4 (+ 2))
seed-a-squared =
  trans (trans (sym (neg-neg 4 (mul 4 seed-a seed-a)))
               (cong (neg 4) (sym (purely-imaginary-square 4 seed-a seed-a-pure))))
        (cong (neg 4) N-seed-a)

-- a*(a*witness-x) collapses to zero...
a-ax-is-zero : mul 4 seed-a (mul 4 seed-a witness-x) ≡ zeroCD 4
a-ax-is-zero = refl

-- ...but (a*a)*witness-x does not: its e_5 coordinate is 2, not 0 (reusing
-- the same leaf-projection trick, and the same ℤ fact `two≢zero`, as the
-- norm refutation above).
aa-x-e5-coord : witness-x-e5-coord (mul 4 (mul 4 seed-a seed-a) witness-x) ≡ + 2
aa-x-e5-coord = refl

aa-x-not-zero : ¬ (mul 4 (mul 4 seed-a seed-a) witness-x ≡ zeroCD 4)
aa-x-not-zero eq = two≢zero (trans (sym aa-x-e5-coord) (cong witness-x-e5-coord eq))

-- So the two sides of the left-alternative law genuinely disagree at
-- (seed-a, witness-x): this is where the algebra actually stops being
-- alternative, stated with no reference to rank or nullity at all.
left-alternative-fails-at-seed-a :
  ¬ (mul 4 (mul 4 seed-a seed-a) witness-x ≡ mul 4 seed-a (mul 4 seed-a witness-x))
left-alternative-fails-at-seed-a eq = aa-x-not-zero (trans eq a-ax-is-zero)

-- The contrasting safe pair: e_1 and e_9 (basis vectors, written out as
-- literals the same way `seed-a`/`witness-x` are above), combined into
-- `matched-pair` via the already-proven `add`.
basis-e1 : CD 4
basis-e1 = (((((+ 0) , ((+ 1))) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
            ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e9 : CD 4
basis-e9 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
            ((((+ 0) , ((+ 1))) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

matched-pair : CD 4
matched-pair = add 4 basis-e1 basis-e9

left-alternative-holds-at-matched-pair :
  mul 4 (mul 4 matched-pair matched-pair) witness-x
    ≡ mul 4 matched-pair (mul 4 matched-pair witness-x)
left-alternative-holds-at-matched-pair = refl

------------------------------------------------------------------------
-- Which zero divisors share a kernel? An elementary product-level signature
------------------------------------------------------------------------
-- The kernels of the 42 zero-divisor seeds at k=4 pairwise intersect in
-- dimension 0 or exactly 2, never anything else, and the graph with an
-- edge wherever the intersection is 2-dimensional is a disjoint union
-- of exactly 14 triangles -- 3-seed groups that pairwise share a
-- 2-dimensional piece of kernel, with zero overlap against every seed
-- outside the group.
--
-- Writing c(i,j) = i xor (j-8) for a zero-divisor seed e_i+e_j (i in
-- 1..7, j in 9..15), every triangle shares one c value, and the 7
-- possible c values (1..7) each own exactly 2 of the 14 triangles -- so
-- something beyond c alone (which only picks out 6 candidate seeds) has
-- to select which 3 of those 6 form the actual triangle. That extra bit
-- is elementary and needs no rank or kernel at all: for i in 1..7, j in
-- 9..15, `mul (basis e_i) (basis e_j)` always comes out to plus or
-- minus `basis e_(8+c(i,j))`, and matching sign is exactly the missing
-- condition. `seed-a` (= e_3+e_10) sits in the triangle
-- {e_3+e_10, e_5+e_12, e_6+e_15}: all three basis products below come
-- out to the *same* element, `basis-e9`; the fourth check (`e_2+e_11`,
-- same c = 1, opposite sign) lands on `neg 4 basis-e9` instead, and
-- shares no kernel with `seed-a`.
--
-- This only documents the elementary product-level signature that
-- correlates with the kernel-intersection structure -- it is not a
-- proof that matching signature implies (or is implied by) actual
-- kernel overlap in general, which would need real rank/kernel
-- machinery this file does not have. What is fully checked below, with
-- no gap at all, is one concrete instance of the overlap itself:
-- `witness-x` -- already known to be in `seed-a`'s kernel -- is also
-- killed by `e_6+e_15`, `seed-a`'s triangle-mate, by the same
-- elementary `refl` this file has used throughout.

basis-e2 : CD 4
basis-e2 = (((((+ 0) , (+ 0)) , (((+ 1)) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
            ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e3 : CD 4
basis-e3 = (((((+ 0) , (+ 0)) , ((+ 0) , ((+ 1)))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
            ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e5 : CD 4
basis-e5 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , ((+ 1))) , ((+ 0) , (+ 0)))) ,
            ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e6 : CD 4
basis-e6 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , (((+ 1)) , (+ 0)))) ,
            ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e10 : CD 4
basis-e10 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
             ((((+ 0) , (+ 0)) , (((+ 1)) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e11 : CD 4
basis-e11 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
             ((((+ 0) , (+ 0)) , ((+ 0) , ((+ 1)))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e12 : CD 4
basis-e12 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
             ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , ((((+ 1)) , (+ 0)) , ((+ 0) , (+ 0)))))

basis-e15 : CD 4
basis-e15 = (((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , (+ 0)))) ,
             ((((+ 0) , (+ 0)) , ((+ 0) , (+ 0))) , (((+ 0) , (+ 0)) , ((+ 0) , ((+ 1))))))

-- sanity: seed-a really is basis-e3 + basis-e10, as advertised above.
seed-a-decomposes : add 4 basis-e3 basis-e10 ≡ seed-a
seed-a-decomposes = refl

-- the three "triangle" products all agree...
triangle-product-3-10 : mul 4 basis-e3 basis-e10 ≡ basis-e9
triangle-product-3-10 = refl

triangle-product-5-12 : mul 4 basis-e5 basis-e12 ≡ basis-e9
triangle-product-5-12 = refl

triangle-product-6-15 : mul 4 basis-e6 basis-e15 ≡ basis-e9
triangle-product-6-15 = refl

-- ...while the same-c, opposite-sign seed lands elsewhere.
other-triangle-product-2-11 : mul 4 basis-e2 basis-e11 ≡ neg 4 basis-e9
other-triangle-product-2-11 = refl

-- witness-x, already known to solve mul 4 seed-a witness-x ≡ zeroCD 4, is
-- also annihilated by seed-a's triangle-mate e_6+e_15.
shared-kernel-witness :
  mul 4 (add 4 basis-e6 basis-e15) witness-x ≡ zeroCD 4
shared-kernel-witness = refl
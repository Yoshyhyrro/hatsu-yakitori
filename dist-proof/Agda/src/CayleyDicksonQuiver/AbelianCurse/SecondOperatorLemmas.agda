-- CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas
--
-- A growing collection of facts about "second operators" general
-- enough to not belong to any one instance file: proved once here,
-- usable by any future candidate, rather than re-derived per example
-- the way `BlindSpots` checked it only for two hand-picked matrices.
-- Entries are added as they are confirmed; nothing here is a general
-- theory of the Abelian Curse, only specific, checked facts about it.
--
-- Contents:
--   Lemma 1  a left-kernel vector annihilates every image vector, for
--            3x3 integer matrices (first version, kept as it was)
--   Lemma 2  the same for matrices and vectors of any sizes, via the
--            identity S^t (M v) = (S^t M) v proved by induction
--   Lemma 2' the torsion form of Lemma 2: if every entry of S^t M is
--            divisible by d, then d divides S^t (M v) for every v
--            (the invariance half modulo d; an application, to the
--            torsion instance `Ext1Torsion`, is given there)
--   Applications of Lemma 2: `BlindSpots` for every noise vector, not
--            one chosen one; and, for the `Ext1Extraction` instance,
--            that its hard-coded coboundary matrix `T` is the
--            vectorization of `X B - A X` for every integer `X`
--            (previously computed outside Agda), that the extractor is
--            unchanged by adding any coboundary to any extension
--            matrix, that equal extractor values force the difference
--            into the image of `T`, and that the extractor is not
--            constant.
--
-- See `note/AbelianCurseHypotheses.lagda.md` for the three confirmed
-- instances of a coarse map losing information that a second operator
-- recovers (AC2, AC3, AC6/Ext1Extraction) that this file's lemmas are
-- abstracted from, and for why no single uniform `S` is claimed to
-- exist across them -- the mechanism differs per instance (a
-- commutator subgroup for AC2/AC3, a cokernel of a coboundary map for
-- AC6), and this file records what *is* uniform across that
-- difference, not a way to erase it.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas where

open import CayleyDicksonQuiver.AbelianCurse.Ext1Extraction
  using (Mat; Row; dot; mat-vec; mat-mul; vec2x2; T; U; S-ext; extractor; A; B)
open import CayleyDicksonQuiver.AbelianCurse.BlindSpots
  using (Ind-Rigid; Ind-Rank1; S0; S1) renaming (S to S-rigid)
open import Data.Integer using (ℤ; _+_; _*_; -_) renaming (+_ to pos)
open import Data.Integer.Divisibility.Signed using (_∣_; divides; ∣m⇒∣m*n)
open import Data.Integer.Properties using (+-identityˡ; +-identityʳ; *-zeroʳ)
open import Data.List using (List; []; _∷_; map)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂; trans; sym; subst)
open import Relation.Nullary using (¬_)
open import Data.Integer.Solver using (module +-*-Solver)
open +-*-Solver

------------------------------------------------------------------------
-- Lemma 1 (3x3): a left-kernel vector annihilates every image vector
------------------------------------------------------------------------
-- The form of what `BlindSpots.Δ-blind-is-invisible-to-S` and
-- `BlindSpots.Δ-mixed-invisible-to-S0` checked only for one chosen `M`
-- and `v` each: for *any* `S` with `S^t M = 0` (checked via
-- `mat-mul`) and *any* `v`, `S` is orthogonal to `M v`. Proved by the
-- ring solver for ℤ (`Data.Integer.Solver`) on the regrouping step.
-- Lemma 2 below is the version for arbitrary sizes, with a hypothesis
-- of a different shape (`AllZero (vec-mat S M)` rather than a
-- `mat-mul` equation); this one is kept as it was.

private
  proj1 proj2 proj3 : Mat → ℤ
  proj1 ((x ∷ _)         ∷ _) = x
  proj1 _ = pos 0
  proj2 ((_ ∷ x ∷ _)     ∷ _) = x
  proj2 _ = pos 0
  proj3 ((_ ∷ _ ∷ x ∷ []) ∷ _) = x
  proj3 _ = pos 0

left-kernel-annihilates-image :
  (s1 s2 s3 a1 a2 a3 b1 b2 b3 c1 c2 c3 v1 v2 v3 : ℤ) →
  let M = (a1 ∷ a2 ∷ a3 ∷ []) ∷ (b1 ∷ b2 ∷ b3 ∷ []) ∷ (c1 ∷ c2 ∷ c3 ∷ []) ∷ []
      S = s1 ∷ s2 ∷ s3 ∷ []
      v = v1 ∷ v2 ∷ v3 ∷ []
  in mat-mul 3 (S ∷ []) M ≡ (pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷ [] →
     dot S (mat-vec M v) ≡ pos 0
left-kernel-annihilates-image s1 s2 s3 a1 a2 a3 b1 b2 b3 c1 c2 c3 v1 v2 v3 h =
  trans regroup zeroed
  where
  h1 : s1 * a1 + (s2 * b1 + (s3 * c1 + pos 0)) ≡ pos 0
  h1 = cong proj1 h
  h2 : s1 * a2 + (s2 * b2 + (s3 * c2 + pos 0)) ≡ pos 0
  h2 = cong proj2 h
  h3 : s1 * a3 + (s2 * b3 + (s3 * c3 + pos 0)) ≡ pos 0
  h3 = cong proj3 h

  regroup :
    s1 * (a1 * v1 + (a2 * v2 + (a3 * v3 + pos 0))) +
    (s2 * (b1 * v1 + (b2 * v2 + (b3 * v3 + pos 0))) +
     (s3 * (c1 * v1 + (c2 * v2 + (c3 * v3 + pos 0))) + pos 0))
    ≡
    v1 * (s1 * a1 + (s2 * b1 + (s3 * c1 + pos 0))) +
    (v2 * (s1 * a2 + (s2 * b2 + (s3 * c2 + pos 0))) +
     (v3 * (s1 * a3 + (s2 * b3 + (s3 * c3 + pos 0))) + pos 0))
  regroup = solve 15
    (λ S1 S2 S3 A1 A2 A3 B1 B2 B3 C1 C2 C3 V1 V2 V3 →
      S1 :* (A1 :* V1 :+ (A2 :* V2 :+ (A3 :* V3 :+ con (pos 0)))) :+
      (S2 :* (B1 :* V1 :+ (B2 :* V2 :+ (B3 :* V3 :+ con (pos 0)))) :+
       (S3 :* (C1 :* V1 :+ (C2 :* V2 :+ (C3 :* V3 :+ con (pos 0)))) :+ con (pos 0)))
      :=
      V1 :* (S1 :* A1 :+ (S2 :* B1 :+ (S3 :* C1 :+ con (pos 0)))) :+
      (V2 :* (S1 :* A2 :+ (S2 :* B2 :+ (S3 :* C2 :+ con (pos 0)))) :+
       (V3 :* (S1 :* A3 :+ (S2 :* B3 :+ (S3 :* C3 :+ con (pos 0)))) :+ con (pos 0))))
    refl s1 s2 s3 a1 a2 a3 b1 b2 b3 c1 c2 c3 v1 v2 v3

  zeroed :
    v1 * (s1 * a1 + (s2 * b1 + (s3 * c1 + pos 0))) +
    (v2 * (s1 * a2 + (s2 * b2 + (s3 * c2 + pos 0))) +
     (v3 * (s1 * a3 + (s2 * b3 + (s3 * c3 + pos 0))) + pos 0))
    ≡ pos 0
  zeroed =
    trans (cong (λ z → v1 * z +
                   (v2 * (s1 * a2 + (s2 * b2 + (s3 * c2 + pos 0))) +
                    (v3 * (s1 * a3 + (s2 * b3 + (s3 * c3 + pos 0))) + pos 0))) h1)
    (trans (cong (λ z → v1 * pos 0 +
                   (v2 * z +
                    (v3 * (s1 * a3 + (s2 * b3 + (s3 * c3 + pos 0))) + pos 0))) h2)
    (trans (cong (λ z → v1 * pos 0 + (v2 * pos 0 + (v3 * z + pos 0))) h3)
      (solve 3
        (λ V1 V2 V3 →
          V1 :* con (pos 0) :+ (V2 :* con (pos 0) :+ (V3 :* con (pos 0) :+ con (pos 0)))
          := con (pos 0))
        refl v1 v2 v3)))

------------------------------------------------------------------------
-- Lemma 2 (any sizes): S^t (M v) = (S^t M) v, and the general
-- left-kernel lemma
------------------------------------------------------------------------
-- `Row`s are lists and `dot` truncates: `dot` of two lists of
-- different lengths is the sum over the common prefix, i.e. a missing
-- entry counts as zero. Nothing below assumes the sizes match; where
-- they do not, both sides of each identity read the missing entries as
-- zero in the same way. `vec-mat S M` is the row vector `S^t M`, built
-- by summing the rows of `M` scaled by the entries of `S`.

addR : Row → Row → Row
addR []       ys       = ys
addR (x ∷ xs) []       = x ∷ xs
addR (x ∷ xs) (y ∷ ys) = (x + y) ∷ addR xs ys

scaleR : ℤ → Row → Row
scaleR s []       = []
scaleR s (x ∷ xs) = (s * x) ∷ scaleR s xs

vec-mat : Row → Mat → Row
vec-mat []       _        = []
vec-mat (s ∷ ss) []       = []
vec-mat (s ∷ ss) (r ∷ rs) = addR (scaleR s r) (vec-mat ss rs)

dot-scaleR : (s : ℤ) (r v : Row) → dot (scaleR s r) v ≡ s * dot r v
dot-scaleR s []       []       = sym (*-zeroʳ s)
dot-scaleR s []       (y ∷ ys) = sym (*-zeroʳ s)
dot-scaleR s (x ∷ xs) []       = sym (*-zeroʳ s)
dot-scaleR s (x ∷ xs) (y ∷ ys) =
  trans (cong ((s * x) * y +_) (dot-scaleR s xs ys))
        (solve 4 (λ S' X Y D → (S' :* X) :* Y :+ S' :* D := S' :* (X :* Y :+ D))
           refl s x y (dot xs ys))

dot-addR : (a b v : Row) → dot (addR a b) v ≡ dot a v + dot b v
dot-addR []       []       []       = refl
dot-addR []       []       (z ∷ zs) = refl
dot-addR []       (y ∷ ys) []       = refl
dot-addR []       (y ∷ ys) (z ∷ zs) = sym (+-identityˡ _)
dot-addR (x ∷ xs) []       []       = refl
dot-addR (x ∷ xs) []       (z ∷ zs) = sym (+-identityʳ _)
dot-addR (x ∷ xs) (y ∷ ys) []       = refl
dot-addR (x ∷ xs) (y ∷ ys) (z ∷ zs) =
  trans (cong ((x + y) * z +_) (dot-addR xs ys zs))
        (solve 5 (λ X Y Z P Q → (X :+ Y) :* Z :+ (P :+ Q) := (X :* Z :+ P) :+ (Y :* Z :+ Q))
           refl x y z (dot xs zs) (dot ys zs))

dot-addR-right : (a u t : Row) → dot a (addR u t) ≡ dot a u + dot a t
dot-addR-right []       []       []       = refl
dot-addR-right []       []       (y ∷ ys) = refl
dot-addR-right []       (x ∷ xs) []       = refl
dot-addR-right []       (x ∷ xs) (y ∷ ys) = refl
dot-addR-right (z ∷ zs) []       []       = refl
dot-addR-right (z ∷ zs) []       (y ∷ ys) = sym (+-identityˡ _)
dot-addR-right (z ∷ zs) (x ∷ xs) []       = sym (+-identityʳ _)
dot-addR-right (z ∷ zs) (x ∷ xs) (y ∷ ys) =
  trans (cong (z * (x + y) +_) (dot-addR-right zs xs ys))
        (solve 5 (λ Z X Y P Q → Z :* (X :+ Y) :+ (P :+ Q) := (Z :* X :+ P) :+ (Z :* Y :+ Q))
           refl z x y (dot zs xs) (dot zs ys))

-- `S^t (M v) = (S^t M) v`, for matrices and vectors of any sizes.

dot-vec-mat : (S : Row) (M : Mat) (v : Row) → dot S (mat-vec M v) ≡ dot (vec-mat S M) v
dot-vec-mat []       []       []       = refl
dot-vec-mat []       []       (z ∷ zs) = refl
dot-vec-mat []       (r ∷ rs) []       = refl
dot-vec-mat []       (r ∷ rs) (z ∷ zs) = refl
dot-vec-mat (s ∷ ss) []       []       = refl
dot-vec-mat (s ∷ ss) []       (z ∷ zs) = refl
dot-vec-mat (s ∷ ss) (r ∷ rs) v =
  trans (cong (s * dot r v +_) (dot-vec-mat ss rs v))
        (sym (trans (dot-addR (scaleR s r) (vec-mat ss rs) v)
                    (cong (_+ dot (vec-mat ss rs) v) (dot-scaleR s r v))))

data AllZero : Row → Set where
  az-[] : AllZero []
  az-∷  : ∀ {x xs} → x ≡ pos 0 → AllZero xs → AllZero (x ∷ xs)

allzero-dot : ∀ {r} → AllZero r → (v : Row) → dot r v ≡ pos 0
allzero-dot az-[]         []       = refl
allzero-dot az-[]         (y ∷ ys) = refl
allzero-dot (az-∷ hx hxs) []       = refl
allzero-dot {x ∷ xs} (az-∷ hx hxs) (y ∷ ys) =
  trans (cong₂ (λ a b → a * y + b) hx (allzero-dot hxs ys))
        (solve 1 (λ Y → con (pos 0) :* Y :+ con (pos 0) := con (pos 0)) refl y)

-- If `S^t M = 0` (every entry of `vec-mat S M` is zero) then `S` is
-- orthogonal to `M v` for every `v`: the whole image of `M` is
-- invisible to `S`.

left-kernel-annihilates-image-gen :
  (S : Row) (M : Mat) (v : Row) → AllZero (vec-mat S M) → dot S (mat-vec M v) ≡ pos 0
left-kernel-annihilates-image-gen S M v h = trans (dot-vec-mat S M v) (allzero-dot h v)

------------------------------------------------------------------------
-- Lemma 2' (modulo d): the torsion form of the left-kernel lemma
------------------------------------------------------------------------
-- Lemma 2 needs `S^t M` to vanish.  Where the cokernel has torsion
-- (invariant factors d > 1, AC7) the most one can ask is that every
-- entry of `S^t M` be divisible by d, and then `S` is invisible to the
-- image of `M` *modulo d*: `d` divides `S^t (M v)` for every `v`.  The
-- proof is Lemma 2's, with `AllDiv d` in place of `AllZero`.  `k ∣ z`
-- is the signed divisibility of the standard library (`z = q * k`).

data AllDiv (d : ℤ) : Row → Set where
  ad-[] : AllDiv d []
  ad-∷  : ∀ {x xs} → d ∣ x → AllDiv d xs → AllDiv d (x ∷ xs)

∣-zero : ∀ {d} → d ∣ pos 0
∣-zero = divides (pos 0) refl

∣-plus : ∀ {d a b} → d ∣ a → d ∣ b → d ∣ a + b
∣-plus {d} (divides m ea) (divides n eb) =
  divides (m + n)
    (trans (cong₂ _+_ ea eb)
           (solve 3 (λ M N D → M :* D :+ N :* D := (M :+ N) :* D) refl m n d))

alldiv-dot : ∀ {d r} → AllDiv d r → (v : Row) → d ∣ dot r v
alldiv-dot ad-[]         []       = ∣-zero
alldiv-dot ad-[]         (y ∷ ys) = ∣-zero
alldiv-dot (ad-∷ hx hxs) []       = ∣-zero
alldiv-dot (ad-∷ hx hxs) (y ∷ ys) = ∣-plus (∣m⇒∣m*n y hx) (alldiv-dot hxs ys)

left-kernel-mod-annihilates-image-gen :
  (d : ℤ) (S : Row) (M : Mat) (v : Row) →
  AllDiv d (vec-mat S M) → d ∣ dot S (mat-vec M v)
left-kernel-mod-annihilates-image-gen d S M v h =
  subst (d ∣_) (sym (dot-vec-mat S M v)) (alldiv-dot h v)

------------------------------------------------------------------------
-- Application 1: BlindSpots, for every noise vector
------------------------------------------------------------------------
-- `BlindSpots` checked `S(Ind v) = 0` for one chosen `v` per matrix.
-- By Lemma 2, for every `v`: the entire image of `Ind-Rigid` is
-- invisible to `S`, and the entire image of `Ind-Rank1` is invisible to
-- both `S0` and `S1`. The hypothesis is discharged by computation.

rigid-S-kills-all-noise : (v : Row) → dot S-rigid (mat-vec Ind-Rigid v) ≡ pos 0
rigid-S-kills-all-noise v =
  left-kernel-annihilates-image-gen S-rigid Ind-Rigid v
    (az-∷ refl (az-∷ refl (az-∷ refl az-[])))

rank1-S0-kills-all-noise : (v : Row) → dot S0 (mat-vec Ind-Rank1 v) ≡ pos 0
rank1-S0-kills-all-noise v =
  left-kernel-annihilates-image-gen S0 Ind-Rank1 v
    (az-∷ refl (az-∷ refl (az-∷ refl az-[])))

rank1-S1-kills-all-noise : (v : Row) → dot S1 (mat-vec Ind-Rank1 v) ≡ pos 0
rank1-S1-kills-all-noise v =
  left-kernel-annihilates-image-gen S1 Ind-Rank1 v
    (az-∷ refl (az-∷ refl (az-∷ refl az-[])))

------------------------------------------------------------------------
-- Application 2: the Ext1Extraction extractor, for every coboundary
------------------------------------------------------------------------
-- In `Ext1Extraction`, `diag D = (1,1,0,0)`: the extractor reads the
-- third and fourth coordinates of `U w`, which are the dot products of
-- `w` with the third and fourth rows of `U`, here `r3` and `r4`.

r3 r4 : Row
r3 = pos 0 ∷ pos 1 ∷ pos 0 ∷ pos 0 ∷ []
r4 = pos 0 ∷ pos 0 ∷ pos 0 ∷ pos 1 ∷ []

T-image-invisible-to-r3 : (x : Row) → dot r3 (mat-vec T x) ≡ pos 0
T-image-invisible-to-r3 x =
  left-kernel-annihilates-image-gen r3 T x
    (az-∷ refl (az-∷ refl (az-∷ refl (az-∷ refl az-[]))))

T-image-invisible-to-r4 : (x : Row) → dot r4 (mat-vec T x) ≡ pos 0
T-image-invisible-to-r4 x =
  left-kernel-annihilates-image-gen r4 T x
    (az-∷ refl (az-∷ refl (az-∷ refl (az-∷ refl az-[]))))

-- Adding any vector of the form `T x` to any `w` does not change the
-- extractor.

S-ext-invariant : (w x : Row) →
  S-ext (mat-vec U (addR w (mat-vec T x))) ≡ S-ext (mat-vec U w)
S-ext-invariant w x =
  cong₂ (λ a b → pos 0 ∷ pos 0 ∷ a ∷ b ∷ [])
    (trans (dot-addR-right r3 w (mat-vec T x))
      (trans (cong (dot r3 w +_) (T-image-invisible-to-r3 x)) (+-identityʳ _)))
    (trans (dot-addR-right r4 w (mat-vec T x))
      (trans (cong (dot r4 w +_) (T-image-invisible-to-r4 x)) (+-identityʳ _)))

-- `T`, hard-coded in `Ext1Extraction` from a computation outside Agda,
-- is the vectorization (column-major) of the coboundary `X B - A X`
-- for *every* integer 2x2 matrix `X`, for that file's `A` and `B`.

msub2 madd2 : Mat → Mat → Mat
msub2 ((a ∷ b ∷ []) ∷ (c ∷ d ∷ []) ∷ []) ((e ∷ f ∷ []) ∷ (g ∷ h ∷ []) ∷ []) =
  ((a + - e) ∷ (b + - f) ∷ []) ∷ ((c + - g) ∷ (d + - h) ∷ []) ∷ []
msub2 _ _ = []
madd2 ((a ∷ b ∷ []) ∷ (c ∷ d ∷ []) ∷ []) ((e ∷ f ∷ []) ∷ (g ∷ h ∷ []) ∷ []) =
  ((a + e) ∷ (b + f) ∷ []) ∷ ((c + g) ∷ (d + h) ∷ []) ∷ []
madd2 _ _ = []

T-computes-coboundary : (x11 x12 x21 x22 : ℤ) →
  let X = (x11 ∷ x12 ∷ []) ∷ (x21 ∷ x22 ∷ []) ∷ []
  in vec2x2 (msub2 (mat-mul 2 X B) (mat-mul 2 A X)) ≡ mat-vec T (vec2x2 X)
T-computes-coboundary x11 x12 x21 x22 =
  cong₂ _∷_ c1 (cong₂ _∷_ c2 (cong₂ _∷_ c3 (cong₂ _∷_ c4 refl)))
  where
  c1 : (x11 * pos 2 + (x12 * pos 0 + pos 0)) + - (pos 2 * x11 + (pos 1 * x21 + pos 0))
       ≡ pos 0 * x11 + (- pos 1 * x21 + (pos 0 * x12 + (pos 0 * x22 + pos 0)))
  c1 = solve 4 (λ X11 X12 X21 X22 →
         (X11 :* con (pos 2) :+ (X12 :* con (pos 0) :+ con (pos 0))) :+
         (:- (con (pos 2) :* X11 :+ (con (pos 1) :* X21 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ ((:- con (pos 1)) :* X21 :+
           (con (pos 0) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22
  c2 : (x21 * pos 2 + (x22 * pos 0 + pos 0)) + - (pos 0 * x11 + (pos 2 * x21 + pos 0))
       ≡ pos 0 * x11 + (pos 0 * x21 + (pos 0 * x12 + (pos 0 * x22 + pos 0)))
  c2 = solve 4 (λ X11 X12 X21 X22 →
         (X21 :* con (pos 2) :+ (X22 :* con (pos 0) :+ con (pos 0))) :+
         (:- (con (pos 0) :* X11 :+ (con (pos 2) :* X21 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22
  c3 : (x11 * pos 0 + (x12 * pos 2 + pos 0)) + - (pos 2 * x12 + (pos 1 * x22 + pos 0))
       ≡ pos 0 * x11 + (pos 0 * x21 + (pos 0 * x12 + (- pos 1 * x22 + pos 0)))
  c3 = solve 4 (λ X11 X12 X21 X22 →
         (X11 :* con (pos 0) :+ (X12 :* con (pos 2) :+ con (pos 0))) :+
         (:- (con (pos 2) :* X12 :+ (con (pos 1) :* X22 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ ((:- con (pos 1)) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22
  c4 : (x21 * pos 0 + (x22 * pos 2 + pos 0)) + - (pos 0 * x12 + (pos 2 * x22 + pos 0))
       ≡ pos 0 * x11 + (pos 0 * x21 + (pos 0 * x12 + (pos 0 * x22 + pos 0)))
  c4 = solve 4 (λ X11 X12 X21 X22 →
         (X21 :* con (pos 0) :+ (X22 :* con (pos 2) :+ con (pos 0))) :+
         (:- (con (pos 0) :* X12 :+ (con (pos 2) :* X22 :+ con (pos 0))))
         :=
         con (pos 0) :* X11 :+ (con (pos 0) :* X21 :+
           (con (pos 0) :* X12 :+ (con (pos 0) :* X22 :+ con (pos 0)))))
         refl x11 x12 x21 x22

-- For every extension matrix `C` and every gauge matrix `X`, adding
-- the coboundary `X B - A X` to `C` does not change the extractor.
-- (`Ext1Extraction.C1-and-C2-agree-under-U` is the single instance
-- `C = C1`, `X = I`.)

S-ext-invariant-under-all-coboundaries :
  (c11 c12 c21 c22 x11 x12 x21 x22 : ℤ) →
  let C = (c11 ∷ c12 ∷ []) ∷ (c21 ∷ c22 ∷ []) ∷ []
      X = (x11 ∷ x12 ∷ []) ∷ (x21 ∷ x22 ∷ []) ∷ []
  in extractor (madd2 C (msub2 (mat-mul 2 X B) (mat-mul 2 A X))) ≡ extractor C
S-ext-invariant-under-all-coboundaries c11 c12 c21 c22 x11 x12 x21 x22 =
  trans (cong (λ w → S-ext (mat-vec U w))
              (cong (addR (c11 ∷ c21 ∷ c12 ∷ c22 ∷ []))
                    (T-computes-coboundary x11 x12 x21 x22)))
        (S-ext-invariant (c11 ∷ c21 ∷ c12 ∷ c22 ∷ []) (x11 ∷ x21 ∷ x12 ∷ x22 ∷ []))

-- The converse: equal extractor values force the difference of the two
-- vectors to lie in the image of `T`, with an explicit witness
-- `x = (0, w1 - v1, 0, w3 - v3)`. So, for this `A` and `B`, the
-- extractor sees through the coboundary noise and nothing else.

private
  dot-r3 : (a b c d : ℤ) → dot r3 (a ∷ b ∷ c ∷ d ∷ []) ≡ b
  dot-r3 a b c d = solve 4 (λ A' B' C' D' →
    con (pos 0) :* A' :+ (con (pos 1) :* B' :+ (con (pos 0) :* C' :+ (con (pos 0) :* D' :+ con (pos 0)))) := B')
    refl a b c d

  dot-r4 : (a b c d : ℤ) → dot r4 (a ∷ b ∷ c ∷ d ∷ []) ≡ d
  dot-r4 a b c d = solve 4 (λ A' B' C' D' →
    con (pos 0) :* A' :+ (con (pos 0) :* B' :+ (con (pos 0) :* C' :+ (con (pos 1) :* D' :+ con (pos 0)))) := D')
    refl a b c d

  proj3-of : Row → ℤ
  proj3-of (_ ∷ _ ∷ c ∷ _) = c
  proj3-of _ = pos 0

  proj4-of : Row → ℤ
  proj4-of (_ ∷ _ ∷ _ ∷ d ∷ _) = d
  proj4-of _ = pos 0

  complete-aux : (w1 w2 w3 w4 v1 v2 v3 v4 : ℤ) → w2 ≡ v2 → w4 ≡ v4 →
    v1 ∷ v2 ∷ v3 ∷ v4 ∷ [] ≡
      addR (w1 ∷ w2 ∷ w3 ∷ w4 ∷ [])
           (mat-vec T (pos 0 ∷ (w1 + - v1) ∷ pos 0 ∷ (w3 + - v3) ∷ []))
  complete-aux w1 w2 w3 w4 v1 .w2 v3 .w4 refl refl =
    cong₂ _∷_ k1 (cong₂ _∷_ k2 (cong₂ _∷_ k3 (cong₂ _∷_ k4 refl)))
    where
    k1 : v1 ≡ w1 + (pos 0 * pos 0 + (- pos 1 * (w1 + - v1) + (pos 0 * pos 0 + (pos 0 * (w3 + - v3) + pos 0))))
    k1 = solve 4 (λ W1 W3 V1 V3 → V1 :=
           W1 :+ (con (pos 0) :* con (pos 0) :+ ((:- con (pos 1)) :* (W1 :+ (:- V1)) :+
             (con (pos 0) :* con (pos 0) :+ (con (pos 0) :* (W3 :+ (:- V3)) :+ con (pos 0))))))
           refl w1 w3 v1 v3
    k2 : w2 ≡ w2 + (pos 0 * pos 0 + (pos 0 * (w1 + - v1) + (pos 0 * pos 0 + (pos 0 * (w3 + - v3) + pos 0))))
    k2 = solve 3 (λ W1 W2 W3 → W2 :=
           W2 :+ (con (pos 0) :* con (pos 0) :+ (con (pos 0) :* (W1 :+ (:- W1)) :+
             (con (pos 0) :* con (pos 0) :+ (con (pos 0) :* (W3 :+ (:- W3)) :+ con (pos 0))))))
           refl w1 w2 w3
    k3 : v3 ≡ w3 + (pos 0 * pos 0 + (pos 0 * (w1 + - v1) + (pos 0 * pos 0 + (- pos 1 * (w3 + - v3) + pos 0))))
    k3 = solve 4 (λ W1 W3 V1 V3 → V3 :=
           W3 :+ (con (pos 0) :* con (pos 0) :+ (con (pos 0) :* (W1 :+ (:- V1)) :+
             (con (pos 0) :* con (pos 0) :+ ((:- con (pos 1)) :* (W3 :+ (:- V3)) :+ con (pos 0))))))
           refl w1 w3 v1 v3
    k4 : w4 ≡ w4 + (pos 0 * pos 0 + (pos 0 * (w1 + - v1) + (pos 0 * pos 0 + (pos 0 * (w3 + - v3) + pos 0))))
    k4 = solve 3 (λ W1 W4 W3 → W4 :=
           W4 :+ (con (pos 0) :* con (pos 0) :+ (con (pos 0) :* (W1 :+ (:- W1)) :+
             (con (pos 0) :* con (pos 0) :+ (con (pos 0) :* (W3 :+ (:- W3)) :+ con (pos 0))))))
           refl w1 w4 w3

S-ext-complete : (w1 w2 w3 w4 v1 v2 v3 v4 : ℤ) →
  S-ext (mat-vec U (w1 ∷ w2 ∷ w3 ∷ w4 ∷ [])) ≡ S-ext (mat-vec U (v1 ∷ v2 ∷ v3 ∷ v4 ∷ [])) →
  v1 ∷ v2 ∷ v3 ∷ v4 ∷ [] ≡
    addR (w1 ∷ w2 ∷ w3 ∷ w4 ∷ [])
         (mat-vec T (pos 0 ∷ (w1 + - v1) ∷ pos 0 ∷ (w3 + - v3) ∷ []))
S-ext-complete w1 w2 w3 w4 v1 v2 v3 v4 eq =
  complete-aux w1 w2 w3 w4 v1 v2 v3 v4
    (trans (sym (dot-r3 w1 w2 w3 w4)) (trans (cong proj3-of eq) (dot-r3 v1 v2 v3 v4)))
    (trans (sym (dot-r4 w1 w2 w3 w4)) (trans (cong proj4-of eq) (dot-r4 v1 v2 v3 v4)))

-- The extractor is not constant: two extension matrices differing by
-- something that is not a coboundary get different values.

extractor-separates :
  ¬ (extractor ((pos 5 ∷ pos 3 ∷ []) ∷ (pos 2 ∷ pos 4 ∷ []) ∷ [])
     ≡ extractor ((pos 5 ∷ pos 3 ∷ []) ∷ (pos 3 ∷ pos 4 ∷ []) ∷ []))
extractor-separates ()

------------------------------------------------------------------------
-- Instances
------------------------------------------------------------------------
-- Where these lemmas are used, and the instances they are not about, are
-- indexed in `note/AbelianCurseHypotheses.lagda.md` ("Second-operator
-- lemmas").  Lemma 2 and Lemma 2' concern cokernel-shaped constructions
-- only; nothing more general than that is claimed.
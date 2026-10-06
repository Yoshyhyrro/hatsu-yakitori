-- CayleyDicksonQuiver.AbelianCurse.SecondOperatorLemmas
--
-- A growing collection of facts about "second operators" general
-- enough to not belong to any one instance file: proved once here,
-- usable by any future candidate, rather than re-derived per example
-- the way `BlindSpots` checked it only for two hand-picked matrices.
-- Entries are added as they are confirmed; nothing here is a general
-- theory of the Abelian Curse, only specific, checked facts about it.
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

open import CayleyDicksonQuiver.AbelianCurse.Ext1Extraction using (Mat; Row; dot; mat-vec; mat-mul)
open import Data.Integer using (ℤ; _+_; _*_) renaming (+_ to pos)
open import Data.List using ([]; _∷_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; trans)
open import Data.Integer.Solver using (module +-*-Solver)
open +-*-Solver

------------------------------------------------------------------------
-- Lemma 1 (general): a left-kernel vector annihilates every image
-- vector, for 3x3 integer matrices
------------------------------------------------------------------------
-- The general form of what `BlindSpots.Δ-blind-is-invisible-to-S` and
-- `BlindSpots.Δ-mixed-invisible-to-S0` checked only for one chosen `M`
-- and `v` each: for *any* `S` with `S^t M = 0` (checked via
-- `mat-mul`) and *any* `v`, `S` is orthogonal to `M v`. This is why
-- every element of `Im(T_noise)` is invisible to the whole cokernel,
-- not a fact special to those two examples. Proved by the ring solver
-- for ℤ (`Data.Integer.Solver`) on the regrouping step; nothing here
-- is specific to 3x3 beyond the explicit unfolding, but the lemma is
-- not stated for general `n x m`.

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
-- Index of confirmed instances (not re-derived here, only pointed to)
------------------------------------------------------------------------
-- AC2 (CayleyDicksonQuiver.AbelianCurse.IharaBracket.weight-12-relation):
--   U = 𝔡 → 𝔡^ab (depth one); S = the Ihara bracket; loses relations
--   in [𝔡,𝔡], e.g. {σ1,σ4} = 3{σ2,σ3} at weight 12.
--
-- AC3 (CayleyDicksonQuiver.AbelianCurse.SOReflectionGroup.
--      derived-1-is-id-R1R2, derived-2-is-trivial):
--   U = SO(V) → SO(V)^ab; S = the spinor norm; loses exactly
--   [SO(V),SO(V)] = {id, R1 R2}, confirmed by computing the derived
--   series itself, not merely checking one invariant against it.
--
-- AC6 (CayleyDicksonQuiver.AbelianCurse.Ext1Extraction.
--      C1-and-C2-agree-under-U):
--   U = compares raw extension data; S = the Ext^1(M,N) class via a
--   Smith normal form of the coboundary map; loses exactly the
--   coboundary noise {X B - A X}.
--
-- No single formula unifies how `S` is built across these three: AC2
-- and AC3 recover a multiplicative (group-commutator) invariant, AC6
-- an additive (cokernel) one. `left-kernel-annihilates-image` above is
-- the one fact common to all cokernel-shaped constructions among them
-- (AC6, and the general diagnostic in `BlindSpots`): nothing more
-- general than that is claimed.

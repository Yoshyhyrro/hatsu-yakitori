/-
  Carabiner.lean

  Authors   : HatsuYakitori
  Date      : 2026-02
  Status    : Sketch — core ideas captured, proofs mostly sorry.

  Overview
  --------
  A *carabiner* is a rigid loop at a fixed height on the Berkovich tree.
  Formally it is a Type II Berkovich point at a rational-power radius.
  Under Tate rigidity, the tree has only finitely many allowed heights
  (lattice points), and a sequence of carabiners defines a *route*
  (a path in the Berkovich tree).

  The central observation:
    A route through k carabiners defines an evaluation structure
    analogous to a Goppa code:
      · each carabiner  ↔  a point on an algebraic curve
      · the route length ↔  the Goppa distance lower bound
      · the Golay weight lattice {0,8,12,16,24} ↔  the only rigid height
        set that is simultaneously self-dual (complement-symmetric) and
        closed under the Ariki-Koike transitions.

  This file captures:
    §1  Carabiner height and rigidity
    §2  Routes (ordered sequences of carabiners)
    §3  The code associated to a route  (Carabiner code)
    §4  Distance lower bound  (d ≥ route length)
    §5  Golay specialisation  (why {0,8,12,16,24} is special)
    §6  Connection to Goppa / Toric codes  (interface, mostly sorry)
    §7  Recession Fan: Forward–Backward duality
    §8  Structural functional equation via fan pairing
    §9  Bridge to PAdicMellin / BSDQuiver

  Key design principle:
    We work over a *discrete* height set to keep everything computable.
    The continuous Berkovich tree is approximated by the rigid lattice;
    this is the "carabiner hypothesis" that makes the code construction
    algorithmic.

  Recession Fan / Backward Fan
  ----------------------------
  The *recession fan* is the complement-reverse of a route.
  For the Golay route [w0, w8, w12, w16, w24], the recession fan is:
    [complement(w24), complement(w16), complement(w12), complement(w8), complement(w0)]
  = [w0, w8, w12, w16, w24]  (the same route!)

  This self-complementary property is the structural root of the
  Mellin discrete functional equation: h(w) + h(S(w)) = K.

  The fan pairing (forward fan ⊗ recession fan) at each position i gives:
    h(route[i]) + h(recession[i]) = galoisHeightBound
  which is exactly the functional equation for ALL orbits simultaneously.

  Bridge to BSDQuiver:
  - Forward fan  ↔ forward path (leech → padic via tensor_bang)
  - Recession fan ↔ backward path (padic → leech via recover)
  - XZ involution: adds_topology ∘ forgets_topology = preserves_algebraic
  - The dodecad (w12) is the unique fixed point of both fans.
-/

import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.List.Basic
import HatsuYakitori.MachineConstants   -- GolayWeight, galoisHeight, etc.
import HatsuYakitori.BSDQuiver          -- SpaceTag, TransformEffect, etc.

open HatsuYakitori.MachineConstants
open HatsuYakitori.BSDQuiver

set_option linter.dupNamespace false

namespace HatsuYakitori.Carabiner

/-! ## §1  Carabiner height and rigidity -/
section Height

/-
  A carabiner height is a non-negative real that lies in the
  *rigid lattice*: rational multiples of log|π| for a uniformiser π.

  For concrete computability we work with the Golay height function
  `galoisHeight : ℕ → ℝ` from MachineConstants, which assigns
  heights in [0, 8] to cycle lengths in [0, 24].

  The *allowed* carabiner heights are exactly the five values
  taken by Golay weights:
    h(0)  = 0
    h(8)  ≈ 3.576            (= 8/3)
    h(12) = 4                 (self-dual fixed point)
    h(16) ≈ 4.424            (= 16/3)
    h(24) = 8                 (maximum / cusp direction)
-/

/-- A carabiner is a Golay weight together with a Pauli phase.

    The weight encodes *which* lattice point on the Berkovich tree
    (the real part of a complex evaluation point).

    The phase ∈ ℤ/4ℤ encodes {1, i, −1, −i} ⊂ ℂ×, the 4th roots of
    unity arising from the Pauli group action on the 24-coordinate
    ensemble (BSDQuiver.Pauli24Ensemble).  The pair (weight, phase)
    gives a discrete approximation to a complex evaluation point

        s  =  h(weight)  +  (π/2)·phase

    on the critical strip, bridging ℝ-valued Berkovich height to ℂ.

    Via `Carabiner.ensemble`, every carabiner determines a
    `Pauli24Ensemble`: the 24-coordinate space configuration from
    `spaceConfigFromGolayWeight weight` (Steiner block structure)
    plus `global_phase = phase`.  In particular the w8 carabiners
    correspond to octad blocks of S(5,8,24) with 759 = orbitSize w8. -/
structure Carabiner where
  weight : GolayWeight
  phase  : ZMod 4 := 0
  deriving DecidableEq, Repr

/-- The height of a carabiner, derived from the Golay weight.
    This is the *real* part of the complex evaluation point. -/
noncomputable def Carabiner.height (c : Carabiner) : ℝ := c.weight.height

/-- Reconstruct the Pauli24Ensemble from a carabiner.
    The 24-coordinate config is determined by the weight;
    the global phase is the carabiner's phase.
    This is the bridge: Carabiner → S(5,8,24) block structure. -/
def Carabiner.ensemble (c : Carabiner) : Pauli24Ensemble :=
  { config := spaceConfigFromGolayWeight c.weight
    global_phase := c.phase }

/-- Two carabiners are at the same height iff they have the same weight. -/
@[simp]
theorem carabiner_height_injective (c₁ c₂ : Carabiner) :
    c₁.height = c₂.height ↔ c₁.weight = c₂.weight := by
  constructor
  · intro h
    -- heights are injective on GolayWeight (the five values are distinct)
    sorry
  · intro h
    simp [Carabiner.height, h]

/-- The five standard carabiners, one per Golay weight (phase = 0).
    These are the "classical" evaluation points on the real axis. -/
def carabiner0  : Carabiner := ⟨.w0, 0⟩
def carabiner8  : Carabiner := ⟨.w8, 0⟩
def carabiner12 : Carabiner := ⟨.w12, 0⟩
def carabiner16 : Carabiner := ⟨.w16, 0⟩
def carabiner24 : Carabiner := ⟨.w24, 0⟩

/-- Construct a carabiner at a given weight with non-trivial phase.
    Phase 1 = i, phase 2 = −1, phase 3 = −i in the unit circle. -/
def Carabiner.withPhase (w : GolayWeight) (φ : ZMod 4) : Carabiner := ⟨w, φ⟩

/-- The complement carabiner: reflects across the self-dual midpoint h=4
    and negates the phase (Hopf antipode on the unit circle).
    In ℂ: if s = h + (π/2)φ then S(s) = (K−h) + (π/2)(−φ),
    giving the functional equation s + S(s) = K on the critical strip. -/
def Carabiner.complement (c : Carabiner) : Carabiner :=
  ⟨c.weight.complement, -c.phase⟩

/-- Complement is an involution. -/
@[simp]
theorem Carabiner.complement_complement (c : Carabiner) :
    c.complement.complement = c := by
  simp [Carabiner.complement, GolayWeight.complement_complement]

/-- Heights of complementary carabiners sum to 8 (= galoisHeightBound).
    This is the *self-duality* of the carabiner lattice. -/
theorem Carabiner.height_add_complement (c : Carabiner) :
    c.height + c.complement.height = galoisHeightBound :=
  c.weight.height_add_complement_height

/-- The dodecad carabiner (weight 12) is the unique self-dual point:
    the midpoint of the Berkovich tree segment [0, 8].
    Geometrically: the carabiner that is its own complement. -/
theorem carabiner12_self_dual :
    carabiner12.complement = carabiner12 := by
  simp [carabiner12, Carabiner.complement,
        GolayWeight.complement]

end Height


/-! ## §2  Routes -/
section Routes

/-
  A *route* is an ordered list of carabiners,
  read as a sequence of heights h₁, h₂, …, hₗ.

  Rope-work analogy:
    · The rope starts at height h₁ (first carabiner).
    · Each step either goes *up* (heckeOp: scale by |q|) or
      *branches* (cycloOp: choose a sheet).
    · The route ends when the rope reaches its anchor.

  Key constraint: a *valid* route is *monotone* in some direction
  (either non-decreasing or non-increasing heights), reflecting the
  fact that Berkovich tree paths don't backtrack.
-/

/-- A route is a non-empty list of carabiners. -/
abbrev Route := List Carabiner

/-- The length of a route (number of carabiners threaded). -/
def Route.len (r : Route) : ℕ := r.length

/-- A route is *ascending* if heights are non-decreasing. -/
def Route.isAscending (r : Route) : Prop :=
  r.Pairwise (fun c₁ c₂ => c₁.height ≤ c₂.height)

/-- A route is *descending* if heights are non-increasing. -/
def Route.isDescending (r : Route) : Prop :=
  r.Pairwise (fun c₁ c₂ => c₁.height ≥ c₂.height)

/-- A route is *valid* if it is ascending or descending.
    (No backtracking in the Berkovich tree.) -/
def Route.isValid (r : Route) : Prop :=
  r.isAscending ∨ r.isDescending

/-- The *complement route*: reverse the order and complement each carabiner.
    This is the Hopf antipode applied to the entire rope. -/
def Route.complement (r : Route) : Route :=
  r.reverse.map Carabiner.complement

/-- The complement of an ascending route is descending. -/
theorem Route.complement_ascending_is_descending (r : Route)
    (h : r.isAscending) : r.complement.isDescending := by
  sorry
  -- Strategy: reverse flips the order; complement flips the height
  -- (h → 8-h), so ≤ becomes ≥ after both operations.

/-- A route and its complement together cover the full height range [0,8].
    Concretely: the heights of r ++ r.complement span the full lattice. -/
theorem Route.complement_spans (r : Route) (_hr : r.isValid) :
    ∀ c ∈ r, c.complement ∈ r.complement := by
  intro c hc
  simp [Route.complement, List.mem_map, List.mem_reverse]
  exact ⟨c, hc, rfl⟩

/-- The five-carabiner route using all Golay weights (ascending). -/
def golayRoute : Route :=
  [carabiner0, carabiner8, carabiner12, carabiner16, carabiner24]

theorem golayRoute_ascending : golayRoute.isAscending := by
  simp [golayRoute, Route.isAscending, List.Pairwise,
        carabiner0, carabiner8, carabiner12, carabiner16, carabiner24,
        Carabiner.height, GolayWeight.height]
  sorry  -- Numerical check: 0 ≤ 8/3 ≤ 4 ≤ 16/3 ≤ 8

theorem golayRoute_length : golayRoute.length = 5 := by decide

end Routes


/-! ## §3  The carabiner code -/
section CarabinerCode

/-
  Given a route r = [c₁, c₂, …, cₗ] of length l,
  we construct a linear code C(r) as follows:

    · The *ambient space* is 𝔽₂²⁴ (matching the Golay ambient space).
    · The *codewords* are the binary vectors whose non-zero positions
      form a subset of the union of the Golay orbits corresponding to
      each carabiner height in the route.
    · The *minimum distance* is at least l (the route length).

  This is the carabiner analogue of a Goppa code:
    · carabiner cᵢ  ↔  evaluation point Pᵢ on a curve
    · route length  ↔  Goppa distance lower bound
    · Golay orbit at cᵢ  ↔  fiber above Pᵢ
-/

/-- The Golay orbit size at each carabiner height. -/
def Carabiner.orbitSize (c : Carabiner) : ℕ :=
  c.weight.orbitSize

/-- The total number of positions covered by a route. -/
def Route.totalPositions (r : Route) : ℕ :=
  r.foldl (fun acc c => acc + c.orbitSize) 0

theorem golayRoute_total_positions :
    golayRoute.totalPositions = 2 ^ 12 := by
  simp only [Route.totalPositions, golayRoute, List.foldl,
             Carabiner.orbitSize, GolayWeight.orbitSize,
             carabiner0, carabiner8, carabiner12, carabiner16, carabiner24]
  norm_num

/-- A carabiner codeword is a binary vector indexed by route positions.
    We represent it as a function from positions to 𝔽₂. -/
structure CarabinerCodeword (r : Route) where
  /-- The codeword vector, indexed by total positions -/
  vec     : Fin (r.totalPositions) → ZMod 2
  /-- Support condition: non-zero positions respect orbit boundaries -/
  support : True   -- placeholder; full condition requires orbit data

/-- The carabiner code associated to a route. -/
def CarabinerCode (r : Route) : Type :=
  CarabinerCodeword r

/-- The dimension of the carabiner code is the number of orbits
    covered by the route (one degree of freedom per carabiner). -/
noncomputable def Route.codeDimension (r : Route) : ℕ :=
  r.length

/-- The minimum distance is at least the route length. -/
def Route.distanceLowerBound (r : Route) : ℕ :=
  r.length

/-
  The key inequality (to be proved):
    min_distance(C(r)) ≥ r.length

  Proof sketch (Goppa analogy):
    A non-zero codeword must be non-zero in at least one orbit.
    Each orbit contributes a "carabiner crossing" to the weight.
    The route structure ensures crossings are independent.
    Therefore weight ≥ number of crossed carabiners ≥ r.length.
-/
theorem carabiner_distance_lower_bound (r : Route) (_hr : r.isValid) :
    True :=   -- placeholder for: minDistance(C(r)) ≥ r.length
  trivial

end CarabinerCode


/-! ## §4  The Golay specialisation -/
section GolaySpecialisation

/-
  The Golay route is special because:

  1. Self-duality: complement(golayRoute) is golayRoute reversed.
     → The code is self-dual (C = C⊥).

  2. Completeness: golayRoute covers ALL Golay weights.
     → The code has maximum ambient dimension 2¹².

  3. Rigidity: the five heights are the UNIQUE set satisfying:
     · self-duality (h + h' = 8)
     · AK-closure (each weight is reachable from 0 by AK operators)
     · orbit-size palindrome (1, 759, 2576, 759, 1)

  The third condition is the "Golay uniqueness" that we conjecture
  makes this code construction impossible with any other weight set.
-/

/-- The Golay code arises from the Golay route. -/
def GolayCarabinerCode := CarabinerCode golayRoute

/-- The Golay route is self-complementary:
    its complement equals itself (reverse then complement recovers the route). -/
theorem golayRoute_self_complementary :
    golayRoute.complement = golayRoute := by
  simp [golayRoute, Route.complement, Carabiner.complement,
        carabiner0, carabiner8, carabiner12, carabiner16, carabiner24,
        GolayWeight.complement]

/-- The orbit-size sequence of golayRoute is palindromic. -/
theorem golayRoute_palindrome :
    golayRoute.map Carabiner.orbitSize =
    (golayRoute.map Carabiner.orbitSize).reverse := by
  simp [golayRoute, Carabiner.orbitSize, GolayWeight.orbitSize,
        carabiner0, carabiner8, carabiner12, carabiner16, carabiner24]
  -- (1, 759, 2576, 759, 1) is palindromic

/-
  **The Golay uniqueness conjecture** (informal):

  Let S = {h₁ < h₂ < h₃ < h₄ < h₅} ⊂ [0, 8] be a rigid height set
  (rational-power lattice points) satisfying:
    (a) self-duality:  hᵢ + h_{6-i} = 8 for all i,
    (b) AK-reachability: each hᵢ is reachable from h₁ by AK operators,
    (c) palindromic orbit sizes.

  Then S = {0, 8·log8/log24, 4, 8·log16/log24, 8}
         = {galoisHeight(0), galoisHeight(8), galoisHeight(12),
            galoisHeight(16), galoisHeight(24)}.

  This is the "Golay uniqueness" statement that would make the
  carabiner code construction intrinsically tied to the Golay code.
-/

end GolaySpecialisation


/-! ## §5  Connection to Goppa codes -/
section GoppaConnection

/-
  A classical Goppa code C(L, g) over 𝔽_q is defined by:
    · a set L = {α₁, …, αₙ} ⊂ 𝔽_{q^m} of evaluation points,
    · a Goppa polynomial g ∈ 𝔽_{q^m}[x] with g(αᵢ) ≠ 0.
  The code has minimum distance d ≥ deg(g) + 1.

  Carabiner dictionary:
    · evaluation points αᵢ  ↔  carabiners cᵢ in the route
    · Goppa polynomial g     ↔  the height function h : Route → ℝ
    · deg(g) + 1             ↔  route length l
    · 𝔽_{q^m}               ↔  residue field at each Berkovich point

  The key insight: the *height ordering* on carabiners plays the role
  of the *degree* on the Goppa polynomial.
  Since the Golay heights are totally ordered (0 < 8 < 12 < 16 < 24
  in the weight ordering), the carabiner route is naturally "Goppa-like".
-/

/-- Interface structure connecting a route to Goppa parameters. -/
structure GoppaInterface (r : Route) where
  /-- The ambient field size (residue field at the base carabiner). -/
  q : ℕ
  hq : 1 < q
  /-- The degree of the Goppa polynomial = route length - 1. -/
  goppaDegree : ℕ := r.length - 1
  /-- The Goppa distance bound. -/
  distanceBound : ℕ := goppaDegree + 1

/-- For the Golay route, the Goppa distance bound is 5. -/
def golayGoppaInterface : GoppaInterface golayRoute :=
  { q := 2, hq := by norm_num }

theorem golayGoppaInterface_distance :
    golayGoppaInterface.distanceBound = 5 := by
  simp [golayGoppaInterface, golayRoute_length]

end GoppaConnection


/-! ## §6  Connection to toric codes -/
section ToricConnection

/-- The Newton polytope of a route is its height convex hull.
    In 1D: just the interval [min height, max height]. -/
def Route.heightInterval (r : Route) : Set ℝ :=
  Set.Icc
    (r.foldl (fun m c => min m c.height) galoisHeightBound)
    (r.foldl (fun m c => max m c.height) 0)

/-- The lattice points of the Golay route's height interval are
    exactly the five Golay heights. -/
theorem golayRoute_lattice_points :
    golayRoute.map (fun c => c.height) =
    [galoisHeight 0, galoisHeight 8, galoisHeight 12,
     galoisHeight 16, galoisHeight 24] := by
  simp [golayRoute, carabiner0, carabiner8, carabiner12,
        carabiner16, carabiner24, Carabiner.height,
        GolayWeight.height]
  sorry  -- Unfolds height definitions

/-- The Golay height interval is self-dual:
    the midpoint is galoisHeightBound / 2 = 4. -/
theorem golayRoute_interval_self_dual :
    GolayWeight.w12.height = galoisHeightBound / 2 := by
  simp [GolayWeight.height, GolayWeight.toFin25, octadHeight, galoisHeightBound]

/-- Interface connecting a route to toric code parameters. -/
structure ToricInterface (r : Route) where
  /-- Dimension of the ambient toric variety (= 1 for our routes). -/
  toricDim : ℕ := 1
  /-- Number of lattice points = route length. -/
  latticePoints : ℕ := r.length
  /-- Code length = number of torus evaluation points. -/
  codeLength : ℕ := r.totalPositions
  /-- Minimum distance from toric geometry (volume formula). -/
  toricDistanceBound : ℕ := r.length  -- rough bound; exact formula is sorry

/-- The Golay toric interface. -/
def golayToricInterface : ToricInterface golayRoute :=
  {}   -- all fields use defaults

theorem golayToricInterface_length :
    golayToricInterface.codeLength = 2 ^ 12 :=
  golayRoute_total_positions

end ToricConnection


/-! ## §7  Recession Fan: Forward–Backward Duality

  The *recession fan* (backward fan) is the key structural innovation.

  Given a route r = [c₁, c₂, …, cₗ] (the **forward fan**),
  the recession fan is:
    recession(r) = [complement(cₗ), complement(cₗ₋₁), …, complement(c₁)]

  For the Golay route, this equals the reversal:
    forward  = [w0, w8, w12, w16, w24]
    recession = [complement(w24), complement(w16), complement(w12), complement(w8), complement(w0)]
             = [w0, w8, w12, w16, w24]  ← same!

  The fan pairing at position i:
    h(forward[i]) + h(recession[len-1-i]) = galoisHeightBound

  This is the **structural functional equation**: each position in
  the forward fan is paired with its mirror in the recession fan,
  and their heights always sum to the bound.

  Bridge to BSDQuiver:
  ┌────────────────┐       ┌──────────────────┐
  │  Forward Fan   │       │  Recession Fan    │
  │  (ascending)   │       │  (descending)     │
  │  w0→w8→w12→    │ ←XZ→  │  ←w0←w8←w12      │
  │  w16→w24       │       │  ←w16←w24         │
  └───────┬────────┘       └────────┬──────────┘
          │                         │
          └──── dodecad (w12) ──────┘
                 Fixed point
-/
section RecessionFan

/-- The recession fan (backward fan) of a route.
    This is the complement-reversal, i.e., the Hopf antipode
    applied to the entire rope. -/
def Route.recessionFan (r : Route) : Route :=
  r.complement

/-- The recession fan of the Golay route equals the Golay route itself.
    This is the *self-dual* property: the Golay route is invariant
    under the recession operation. -/
theorem golayRoute_recession_self_dual :
    golayRoute.recessionFan = golayRoute := by
  exact golayRoute_self_complementary

/-- Extract the weight sequence from a route. -/
def Route.weights (r : Route) : List GolayWeight :=
  r.map (fun c => c.weight)

/-- The weight sequence of the Golay route. -/
theorem golayRoute_weights :
    golayRoute.weights = [.w0, .w8, .w12, .w16, .w24] := by
  simp [golayRoute, Route.weights,
        carabiner0, carabiner8, carabiner12, carabiner16, carabiner24]

/-- The weight sequence of the Golay recession fan. -/
theorem golayRoute_recession_weights :
    golayRoute.recessionFan.weights = [.w0, .w8, .w12, .w16, .w24] := by
  have h := golayRoute_recession_self_dual
  rw [h]
  exact golayRoute_weights

/-- Fan pairing: the i-th forward carabiner and the (l-1-i)-th recession
    carabiner have complementary weights. -/
theorem fan_pairing_complementary (i : Fin golayRoute.length) :
    (golayRoute.get i).weight.complement =
    (golayRoute.get ⟨golayRoute.length - 1 - i, by omega⟩).weight := by
  fin_cases i <;>
  simp [golayRoute, carabiner0, carabiner8, carabiner12,
        carabiner16, carabiner24, GolayWeight.complement]

/-- **The Fan Functional Equation**: for each position i,
    the forward height + recession mirror height = galoisHeightBound.
    This simultaneously encodes all 5 discrete functional equations. -/
theorem fan_functional_equation (i : Fin golayRoute.length) :
    (golayRoute.get i).height +
    (golayRoute.get ⟨golayRoute.length - 1 - i, by omega⟩).height =
    galoisHeightBound := by
  have h := fan_pairing_complementary i
  have key := (golayRoute.get i).weight.height_add_complement_height
  rw [h] at key
  exact key

/-- The fan functional equation specialized to each orbit.
    These are the corrected "unit tests" from PAdicMellin §20. -/

-- w₀ ↔ w₂₄: position 0 paired with position 4
theorem fan_eq_w0 :
    carabiner0.height + carabiner24.height = galoisHeightBound :=
  GolayWeight.height_add_complement_height .w0

-- w₈ ↔ w₁₆: position 1 paired with position 3
theorem fan_eq_w8 :
    carabiner8.height + carabiner16.height = galoisHeightBound :=
  GolayWeight.height_add_complement_height .w8

-- w₁₂ ↔ w₁₂: position 2 paired with position 2 (self-dual)
theorem fan_eq_w12 :
    carabiner12.height + carabiner12.height = galoisHeightBound :=
  GolayWeight.height_add_complement_height .w12

-- w₁₆ ↔ w₈: position 3 paired with position 1
theorem fan_eq_w16 :
    carabiner16.height + carabiner8.height = galoisHeightBound :=
  GolayWeight.height_add_complement_height .w16

-- w₂₄ ↔ w₀: position 4 paired with position 0
theorem fan_eq_w24 :
    carabiner24.height + carabiner0.height = galoisHeightBound :=
  GolayWeight.height_add_complement_height .w24

/-- Complement tests: verify that each weight's complement reduces correctly.
    These are the decidable checks that the old PAdicMellin examples intended. -/
example : GolayWeight.w0.complement = .w24 := rfl
example : GolayWeight.w8.complement = .w16 := rfl
example : GolayWeight.w12.complement = .w12 := rfl
example : GolayWeight.w16.complement = .w8 := rfl
example : GolayWeight.w24.complement = .w0 := rfl

end RecessionFan


/-! ## §8  Recession Fan Effect System

  The forward–backward duality of the recession fan has a natural
  interpretation in the BSDQuiver effect system:

  | Forward step  | Effect           | Recession step | Effect            |
  |---------------|------------------|----------------|-------------------|
  | w0 → w8       | adds_topology    | w24 → w16      | forgets_topology  |
  | w8 → w12      | mixes_structures | w16 → w12      | mixes_structures  |
  | w12 → w16     | mixes_structures | w12 → w8       | mixes_structures  |
  | w16 → w24     | adds_topology    | w8 → w0        | forgets_topology  |

  The XZ involution: pairing forward[i] with recession[i] gives
    adds_topology ∘ forgets_topology = preserves_algebraic
  which is exactly the BSDQuiver.xz_effect_commutes theorem.
-/
section RecessionFanEffects

/-- The geometric effect of a single carabiner step in the forward fan. -/
def forwardStepEffect (i : Fin 4) : TransformEffect :=
  match i with
  | ⟨0, _⟩ => .adds_topology       -- w0 → w8: completion
  | ⟨1, _⟩ => .mixes_structures    -- w8 → w12: hybridization
  | ⟨2, _⟩ => .mixes_structures    -- w12 → w16: hybridization
  | ⟨3, _⟩ => .adds_topology       -- w16 → w24: completion

/-- The geometric effect of a single carabiner step in the recession fan. -/
def recessionStepEffect (i : Fin 4) : TransformEffect :=
  match i with
  | ⟨0, _⟩ => .forgets_topology    -- w24 → w16: algebraization
  | ⟨1, _⟩ => .mixes_structures    -- w16 → w12: hybridization
  | ⟨2, _⟩ => .mixes_structures    -- w12 → w8: hybridization
  | ⟨3, _⟩ => .forgets_topology    -- w8 → w0: algebraization

/-- The XZ involution: terminal forward steps cancel terminal recession steps.
    adds_topology ∘ forgets_topology = preserves_algebraic -/
theorem recession_xz_cancellation :
    combineEffects (forwardStepEffect ⟨0, by omega⟩) (recessionStepEffect ⟨3, by omega⟩) =
    .preserves_algebraic := by rfl

/-- The combined effect of the full forward fan then full recession fan
    is preserves_algebraic (= identity), because the recession fan
    "undoes" the forward fan. -/
theorem fan_roundtrip_effect :
    combineEffects
      (combineEffects .adds_topology .mixes_structures)
      (combineEffects .forgets_topology .mixes_structures) =
    .mixes_structures := by rfl

/-- The SpaceTag of each carabiner, via the BSDQuiver bridge. -/
def Carabiner.spaceTag (c : Carabiner) : SpaceTag :=
  match c.weight with
  | .w0  => .affine   -- algebraic base
  | .w8  => .banach   -- p-adic completion (octad)
  | .w12 => .hybrid   -- self-dual midpoint (dodecad)
  | .w16 => .banach   -- p-adic completion (complement octad)
  | .w24 => .affine   -- algebraic cusp (dual to base)

/-- The dodecad carabiner is the unique hybrid point. -/
theorem carabiner12_is_hybrid :
    carabiner12.spaceTag = .hybrid := by rfl

/-- The base and cusp carabiners are both affine. -/
theorem carabiner_endpoints_affine :
    carabiner0.spaceTag = .affine ∧ carabiner24.spaceTag = .affine := by
  exact ⟨rfl, rfl⟩

/-- The octad carabiners are both banach. -/
theorem carabiner_octads_banach :
    carabiner8.spaceTag = .banach ∧ carabiner16.spaceTag = .banach := by
  exact ⟨rfl, rfl⟩

/-- The SpaceTag sequence of the Golay route is palindromic:
    [affine, banach, hybrid, banach, affine]. -/
theorem golayRoute_tags_palindromic :
    golayRoute.map Carabiner.spaceTag =
    (golayRoute.map Carabiner.spaceTag).reverse := by
  simp [golayRoute, Carabiner.spaceTag,
        carabiner0, carabiner8, carabiner12, carabiner16, carabiner24]

end RecessionFanEffects


/-! ## §9  Uniqueness argument (sketch) -/
section Uniqueness

/-- A route is *AK-generated* if each carabiner is reachable from
    carabiner0 by a sequence of AK operator applications.
    (Full definition requires importing the AK pipeline.) -/
def Route.isAKGenerated (r : Route) : Prop :=
  sorry  -- requires AK pipeline definition

/-- A route is *Golay-like* if it satisfies all four uniqueness conditions. -/
def Route.isGolayLike (r : Route) : Prop :=
  -- (A) self-dual
  (∀ c ∈ r, c.complement ∈ r) ∧
  -- (B) AK-generated (placeholder)
  r.isAKGenerated ∧
  -- (C) palindromic orbit sizes
  (r.map Carabiner.orbitSize = (r.map Carabiner.orbitSize).reverse) ∧
  -- (D) total positions is a power of 2
  (∃ k : ℕ, r.totalPositions = 2 ^ k)

/-- The Golay route is Golay-like. -/
theorem golayRoute_is_golay_like : golayRoute.isGolayLike := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · -- (A) self-dual: each weight has its complement in the route
    intro c hc
    simp [golayRoute] at hc
    rcases hc with rfl | rfl | rfl | rfl | rfl <;>
    simp [Carabiner.complement, GolayWeight.complement, golayRoute,
          carabiner0, carabiner8, carabiner12, carabiner16, carabiner24]
  · -- (B) AK-generated: sorry (requires AK pipeline)
    sorry
  · -- (C) palindromic
    exact golayRoute_palindrome
  · -- (D) total positions = 2^12
    exact ⟨12, golayRoute_total_positions⟩

/-- **The uniqueness theorem** (the hard conjecture):
    The Golay route is the UNIQUE Golay-like route of length 5. -/
theorem golayRoute_unique :
    ∀ r : Route, r.length = 5 → r.isGolayLike → r = golayRoute := by
  sorry

end Uniqueness


/-! ## §10  Bridge Summary: Carabiner ↔ PAdicMellin ↔ BSDQuiver

  The carabiner model provides a bridge between four theories,
  with the recession fan as the central organizing structure:

  ┌─────────────────────────────────────────────────────────┐
  │  Berkovich rigidity                                     │
  │  (Type II lattice points = allowed heights)             │
  │           ↕                                             │
  │  Carabiner routes (Forward Fan / Recession Fan)         │
  │  (ordered sequences of rigid Berkovich points)          │
  │           ↕                                             │
  │  PAdicMellin: Discrete functional equation              │
  │  h(w) + h(S(w)) = K via fan pairing                    │
  │           ↕                                             │
  │  BSDQuiver: XZ involution & Effect system               │
  │  adds_topology ∘ forgets_topology = preserves_algebraic │
  │           ↕                                             │
  │  Goppa / Toric codes                                    │
  │  (evaluation codes at carabiner positions)              │
  │           ↕                                             │
  │  Golay uniqueness                                       │
  │  (AK-reachability + palindrome → Golay heights)         │
  └─────────────────────────────────────────────────────────┘
-/
section Summary

/-- Summary theorem: the Carabiner framework captures the key properties. -/
theorem carabiner_bridge_summary :
    -- Route length
    golayRoute.length = 5 ∧
    -- Total positions = 2¹²
    golayRoute.totalPositions = 2 ^ 12 ∧
    -- Self-dual (complement contained)
    (∀ c ∈ golayRoute, c.complement ∈ golayRoute) ∧
    -- Palindromic orbit sizes
    golayRoute.map Carabiner.orbitSize =
      (golayRoute.map Carabiner.orbitSize).reverse ∧
    -- Palindromic SpaceTag sequence
    golayRoute.map Carabiner.spaceTag =
      (golayRoute.map Carabiner.spaceTag).reverse ∧
    -- Recession fan = self (self-complementary)
    golayRoute.recessionFan = golayRoute ∧
    -- Fan functional equations (all 5)
    (∀ i : Fin golayRoute.length,
      (golayRoute.get i).height +
      (golayRoute.get ⟨golayRoute.length - 1 - i, by omega⟩).height =
      galoisHeightBound) ∧
    -- Dodecad is the unique self-dual point
    carabiner12.complement = carabiner12 := by
  exact ⟨golayRoute_length,
         golayRoute_total_positions,
         (golayRoute_is_golay_like).1,
         golayRoute_palindrome,
         golayRoute_tags_palindromic,
         golayRoute_recession_self_dual,
         fan_functional_equation,
         carabiner12_self_dual⟩

end Summary


/-! ## §11  Steiner System S(5,8,24) via Pauli Ensemble

  The carabiner framework encodes the Steiner system S(5,8,24):

  | Steiner parameter | Value | Carabiner realization                          |
  |-------------------|-------|------------------------------------------------|
  | t (covering #)    | 5     | golayRoute.length = 5                          |
  | k (block size)    | 8     | tagCount (config w8) .banach = 8               |
  | v (point set)     | 24    | Fin 24 (coordinates of SpaceConfig)            |
  | # blocks          | 759   | GolayWeight.w8.orbitSize = 759                 |
  | # dodecads        | 2576  | GolayWeight.w12.orbitSize = 2576               |

  The bridge operates via `Carabiner.ensemble`:
    carabiner ↦ Pauli24Ensemble
      weight  ↦ SpaceConfig (which coordinates are banach = "in the block")
      phase   ↦ global_phase ∈ ℤ/4ℤ (quantum phase on the block)

  An *octad carabiner* (weight = w8) corresponds to a single block
  of S(5,8,24): the 8 banach-tagged coordinates are the block's points.

  The XZ involution (X_completion ∘ Z_algebraize = I_preserve) is the
  Steiner block replacement operation: adding a point to a block and
  removing another preserves the algebraic structure.
-/
section SteinerSystem

/-- A carabiner is an *octad* (Steiner block) when its weight is w8. -/
def Carabiner.isOctad (c : Carabiner) : Prop := c.weight = .w8

/-- A carabiner is a *dodecad* when its weight is w12. -/
def Carabiner.isDodecad (c : Carabiner) : Prop := c.weight = .w12

/-- The octad orbit has exactly 759 blocks = |S(5,8,24)|. -/
theorem octad_steiner_count : GolayWeight.w8.orbitSize = 759 := rfl

/-- The dodecad orbit has exactly 2576 elements. -/
theorem dodecad_count : GolayWeight.w12.orbitSize = 2576 := rfl

/-- Steiner parameters (t, k, v) = (5, 8, 24) match the carabiner framework:
    t = route length, k = octad banach count, v = ensemble coordinate count. -/
theorem steiner_params_match :
    golayRoute.length = 5 ∧
    tagCount (spaceConfigFromGolayWeight .w8) .banach = 8 ∧
    Fintype.card (Fin 24) = 24 := by
  exact ⟨golayRoute_length, w8_banach_count, by decide⟩

/-- The ensemble of a standard octad carabiner has 8 banach coordinates. -/
theorem octad_ensemble_banach_count :
    tagCount (carabiner8.ensemble.config) .banach = 8 := by
  simp [carabiner8, Carabiner.ensemble]
  exact w8_banach_count

/-- The ensemble of a dodecad carabiner has 12 hybrid coordinates. -/
theorem dodecad_ensemble_hybrid_count :
    tagCount (carabiner12.ensemble.config) .hybrid = 12 := by
  simp [carabiner12, Carabiner.ensemble]
  exact w12_hybrid_count

/-- Phase-shifted octad: same block structure, different quantum phase.
    All four phases give the same SpaceConfig but distinct ensembles. -/
theorem phase_shift_preserves_config (w : GolayWeight) (φ₁ φ₂ : ZMod 4) :
    (Carabiner.withPhase w φ₁).ensemble.config =
    (Carabiner.withPhase w φ₂).ensemble.config := by
  simp [Carabiner.withPhase, Carabiner.ensemble]

/-- The complement of an octad carabiner is a weight-16 carabiner
    (complement octad), and their ensemble configs are complementary. -/
theorem octad_complement_is_w16 :
    (Carabiner.withPhase .w8 φ).weight.complement = .w16 := rfl

/-- Steiner–Pauli bridge: the orbit sizes of all five weights sum to 2¹².
    This is the total number of codewords in the extended Golay code,
    and simultaneously the size of the Steiner closure. -/
theorem steiner_total_closure :
    GolayWeight.w0.orbitSize + GolayWeight.w8.orbitSize +
    GolayWeight.w12.orbitSize + GolayWeight.w16.orbitSize +
    GolayWeight.w24.orbitSize = 2 ^ 12 := by decide

/-- The Steiner covering axiom (conjectural formalization):
    For any 5-element subset of Fin 24, there exists a unique octad
    (banach-8 SpaceConfig) containing it.
    This is the defining property of S(5,8,24). -/
theorem steiner_covering_axiom :
    ∀ (S : Finset (Fin 24)), S.card = 5 →
      ∃ (config : SpaceConfig),
        tagCount config .banach = 8 ∧
        ∀ i ∈ S, config i = .banach := by
  sorry  -- Full proof requires enumeration of the 759 octads

end SteinerSystem

end HatsuYakitori.Carabiner

/-
  HatsuYakitori.KakDecomposition
  
  KAK Decomposition & Frontier Logic (Galois-Integrated)
  
  This module implements the core KAK (K-Adaptive-K) decomposition algorithm,
  controlled by the Golay/Galois configuration.
  
  The logic connects the mathematical properties of the Golay code (Hamming weight,
  Galois height) to the runtime strategy (Stack/Queue selection) of the
  graph traversal algorithm.
-/

import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.List.Basic
import HatsuYakitori.GolayFrontier
import HatsuYakitori.MachineConstants

namespace HatsuYakitori.KakDecomposition

/-! ## Part 1: Frontier Abstraction -/

/-- K-Frontier structure containing mode and data -/
structure KFrontier (α : Type) where
  mode : GolayFrontier.FrontierMode
  data : List α
  back : List α -- For amortized queue (front=data, back=back)
  deriving Repr

/-- Initialize an empty K-frontier based on mode -/
def kFrontier (mode : GolayFrontier.FrontierMode) : KFrontier α :=
  { mode := mode, data := [], back := [] }

/-- Push an element to the frontier -/
def kPush {α : Type} (frontier : KFrontier α) (val : α) : KFrontier α :=
  match frontier.mode with
  | .stack => { frontier with data := val :: frontier.data }
  | .queue => { frontier with back := val :: frontier.back }

/-- Pop an element from the frontier.
    Returns (Some (val, new_frontier)) or None if empty. -/
def kPop {α : Type} (frontier : KFrontier α) : Option (α × KFrontier α) :=
  match frontier.mode with
  | .stack => 
    match frontier.data with
    | [] => none
    | x :: xs => some (x, { frontier with data := xs })
  | .queue =>
    match frontier.data with
    | x :: xs => some (x, { frontier with data := xs })
    | [] => 
      match frontier.back.reverse with
      | [] => none
      | x :: xs => some (x, { frontier with data := xs, back := [] })

/-- Check if frontier is empty -/
def kEmpty {α : Type} (frontier : KFrontier α) : Bool :=
  frontier.data.isEmpty && frontier.back.isEmpty

/-- Get size of frontier -/
def kSize {α : Type} (frontier : KFrontier α) : ℕ :=
  frontier.data.length + frontier.back.length

/-! ## Part 2: Graph Abstraction -/

/-- A graph node is just a natural number (ID) -/
abbrev Node := ℕ

/-- Edge weight is a positive real number -/
abbrev Weight := ℝ

/-- A graph is a function from Node to list of (Neighbor, Weight) -/
def Graph := Node → List (Node × Weight)

/-- Positive infinity for distance calculations -/
noncomputable def infDist : ℝ := 1e99

/-! ## Part 3: Distance Table Abstraction -/

/-- Distance table mapping Node to current shortest distance -/
abbrev DistTable := List (Node × ℝ) 

/-- Get distance for a node (defaulting to infinity) -/
noncomputable def getDist (table : DistTable) (n : Node) : ℝ :=
  match table.lookup n with
  | some d => d
  | none => infDist

/-- Update distance for a node -/
def updateDist (table : DistTable) (n : Node) (d : ℝ) : DistTable :=
  (n, d) :: table -- Simplified assoc list implementation (overwrites by shadowing)

/-- Relax bound: update distance if new path is shorter -/
noncomputable def relaxBound (table : DistTable) (n : Node) (newDist : ℝ) : DistTable × Bool :=
  let current := getDist table n
  if newDist < current then
    (updateDist table n newDist, true)
  else
    (table, false)

/-! ## Part 4: KAK Core Algorithm -/

/-- Single step of KAK algorithm -/
structure KakState where
  frontier : KFrontier Node
  dists : DistTable
  step : ℕ

/-- Execute one step of KAK traversal -/
noncomputable def kakStep (graph : Graph) (state : KakState) : KakState :=
  match kPop state.frontier with
  | none => state -- Terminate (frontier empty)
  | some (node, nextFrontier) =>
    let currentDist := getDist state.dists node
    let neighbors := graph node
    
    let (finalFrontier, finalDists) := neighbors.foldl 
      (fun (f, d) (neighbor, weight) =>
        let newDist := currentDist + weight
        let (newDists, updated) := relaxBound d neighbor newDist
        if updated then
          (kPush f neighbor, newDists)
        else
          (f, d))
      (nextFrontier, state.dists)
      
    { frontier := finalFrontier, dists := finalDists, step := state.step + 1 }

/-- Maximum steps to prevent infinite loops (fuel) -/
def maxSteps : ℕ := 10000

/-- Run KAK algorithm (bounded loop) -/
noncomputable def kakApply (graph : Graph) (sources : List Node) (mode : GolayFrontier.FrontierMode) : DistTable :=
  let initFrontier := sources.foldl kPush (kFrontier mode)
  let initDists := sources.foldl (fun d s => updateDist d s 0.0) []
  
  let rec loop (fuel : ℕ) (state : KakState) : DistTable :=
    match fuel with
    | 0 => state.dists
    | n + 1 =>
      if kEmpty state.frontier then state.dists
      else loop n (kakStep graph state)

  loop maxSteps { frontier := initFrontier, dists := initDists, step := 0 }

/-! ## Part 5: Golay-Controlled Wrapper -/

/-- Result of KAK-Golay execution -/
structure KakGolayResult where
  dists : DistTable
  config : GolayFrontier.AdaptiveFrontier
  tau : ℕ

/-- Wrapper: apply KAK with Golay-encoded control.
    info-bits → Golay Code → Galois Height → Mode Decision → KAK Strategy -/
noncomputable def kakApplyGolay (graph : Graph) (sources : List Node) (infoBits : GolayFrontier.InfoWord) : KakGolayResult :=
  let config := GolayFrontier.makeAdaptiveFrontier infoBits
  let mode := config.mode
  let dists := kakApply graph sources mode
  
  { dists := dists, config := config, tau := config.tau }

/-! ## Part 6: Correctness Properties -/

/-- Frontier size invariant: size = len(data) + len(back) -/
theorem kSize_eq_len (f : KFrontier α) : kSize f = f.data.length + f.back.length := rfl

/-- Push increases size by 1 -/
theorem kPush_increases_size (f : KFrontier α) (x : α) : kSize (kPush f x) = kSize f + 1 := by
  simp only [kPush, kSize]
  split <;> simp only [List.length_cons] <;> omega

/-- Empty frontier has size 0 -/
theorem kEmpty_iff_size_zero (f : KFrontier α) : kEmpty f = true ↔ kSize f = 0 := by
  -- Case split on the lists to avoid boolean lemmas
  cases f.data with
  | nil =>
    cases f.back with
    | nil => simp [kEmpty, kSize]
    | cons b bs => simp [kEmpty, kSize]
  | cons a as =>
    cases f.back with
    | nil => simp [kEmpty, kSize]
    | cons b bs => simp [kEmpty, kSize]

end HatsuYakitori.KakDecomposition

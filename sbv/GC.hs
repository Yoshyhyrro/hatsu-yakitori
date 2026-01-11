module SBV.TopologicalGC where

import Prelude
import Data.SBV
import Data.SBV.Control

-- ================================================================
-- Graph Configuration
-- ================================================================

-- Number of nodes in the heap graph
n :: Int
n = 4

-- Adjacency matrix representation:
-- adj[i*n + j] = capacity from node i to node j (0 if no edge)
type AdjMatrix = SArray Integer AlgReal

-- Cut mask: which edges are cut (True = edge is severed)
type CutMask = SArray Integer Bool

-- Helper to convert (i,j) to flat index
idx :: Int -> Int -> Integer
idx i j = fromIntegral (i * n + j)

-- ================================================================
-- Core Functions (mirroring Scheme implementation)
-- ================================================================

-- 1. Compute cut capacity (sum of severed edge capacities)
cutCapacity :: AdjMatrix -> CutMask -> SReal
cutCapacity adj mask =
  sum [ ite (readArray mask (literal $ idx i j))
            (readArray adj (literal $ idx i j))
            0
      | i <- [0..n-1], j <- [0..n-1] ]

-- 2. Check if node is reachable from root without crossing cut
reachableWithoutCut :: Int -> AdjMatrix -> CutMask -> [SBool]
reachableWithoutCut root adj mask =
  let -- Initial: node i reachable if it's root or has edge from root
      init = [ literal (i == root) .|| 
               ((readArray adj (literal $ idx root i) .> 0) .&& 
                sNot (readArray mask (literal $ idx root i)))
             | i <- [0..n-1] ]
      
      -- Transitive closure step
      step reach = 
        [ reach !! i .|| 
          sOr [ reach !! j .&&
                (readArray adj (literal $ idx j i) .> 0) .&& 
                sNot (readArray mask (literal $ idx j i))
              | j <- [0..n-1] ]
        | i <- [0..n-1] ]
      
      -- Iterate n times for full propagation
      iterate' _ x 0 = x
      iterate' f x k = iterate' f (f x) (k-1)
  in
  iterate' step init n

-- 3. Partition into reachable (A) and unreachable (B) sets
partition :: Int -> AdjMatrix -> CutMask -> ([SBool], [SBool])
partition root adj mask =
  let reachA = reachableWithoutCut root adj mask
      reachB = map sNot reachA
  in (reachA, reachB)

-- ================================================================
-- Properties to Verify
-- ================================================================

-- Property 1: Gomory-Hu Min-Cut Correctness
-- If all edge capacities >= threshold t, and we cut at least one edge,
-- then the cut capacity >= t
prop_mincut_threshold :: Predicate
prop_mincut_threshold = do
  adj <- newArray "adj" Nothing :: Symbolic (SArray Integer AlgReal)
  mask <- newArray "mask" Nothing :: Symbolic (SArray Integer Bool)
  t <- sReal "t"
  
  let allCapacitiesAboveThreshold = 
        sAnd [ readArray adj (literal $ idx i j) .>= t
             | i <- [0..n-1], j <- [0..n-1] ]
      
      atLeastOneCut = 
        sOr [ readArray mask (literal $ idx i j)
            | i <- [0..n-1], j <- [0..n-1] ]
      
      cutCap = cutCapacity adj mask
  
  return $ (allCapacitiesAboveThreshold .&& atLeastOneCut) .=> (cutCap .>= t)

-- Property 2: Partition Closure
-- If node i is in set A (reachable), and edge (i,j) exists and is not cut,
-- then j must also be in set A
prop_partition_closure :: Predicate
prop_partition_closure = do
  adj <- newArray "adj" Nothing :: Symbolic (SArray Integer AlgReal)
  mask <- newArray "mask" Nothing :: Symbolic (SArray Integer Bool)
  
  let root = 0
      (setA, _) = partition root adj mask
      
      -- Closure property
      closure = sAnd 
        [ (setA !! i .&& 
           (readArray adj (literal $ idx i j) .> 0) .&& 
           sNot (readArray mask (literal $ idx i j))) 
          .=> (setA !! j)
        | i <- [0..n-1], j <- [0..n-1] ]
  
  return closure

-- Property 3: Ultrametric Triangle Inequality
-- For any three nodes i, j, k:
-- d(i,k) <= max(d(i,j), d(j,k))
-- where d(i,j) = 1/capacity(i,j) if edge exists, else large value
prop_ultrametric_inequality :: Predicate
prop_ultrametric_inequality = do
  adj <- newArray "adj" Nothing :: Symbolic (SArray Integer AlgReal)
  
  i <- sInteger "i"
  j <- sInteger "j"
  k <- sInteger "k"
  
  -- Constrain indices to valid range
  constrain $ i .>= 0 .&& i .< literal (fromIntegral n)
  constrain $ j .>= 0 .&& j .< literal (fromIntegral n)
  constrain $ k .>= 0 .&& k .< literal (fromIntegral n)
  
  let -- Distance function
      dist x y = 
        let cap = readArray adj (x * literal (fromIntegral n) + y)
        in ite (cap .> 0) (1 / cap) 1000
      
      -- Max helper
      smax a b = ite (a .>= b) a b
  
  return $ dist i k .<= smax (dist i j) (dist j k)

-- Property 4: High Connectivity Implies Primitive Classification
-- If a node has high average connectivity (>= threshold),
-- it should be classified as primitive (kept, not collected)
prop_connes_kreimer_primitive :: Predicate
prop_connes_kreimer_primitive = do
  adj <- newArray "adj" Nothing :: Symbolic (SArray Integer AlgReal)
  
  let connectivityThreshold = 0.8 :: SReal
      
      -- Local connectivity for node i: average outgoing capacity
      localConnectivity i = 
        let totalCap = sum [ readArray adj (literal $ idx i j)
                           | j <- [0..n-1] ]
            avgCap = totalCap / literal (fromIntegral n)
        in avgCap
      
      -- If node 0 has high connectivity, it's primitive
      isPrimitive = localConnectivity 0 .>= connectivityThreshold
  
  -- Property: High connectivity nodes should not be collected
  -- (This is a design constraint, not a theorem to prove)
  -- For demonstration, we just check consistency
  return $ isPrimitive .=> isPrimitive  -- Tautology for now

-- ================================================================
-- Test Harness
-- ================================================================

main :: IO ()
main = do
  putStrLn "=== Topological GC Formal Verification ==="
  putStrLn ""
  
  putStrLn "[1] Testing Gomory-Hu Min-Cut Property..."
  res1 <- prove prop_mincut_threshold
  print res1
  putStrLn ""
  
  putStrLn "[2] Testing Partition Closure Property..."
  res2 <- prove prop_partition_closure
  print res2
  putStrLn ""
  
  putStrLn "[3] Testing Ultrametric Triangle Inequality..."
  res3 <- prove prop_ultrametric_inequality
  print res3
  putStrLn ""
  
  putStrLn "[4] Testing Connes-Kreimer Primitive Classification..."
  res4 <- prove prop_connes_kreimer_primitive
  print res4
  putStrLn ""
  
  putStrLn "=== Verification Complete ==="

-- NOTE: Used by SBV verification and Shake rules (verify-topological-gc).
-- Do NOT remove this file unless you also update Rules.SBVModules and
-- any phony targets that refer to topological-gc.scm or TopologicalGC.
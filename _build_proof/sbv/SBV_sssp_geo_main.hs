-- Auto-generated enumerative spec for sssp_geo_main
module Main where

import System.Exit (exitSuccess, exitFailure)
import Data.List (foldl')
import qualified Data.Sequence as Seq

-- Parameters: small grid used for exhaustive checking
width :: Int
width = 4
height :: Int
height = 4

nodes :: [Int]
nodes = [0 .. width*height - 1]

idx :: Int -> Int -> Int
idx x y = x + y * width

decode :: Int -> (Int,Int)
decode n = (n `mod` width, n `div` width)

manhattan :: Int -> Int -> Int
manhattan a b = let (x1,y1) = decode a; (x2,y2) = decode b in abs (x1 - x2) + abs (y1 - y2)

neighbors :: Int -> [Int]
neighbors n =
  let (x,y) = decode n in
  filter inBounds [ maybeIdx (x-1,y), maybeIdx (x+1,y), maybeIdx (x,y-1), maybeIdx (x,y+1) ]
  where
    inBounds = (/=) (-1)
    maybeIdx (a,b) = if a >= 0 && a < width && b >= 0 && b < height then idx a b else -1

-- Simple BFS to compute shortest path length between two nodes (unit weights)
bfs :: Int -> Int -> Int
bfs src dst = go (Seq.singleton (src,0)) (replicate (width*height) False)
  where
    go Seq.Empty _ = maxBound `div` 2
    go (q) visited = case Seq.viewl q of
      Seq.EmptyL -> maxBound `div` 2
      (v,d) Seq.:< rest ->
        if v == dst then d else
          let vis' = update visited v True
              nbrs = filter (\n -> not (vis' !! n)) (filter (>=0) (neighbors v))
              rest' = foldl' (\acc x -> acc Seq.|> (x, d+1)) rest nbrs
          in go rest' vis'
    update xs i val = take i xs ++ [val] ++ drop (i+1) xs

main :: IO ()
main = do
  putStrLn $ "SSSP Geometry enumerative check: " ++ show width ++ "x" ++ show height
  let pairs = [(a,b) | a <- nodes, b <- nodes]
  let failures = filter (\(a,b) -> bfs a b /= manhattan a b) pairs
  if null failures then do putStrLn "PASS: all pairs satisfy shortest==manhattan"; exitSuccess
  else do putStrLn ("FAIL: mismatches (first 10 shown): " ++ show (take 10 failures)); exitFailure

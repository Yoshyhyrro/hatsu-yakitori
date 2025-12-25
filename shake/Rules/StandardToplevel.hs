{- shake/Rules/StandardToplevel.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.StandardToplevel
  ( extractAllDeps
  , extractDeclareUses
  , extractImports
  , extractModuleDecl
  ) where

import Data.List (nub, isPrefixOf, isInfixOf)
import Data.Maybe (catMaybes)

-- ============================================================
-- Extraction Functions
-- ============================================================

-- | Extract (declare (uses srfi-1 srfi-69 golay_frontier)) dependencies
extractDeclareUses :: String -> [String]
extractDeclareUses content = 
  nub $ concatMap extractFromLine (lines content)
  where
    extractFromLine line
      | "(declare (uses" `isInfixOf` line =
          let cleaned = dropWhile (/= 's') $ dropWhile (/= '(') line
              inside = takeWhile (/= ')') $ dropWhile (/= ' ') cleaned
          in words inside
      | otherwise = []

-- | Extract (import X Y Z) or (import (chicken base)) declarations
extractImports :: String -> [String]
extractImports content = 
  nub $ concatMap parseImportLine (lines content)
  where
    parseImportLine line
      | "(import" `isInfixOf` line =
          let cleaned = filter (\c -> c `notElem` ("()" :: String)) line
              tokens = words cleaned
              afterImport = drop 1 $ dropWhile (/= "import") tokens
          in filter isCustomModule afterImport
      | otherwise = []

-- | Extract (module name ...) declaration
extractModuleDecl :: String -> Maybe String
extractModuleDecl content =
  case dropWhile (/= 'm') content of
    [] -> Nothing
    rest -> 
      let modName = takeWhile (\c -> c /= ' ' && c /= ')') $ 
                    dropWhile (== ' ') $ drop 7 rest
      in if null modName then Nothing else Just modName

-- ============================================================
-- Filtering
-- ============================================================

-- | Check if module is custom (not chicken.* or scheme.*)
isCustomModule :: String -> Bool
isCustomModule m =
  not ("chicken" `isPrefixOf` m) &&
  not ("scheme" `isPrefixOf` m) &&
  not ("srfi" `isPrefixOf` m) &&
  not (null m)

-- ============================================================
-- Main API
-- ============================================================

-- | Extract all dependencies from a source file
extractAllDeps :: FilePath -> IO [String]
extractAllDeps srcPath = do
  content <- readFile srcPath
  let uses = extractDeclareUses content
  let imports = filter isCustomModule (extractImports content)
  return $ nub (uses ++ imports)
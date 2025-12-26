{-# LANGUAGE OverloadedStrings #-}

module Rules.StandardToplevel
  ( extractAllDeps
  , extractDeclareUses
  , extractImports
  , extractModuleDecl
  ) where

import Data.List (nub, isPrefixOf, isInfixOf)
import Data.Maybe (listToMaybe)

-- | Extract "(declare (uses ...))" dependencies from file content
extractDeclareUses :: String -> [String]
extractDeclareUses content =
  nub $ concatMap extractFromLine (lines content)
  where
    extractFromLine line
      | "(declare (uses" `isInfixOf` line =
          -- crude: take what's after "(declare (uses" until ')'
          let rest = dropWhile (/= '(') $ dropWhile (/= 'd') line
              inside = takeWhile (/= ')') $ dropWhile (/= '(') rest
              tokens = words $ filter (`notElem` ("()," :: String)) inside
          in tokens
      | otherwise = []

-- | Extract "(import ...)" declarations (returns tokens after import)
extractImports :: String -> [String]
extractImports content =
  nub $ concatMap parseImportLine (lines content)
  where
    parseImportLine line
      | "import" `isInfixOf` line =
          -- Replace (chicken format) with chicken.format to avoid splitting
          let sanitized = replaceSub "(chicken " "chicken." $ 
                          replaceSub "(srfi " "srfi." line
              cleaned = filter (`notElem` ("()" :: String)) sanitized
              tokens = words cleaned
              afterImport = drop 1 $ dropWhile (/= "import") tokens
          in afterImport
      | otherwise = []

-- Simple helper to prevent splitting namespaces
replaceSub :: String -> String -> String -> String
replaceSub old new xs 
    | null xs = ""
    | old `isPrefixOf` xs = new ++ replaceSub old new (drop (length old) xs)
    | otherwise = case xs of
        (c:cs) -> c : replaceSub old new cs
        []     -> ""

-- | Extract "(module NAME ...)" declaration (first token after "module"), if any
extractModuleDecl :: String -> Maybe String
extractModuleDecl content =
  listToMaybe [tok | line <- lines content, "module" `isInfixOf` line,
                     let toks = words line, tok <- drop 1 $ dropWhile (/= "module") toks]

-- | Read a source file and return all declared uses + imports
extractAllDeps :: FilePath -> IO [String]
extractAllDeps srcPath = do
  content <- readFile srcPath
  let uses = extractDeclareUses content
      imports = extractImports content
  return $ nub (uses ++ imports)
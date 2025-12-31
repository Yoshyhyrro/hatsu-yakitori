{- shake/Rules/StandardToplevel.hs -}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}

module Rules.StandardToplevel
  ( -- * Dependency extraction (original)
    extractAllDeps
  , extractDeclareUses
  , extractImports
  , extractModuleDecl
    
    -- * Artifact-aware extraction
  , extractSourceDeps
  , ExtractedDeps(..)
  , classifyDependency
  , DependencyType(..)
  ) where

import Data.List (nub, isPrefixOf, isInfixOf)
import Data.Maybe (listToMaybe)
import Data.Char (isSpace)
import Chicken

-- ============================================================
-- Dependency Type Classification
-- ============================================================

-- | Classify a dependency into its category
data DependencyType
  = SRFILib String        -- ^ SRFI library: (srfi 1), (srfi 69), etc.
  | ChickenExt String     -- ^ Chicken extension: (chicken string-utils)
  | CustomMod String      -- ^ Custom module (user-defined)
  | UnknownDep String     -- ^ Unknown/ambiguous
  deriving (Show, Eq)

-- | Classify a dependency string
classifyDependency :: String -> DependencyType
classifyDependency dep0 =
  let dep = stripParens dep0
      toks = words dep
  in case toks of
      ("srfi":num:_) -> SRFILib ("srfi-" ++ num)
      ("chicken":ext:_) -> ChickenExt ("chicken-" ++ ext)
      _ | "srfi-" `isPrefixOf` dep -> SRFILib dep
        | "chicken-" `isPrefixOf` dep -> ChickenExt dep
        | otherwise ->
            if '-' `elem` dep || '_' `elem` dep
              then CustomMod dep
              else UnknownDep dep

stripParens :: String -> String
stripParens s =
  let s1 = dropWhile isSpace s
      s2 = reverse (dropWhile isSpace (reverse s1))
  in case (s2, reverse s2) of
       ('(':_ , ')':_) -> init (tail s2)
       _ -> s2

-- ============================================================
-- Artifact-aware Dependency Extraction
-- ============================================================

-- | Result of extracting dependencies from a source file
data ExtractedDeps = ExtractedDeps
  { sourceArtifact :: Artifact 'Src      -- ^ The source file itself
  , declaredUses   :: [DependencyType]   -- ^ (declare (uses ...))
  , importedLibs   :: [DependencyType]   -- ^ (import ...)
  , moduleDecl     :: Maybe String       -- ^ (module ...) declaration
  } deriving (Show)

-- | Extract all dependencies from a source file with type info
extractSourceDeps :: FilePath -> IO ExtractedDeps
extractSourceDeps srcPath = do
  content <- readFile srcPath
  
  let rawUses = extractDeclareUses content
  let rawImports = extractImports content
  let modDecl = extractModuleDecl content
  
  let classifiedUses = map classifyDependency rawUses
  let classifiedImports = map classifyDependency rawImports
  
  return $ ExtractedDeps
    { sourceArtifact = mkSource srcPath
    , declaredUses = classifiedUses
    , importedLibs = classifiedImports
    , moduleDecl = modDecl
    }

-- | Convert ExtractedDeps back to raw dependency strings (for csc)
depsToFlags :: ExtractedDeps -> [String]
depsToFlags deps =
  nub $ map depTypeToString (declaredUses deps ++ importedLibs deps)
  where
    depTypeToString :: DependencyType -> String
    depTypeToString (SRFILib s) = s
    depTypeToString (ChickenExt s) = s
    depTypeToString (CustomMod s) = s
    depTypeToString (UnknownDep s) = s

-- ============================================================
-- Original functions (unchanged)
-- ============================================================

-- | Extract "(declare (uses ...))" dependencies from file content
extractDeclareUses :: String -> [String]
extractDeclareUses content =
  nub $ concatMap extractFromLine (lines content)
  where
    extractFromLine line
      | "(declare (uses" `isInfixOf` line =
          let rest = dropWhile (/= '(') $ dropWhile (/= 'd') line
              inside = takeWhile (/= ')') $ dropWhile (/= '(') rest
              tokens = words $ filter (`notElem` ("()," :: String)) inside
          in tokens
      | otherwise = []

-- | Extract "(import ...)" declarations (returns tokens after import)
--   Keeps parenthesized groups like "(chicken base)" as a single dependency token.
extractImports :: String -> [String]
extractImports content =
  nub $ concatMap parseImportLine (lines content)
  where
    parseImportLine line
      | "import" `isInfixOf` line =
          case dropWhile (/= 'i') line of
            xs | "import" `isPrefixOf` xs ->
                  let after = drop (length ("import" :: String)) xs
                  in filter (not . null) (tokenizeImportArgs after)
               | otherwise -> []
      | otherwise = []

-- | Tokenize the arguments of an (import ...) form, preserving (...) groups.
--   Example: " (chicken base) srfi-1 machine_constants)"
--     -> ["(chicken base)","srfi-1","machine_constants"]
tokenizeImportArgs :: String -> [String]
tokenizeImportArgs = go . dropWhile isSpace
  where
    go s0 =
      case dropWhile isSpace s0 of
        "" -> []
        (')':_) -> []  -- stop at end of surrounding form, if present
        ('(':rest) ->
          let (grp, rest') = takeBalanced 1 "(" rest
          in grp : go rest'
        s ->
          let (sym, rest') = break isSpaceOrParen s
          in sym : go rest'

    isSpaceOrParen c = isSpace c || c == '(' || c == ')'

-- | Take a balanced parenthesized group content, returning the full "(...)" string.
--   Input assumes we've already consumed the first '(' and started with depth=1.
takeBalanced :: Int -> String -> String -> (String, String)
takeBalanced depth acc s =
  case s of
    "" -> (acc, "")
    (c:cs)
      | c == '('  -> takeBalanced (depth + 1) (acc ++ [c]) cs
      | c == ')'  ->
          let acc' = acc ++ [c]
          in if depth == 1
                then (acc', cs)
                else takeBalanced (depth - 1) acc' cs
      | otherwise -> takeBalanced depth (acc ++ [c]) cs

-- | Read a source file and return all declared uses + imports
extractAllDeps :: FilePath -> IO [String]
extractAllDeps srcPath = do
  content <- readFile srcPath
  let uses = extractDeclareUses content
      imports = extractImports content
  return $ nub (uses ++ imports)

-- | Extract "(module <name> ...)" declaration from file content
extractModuleDecl :: String -> Maybe String
extractModuleDecl content =
  listToMaybe $ concatMap extractFromLine (lines content)
  where
    extractFromLine line
      | "(module" `isInfixOf` line =
          let rest = dropWhile (/= '(') line
              -- Skip "(module " and get the module name
              afterModule = dropWhile isSpace $ drop (length ("(module" :: String)) rest
              moduleName = takeWhile (\c -> not (isSpace c) && c /= ')') afterModule
          in if null moduleName then [] else [moduleName]
      | otherwise = []
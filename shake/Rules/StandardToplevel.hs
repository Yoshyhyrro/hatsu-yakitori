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
-- Minimal S-expression parsing (for import normalization)
-- ============================================================

data Tok
  = TLParen
  | TRParen
  | TAtom String
  deriving (Show, Eq)

data Sexp
  = Atom String
  | List [Sexp]
  deriving (Show, Eq)

lexSexp :: String -> [Tok]
lexSexp = go . dropWhile isSpace
  where
    go s =
      case dropWhile isSpace s of
        "" -> []
        (';':cs) -> go (dropWhile (/= '\n') cs)
        ('(':cs) -> TLParen : go cs
        (')':cs) -> TRParen : go cs
        ('\"':cs) ->
          let (_str, rest) = span (/= '\"') cs
          in go (drop 1 rest)
        cs ->
          let (a, rest) = span (\c -> not (isSpace c) && c /= '(' && c /= ')') cs
          in if null a then go rest else TAtom a : go rest

parseOne :: [Tok] -> Maybe (Sexp, [Tok])
parseOne toks =
  case toks of
    [] -> Nothing
    (TAtom a : rest) -> Just (Atom a, rest)
    (TLParen : rest) -> do
      (xs, rest') <- parseList [] rest
      Just (List (reverse xs), rest')
    (TRParen : _) -> Nothing

parseList :: [Sexp] -> [Tok] -> Maybe ([Sexp], [Tok])
parseList acc toks =
  case toks of
    [] -> Nothing
    (TRParen : rest) -> Just (acc, rest)
    _ -> do
      (x, rest') <- parseOne toks
      parseList (x : acc) rest'

parseSexp :: String -> Maybe Sexp
parseSexp s = do
  (sexp, rest) <- parseOne (lexSexp s)
  case dropWhile (== TAtom "") rest of
    [] -> Just sexp
    _  -> Just sexp

-- | Convert an import-set sexp into one or more csc -uses unit names.
-- We intentionally strip wrappers like (only ...), (except ...), etc.
-- and map common library specs to Chicken unit names.
importSetToUnits :: Sexp -> [String]
importSetToUnits sx =
  case sx of
    Atom a -> [normalizeAtom a]
    List (Atom "scheme" : _) -> ["scheme"]
    List (Atom "srfi" : Atom n : _) -> ["srfi-" ++ n]
    List (Atom "chicken" : Atom n : _) -> ["chicken." ++ n]
    List (Atom wrapper : rest)
      | wrapper `elem` ["only", "except", "prefix", "rename"]
      , (x:_) <- rest
      -> importSetToUnits x
    List (Atom "and" : rest) -> concatMap importSetToUnits rest
    List xs
      | all isAtom xs
      , let parts = [a | Atom a <- xs]
      , not (null parts)
      -> [normalizeListAsUnit parts]
    _ -> []
  where
    isAtom (Atom _) = True
    isAtom _ = False

normalizeAtom :: String -> String
normalizeAtom a
  | a == "(scheme)" = "scheme"
  | otherwise = a

normalizeListAsUnit :: [String] -> String
normalizeListAsUnit parts =
  case parts of
    ["srfi", n] -> "srfi-" ++ n
    ["chicken", n] -> "chicken." ++ n
    ("scheme" : _) -> "scheme"
    _ -> joinWith '.' parts

joinWith :: Char -> [String] -> String
joinWith _ [] = ""
joinWith c (x:xs) = x ++ concatMap (\p -> c : p) xs

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
      ("chicken":ext:_) -> ChickenExt ("chicken." ++ ext)
      _ | "srfi-" `isPrefixOf` dep -> SRFILib dep
        | "chicken." `isPrefixOf` dep -> ChickenExt dep
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

-- | Extract "(import ...)" declarations (returns tokens after import).
-- Handles multi-line import forms and keeps parenthesized groups like
-- "(chicken base)" as a single dependency token.
extractImports :: String -> [String]
extractImports content =
  nub $ concatMap extractFromForm (findImportForms content)
  where
    extractFromForm form =
      case parseSexp form of
        Just (List (Atom "import" : args)) ->
          filter (not . null) (concatMap importSetToUnits args)
        _ -> []

-- | Find all complete "(import ... )" forms in the file content.
-- This is a lightweight scanner (not a full Scheme parser) but is enough
-- to correctly capture multi-line imports in this repo.
findImportForms :: String -> [String]
findImportForms = go
  where
    needle = "(import"

    go s =
      case breakOn needle s of
        (_, "") -> []
        (_, rest@( '(' : more)) ->
          let (form, after) = takeBalanced 1 "(" more
          in form : go after
        (_, rest) -> go (drop 1 rest)

-- | Break a string on the first occurrence of a substring.
-- Returns (prefix, suffixStartingAtNeedle) or (s, "") if not found.
breakOn :: String -> String -> (String, String)
breakOn needle = go ""
  where
    go acc s
      | needle `isPrefixOf` s = (reverse acc, s)
      | null s = (reverse acc, "")
      | otherwise = go (head s : acc) (tail s)

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
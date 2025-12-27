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
classifyDependency dep
  | "srfi" `isPrefixOf` dep = 
      case words dep of
        ("srfi":num:_) -> SRFILib ("srfi-" ++ num)
        _ -> SRFILib dep
  | "chicken" `isPrefixOf` dep =
      case words dep of
        ("chicken":ext:_) -> ChickenExt ("chicken-" ++ ext)
        _ -> ChickenExt dep
  | otherwise = 
      if '-' `elem` dep || "_" `elem` dep
        then CustomMod dep
        else UnknownDep dep

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
extractImports :: String -> [String]
extractImports content =
  nub $ concatMap parseImportLine (lines content)
  where
    parseImportLine line
      | "import" `isInfixOf` line =
          let sanitized = replaceSub "(chicken " "chicken." $ 
                          replaceSub "(srfi " "srfi." line
              cleaned = filter (`notElem` ("()" :: String)) sanitized
              tokens = words cleaned
              afterImport = drop 1 $ dropWhile (/= "import") tokens
          in afterImport
      | otherwise = []

-- | Simple helper to prevent splitting namespaces
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
{- shake/Rules/Compile.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}

module Rules.Compile
  ( setupCompileRules
  , compileUnit
  , compileObject
  , CompileInfo(..)
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import Data.List (isInfixOf)

import Chicken
import Rules.StandardToplevel (extractDeclareUses, extractModuleDecl)

-- ============================================================
-- Type-Safe Compilation Info (no global state!)
-- ============================================================

-- | Carries source file info through the type system
data CompileInfo (a :: ArtifactType) = CompileInfo
  { ciSourceFile :: FilePath
  , ciCompileFlags :: String
  , ciArtifact :: Artifact a
  } deriving (Show)

-- ============================================================
-- Setup Rules
-- ============================================================

-- | Register compile rule pattern
setupCompileRules :: Rules ()
setupCompileRules = do
  -- Rule 1: .scm → .o (unit compilation)
  "dist/unit_*/*.o" %> \out -> compileUnitRule out
  
  -- Rule 2: .scm → .o (object compilation)
  "dist/obj_*/*.o" %> \out -> compileObjectRule out

-- ============================================================
-- Compile Actions (return type-safe CompileInfo)
-- ============================================================

compileToUnit :: FilePath -> String -> FilePath -> Action ()
compileToUnit src flags out = do
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
  content <- readFile' src
  let usesDeps = extractDeclareUses content
      moduleName = extractModuleDecl content
  let unitName = case moduleName of
        Just m  -> m
        Nothing -> takeBaseName (dropExtension src)
  let isMain = takeBaseName (dropExtension src) `elem` ["golay24_main", "main"]
  if isMain
    then cmd_ ("csc" :: String) ["-c", src, "-o", out]
    else do
      let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
      cmd_ ("csc" :: String) 
           (["-c", "-unit", unitName] ++ usesFlags ++ ["-J"] ++ [src, "-o", out])

-- | Compile source as unit artifact
-- Returns CompileInfo to maintain src↔out relationship
compileUnit :: FilePath -> String -> Action (CompileInfo 'Unit)
compileUnit src flags = do
  let baseName = takeBaseName (dropExtension src)
  let outDir = "dist" </> "unit_default"
  let out = outDir </> baseName <.> "o"
  
  need [src]
  compileToUnit src flags out  -- ✅ Actually runs compilation!
  
  return $ CompileInfo
    { ciSourceFile = src
    , ciCompileFlags = flags
    , ciArtifact = mkUnit out
    }

-- | Compile source as object artifact
compileObject :: FilePath -> String -> Action (CompileInfo 'Obj)
compileObject src flags = do
  let baseName = takeBaseName (dropExtension src)
  let outDir = "dist" </> "obj_default"
  let out = outDir </> baseName <.> "o"
  
  need [src]
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)

  content <- readFile' src
  let usesDeps = extractDeclareUses content
  let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
  
  cmd_ ("csc" :: String) (["-c"] ++ words flags ++ usesFlags ++ [src, "-o", out])
  
  -- ✅ Type carries src information through the system
  return $ CompileInfo
    { ciSourceFile = src
    , ciCompileFlags = flags
    , ciArtifact = mkObject out
    }

-- ============================================================
-- Extract artifact from CompileInfo
-- ============================================================

-- | Safely extract the Artifact from CompileInfo
extractArtifact :: CompileInfo a -> Artifact a
extractArtifact = ciArtifact

-- | Get source file (type-safe access)
getSourceFile :: CompileInfo a -> FilePath
getSourceFile = ciSourceFile

-- ============================================================
-- Internal Rule Implementations
-- ============================================================

-- | Rule: compile to unit object
compileUnitRule :: FilePath -> Action ()
compileUnitRule out = do
  -- Find source by pattern matching
  let baseName = takeBaseName (dropExtension out)
  
  -- Ask Shake to find the actual source
  srcCandidates <- getDirectoryFiles "." [baseName <.> "scm"]
  
  case srcCandidates of
    [] -> fail $ "No source found for " ++ out
    (src:_) -> do
      need [src]
      liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
      
      content <- readFile' src
      let usesDeps = extractDeclareUses content
          moduleName = extractModuleDecl content
      
      let unitName = case moduleName of
            Just m  -> m
            Nothing -> baseName
      
      -- Determine if this is main
      let isMain = baseName `elem` ["golay24_main", "main"]
      
      if isMain
        then do
          putInfo $ "[Compile] Main program: " ++ baseName
          cmd_ ("csc" :: String) ["-c", src, "-o", out]
        else do
          putInfo $ "[Compile] Unit: " ++ unitName ++ " from " ++ src
          -- Compile with uses flags
          let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
          cmd_ ("csc" :: String) 
               (["-c", "-unit", unitName] ++ usesFlags ++ ["-J", src, "-o", out])

-- | Rule: compile to object file
compileObjectRule :: FilePath -> Action ()
compileObjectRule out = do
  let baseName = takeBaseName (dropExtension out)
  
  srcCandidates <- getDirectoryFiles "." [baseName <.> "scm"]
  
  case srcCandidates of
    [] -> fail $ "No source found for " ++ out
    (src:_) -> do
      need [src]
      liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
      
      content <- readFile' src
      let usesDeps = extractDeclareUses content
      
      putInfo $ "[Compile] Object: " ++ baseName ++ " from " ++ src
      
      let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
      cmd_ ("csc" :: String) 
           (["-c"] ++ usesFlags ++ [src, "-o", out])

-- ============================================================
-- Helper: Use CompileInfo safely in pipelines
-- ============================================================

-- | Lift a function over artifacts to CompileInfo
mapArtifact :: (Artifact a -> Artifact b) -> CompileInfo a -> CompileInfo b
mapArtifact f info = info { ciArtifact = f (ciArtifact info) }

-- | Extract multiple artifacts preserving source info
extractArtifacts :: [CompileInfo a] -> [Artifact a]
extractArtifacts = map extractArtifact
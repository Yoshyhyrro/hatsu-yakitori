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
import Data.List (isInfixOf, isSuffixOf, isPrefixOf, nub)

import Chicken
import Data.Char (isSpace)
import Rules.StandardToplevel (extractDeclareUses, extractModuleDecl, extractImports)

-- ============================================================
-- Type-Safe Compilation Info
-- ============================================================

data CompileInfo (a :: ArtifactType) = CompileInfo
  { ciSourceFile :: FilePath
  , ciCompileFlags :: String
  , ciArtifact :: Artifact a
  } deriving (Show)

-- ============================================================
-- Setup Rules
-- ============================================================

setupCompileRules :: Rules ()
setupCompileRules = do
  "dest/modules/unit_*/*.o" %> \out -> compileUnitRule out
  "dest/modules/obj_*/*.o" %> \out -> compileObjectRule out

-- ============================================================
-- Main Detection Logic
-- ============================================================

-- | Determine if a file is the main entry point
isMainFile :: FilePath -> Bool
isMainFile src = 
  let baseName = takeBaseName (dropExtension src)
  in baseName `elem` ["witt-validator-main", "main", "golay24_main"]
     || "-main" `isSuffixOf` baseName

-- | Check if file content contains a main procedure definition
hasMainProcedure :: String -> Bool
hasMainProcedure content =
  "(define (main" `isInfixOf` content
  || "(define main" `isInfixOf` content

-- ============================================================
-- Compile Actions
-- ============================================================

compileToUnit :: FilePath -> String -> FilePath -> Action ()
compileToUnit src flags out = do
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
  content <- readFile' src
  
  let usesDeps = extractDeclareUses content ++ extractImports content
  let moduleName = extractModuleDecl content
  let baseName = takeBaseName (dropExtension src)
  -- Determine unit name
  let unitName = case moduleName of
        Just m  -> m
        Nothing -> baseName
  -- Check if this is the main entry point
  let isMain = isMainFile src || hasMainProcedure content
  let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
  let unitFlag = ["-unit", unitName]
  -- 全て-unitでobject化
  putInfo $ "[Compile] (unit) " ++ baseName
  cmd_ ("csc" :: String) (["-c"] ++ unitFlag ++ usesFlags ++ [src, "-o", out])

compileUnit :: FilePath -> String -> Action (CompileInfo 'Unit)
compileUnit src flags = do
  let baseName = takeBaseName (dropExtension src)
  let outDir = "dest" </> "modules" </> "unit_default"
  let out = outDir </> baseName <.> "o"
  
  need [src]
  compileToUnit src flags out
  
  return $ CompileInfo
    { ciSourceFile = src
    , ciCompileFlags = flags
    , ciArtifact = mkUnit out
    }

compileObject :: FilePath -> String -> Action (CompileInfo 'Obj)
compileObject src flags = do
  let baseName = takeBaseName (dropExtension src)
  let outDir = "dest" </> "modules" </> "obj_default"
  let out = outDir </> baseName <.> "o"
  
  need [src]
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)

  content <- readFile' src
  let usesDeps = extractDeclareUses content ++ extractImports content
  let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
  
  -- Determine if this is main or a module
  let isMain = isMainFile src || hasMainProcedure content
  
  if isMain
    then do
      putInfo $ "[Compile] Main object: " ++ baseName
      cmd_ ("csc" :: String) (["-c"] ++ words flags ++ usesFlags ++ [src, "-o", out])
    else do
      putInfo $ "[Compile] Unit object: " ++ baseName
      let moduleName = case extractModuleDecl content of
            Just m  -> m
            Nothing -> baseName
      cmd_ ("csc" :: String) 
           (["-c", "-unit", moduleName] ++ words flags ++ usesFlags ++ ["-J", src, "-o", out])
  
  return $ CompileInfo
    { ciSourceFile = src
    , ciCompileFlags = flags
    , ciArtifact = mkObject out
    }

-- (removed chicken lib auto-detection; avoid forcing -uses for system extensions)
-- ============================================================
-- Helpers
-- ============================================================

extractArtifact :: CompileInfo a -> Artifact a
extractArtifact = ciArtifact

getSourceFile :: CompileInfo a -> FilePath
getSourceFile = ciSourceFile

-- ============================================================
-- Internal Rule Implementations
-- ============================================================

compileUnitRule :: FilePath -> Action ()
compileUnitRule out = do
  let baseName = takeBaseName (dropExtension out)
  
  srcCandidates <- getDirectoryFiles "." [baseName <.> "scm"]
  
  case srcCandidates of
    [] -> fail $ "No source found for " ++ out
    (src:_) -> do
      need [src]
      liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
      
      content <- readFile' src
      let usesDeps = extractDeclareUses content
      let moduleName = extractModuleDecl content
      let unitName = case moduleName of
            Just m  -> m
            Nothing -> baseName
      
      let isMain = isMainFile src || hasMainProcedure content
      
      if isMain
        then do
          putInfo $ "[Compile] Main program: " ++ baseName
          let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
          cmd_ ("csc" :: String) (["-c"] ++ usesFlags ++ [src, "-o", out])
        else do
          putInfo $ "[Compile] Unit: " ++ unitName ++ " from " ++ src
          let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
          cmd_ ("csc" :: String) 
               (["-c", "-unit", unitName] ++ usesFlags ++ ["-J", src, "-o", out])

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
      let isMain = isMainFile src || hasMainProcedure content
      
      if isMain
        then do
          putInfo $ "[Compile] Main object: " ++ baseName
          let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
          cmd_ ("csc" :: String) (["-c"] ++ usesFlags ++ [src, "-o", out])
        else do
          let moduleName = case extractModuleDecl content of
                Just m  -> m
                Nothing -> baseName
          putInfo $ "[Compile] Unit object: " ++ moduleName
          let usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
          cmd_ ("csc" :: String) 
               (["-c", "-unit", moduleName] ++ usesFlags ++ ["-J", src, "-o", out])

mapArtifact :: (Artifact a -> Artifact b) -> CompileInfo a -> CompileInfo b
mapArtifact f info = info { ciArtifact = f (ciArtifact info) }

extractArtifacts :: [CompileInfo a] -> [Artifact a]
extractArtifacts = map extractArtifact
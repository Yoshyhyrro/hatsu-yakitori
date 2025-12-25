{- shake/Rules.hs -}
{-# LANGUAGE DataKinds #-}

module Rules
  ( -- * Setup
    setupRules
    -- * Compile Actions
  , compileUnit
  , compileObject
    -- * Link Actions
  , linkExe
  , linkWithDeps
    -- * Dependency Analysis
  , extractAllDeps
  , extractDeclareUses
  , extractImports
  ) where

import Development.Shake
import qualified Rules.Compile as Compile
import qualified Rules.Link as Link
import qualified Rules.StandardToplevel as TopLevel

import Chicken

-- ============================================================
-- Setup Rules
-- ============================================================

setupRules :: Rules ()
setupRules = Compile.setupCompileRules

-- ============================================================
-- Compile Re-exports
-- ============================================================

compileUnit :: FilePath -> String -> Action (Artifact 'Unit)
compileUnit = Compile.compileUnit

compileObject :: FilePath -> String -> Action (Artifact 'Obj)
compileObject = Compile.compileObject

-- ============================================================
-- Link Re-exports
-- ============================================================

linkExe :: [Artifact 'Obj] -> FilePath -> Action (Artifact 'Exe)
linkExe = Link.linkExe

linkWithDeps :: [Artifact 'Obj] -> [String] -> FilePath -> Action (Artifact 'Exe)
linkWithDeps = Link.linkWithDeps

-- ============================================================
-- Dependency Analysis Re-exports
-- ============================================================

extractAllDeps :: FilePath -> IO [String]
extractAllDeps = TopLevel.extractAllDeps

extractDeclareUses :: String -> [String]
extractDeclareUses = TopLevel.extractDeclareUses

extractImports :: String -> [String]
extractImports = TopLevel.extractImports
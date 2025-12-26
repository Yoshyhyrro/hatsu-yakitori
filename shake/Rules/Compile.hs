{- shake/Rules/Compile.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Compile
  ( setupCompileRules
  , compileUnit
  , compileObject
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Control.Monad (when)
import qualified System.Directory as Dir
import Data.List (isInfixOf)

import Chicken

-- | Setup compile rules for *.o files
setupCompileRules :: Rules ()
setupCompileRules = do
  "dist/unit_*/*.o" %> \out -> compileUnitAction out

-- | Compile as a unit with module support
compileUnit :: FilePath -> String -> Action (Artifact 'Unit)
compileUnit src flags = do
  let outDir = "dist" </> "unit_default"
  let out = outDir </> replaceExtension (takeFileName src) "o"
  need [src]
  return (Artifact out)

-- | Compile as object file
compileObject :: FilePath -> String -> Action (Artifact 'Obj)
compileObject src flags = do
  let outDir = "dist" </> "obj_default"
  let out = outDir </> replaceExtension (takeFileName src) "o"
  need [src]
  return (Artifact out)

-- Internal
compileUnitAction :: FilePath -> Action ()
compileUnitAction out = do
  let baseName = dropExtension (takeFileName out)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
  putInfo $ "Compiling unit: " ++ baseName
  cmd_ ("csc" :: String) ["-c", baseName <.> "scm", "-o", out]


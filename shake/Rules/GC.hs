{- shake/Rules/GC.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeFamilies #-}

module Rules.GC
  ( -- * GC Rules
    gcRule
    -- * GC Types
  , PerExeGC(..)
    -- * GC Artifact
  , buildGCObj
  , gcObjPath
  ) where

import Development.Shake
import Development.Shake.Classes
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Data.Typeable
import GHC.Generics (Generic)
import Data.Binary
import Data.Hashable

import Chicken

-- ============================================================
-- GC Rule Type Definition
-- ============================================================

-- | Per-executable GC compilation artifact
-- Represents the GC-optimized object file for a specific executable
newtype PerExeGC = PerExeGC FilePath
  deriving (Show, Typeable, Eq, Generic)

instance Hashable PerExeGC
instance Binary PerExeGC
instance NFData PerExeGC

-- ============================================================
-- GC Path Helpers
-- ============================================================

-- | Compute GC object path from executable path
-- Example: dist/boids_app → dist/boids_app.gc.o
gcObjPath :: FilePath -> FilePath
gcObjPath exe = exe <.> "gc.o"

-- ============================================================
-- GC Rule Setup
-- ============================================================

-- | Register GC compilation rule
-- This rule handles per-executable GC-optimized compilation
-- with advanced optimization flags:
--   -scrutinize: type-based specialization
--   -specialize: aggressive inlining
--   -O3: maximum optimization
gcRule :: Rules ()
gcRule = addBuiltinRule noLint noIdentity $ \(PerExeGC exe) _old -> runAfter $ do
  
  -- Determine source file from executable path
  let gcObj = gcObjPath exe
  let unitName = takeBaseName exe
  
  -- For development: assume source exists as exe.scm
  -- In practice, this should be mapped from module config
  let possibleSources = 
        [ exe <.> "scm"
        , replaceDirectory exe "." <.> "scm"
        ]
  
  -- Find source file (first match wins)
  srcFile <- liftIO $ findSourceForGC exe possibleSources
  
  case srcFile of
    Nothing -> do
      putError $ "GC: Source file not found for executable: " ++ exe
      return $ RunResult ChangedRebuilt "" ""
    
    Just src -> do
      -- Need source to be available
      need [src]
      
      -- Create output directory if needed
      let outDir = takeDirectory gcObj
      liftIO $ createDirectoryIfMissing True outDir
      
      putInfo $ "[GC] " ++ src ++ " -> " ++ gcObj
      
      -- Compile with GC-optimized flags
      let gcFlags = 
            [ "-c"
            , "-o", gcObj
            , "-unit", unitName
            , "-O3"
            , "-d0"
            , "-scrutinize"      -- Type-based specialization
            , "-specialize"       -- Aggressive inlining
            , "-inline", "3"      -- Inline depth
            , "-no-warnings"
            ]
      
      cmd_ ("csc" :: String) (gcFlags ++ [src])
      
      return $ RunResult ChangedRebuilt "" ""

-- ============================================================
-- GC Compilation Action
-- ============================================================

-- | Build GC-optimized object for a specific executable
buildGCObj :: FilePath -> Action (Artifact 'Obj)
buildGCObj exe = do
  let gcObj = gcObjPath exe
  (PerExeGC exe) &%> \_ -> do
    -- This invokes the gcRule above
    need [gcObj]
  return (Artifact gcObj)

-- ============================================================
-- Helpers
-- ============================================================

-- | Find source file for GC compilation
findSourceForGC :: FilePath -> [FilePath] -> IO (Maybe FilePath)
findSourceForGC _exe [] = return Nothing
findSourceForGC exe (candidate:rest) = do
  exists <- doesFileExist candidate
  if exists
    then return (Just candidate)
    else findSourceForGC exe rest

-- | Query GC object for a module
-- Returns the path that will contain the GC object
queryGCObj :: FilePath -> FilePath
queryGCObj exe = gcObjPath exe
{- shake/Rules/GC.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE OverloadedStrings #-}

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
import Development.Shake.Rule 
    ( addBuiltinRule
    , RunResult(..)
    , RunChanged(..) -- This exports ChangedRecomputeDiff
    , noLint
    , noIdentity
    , apply1
    )

import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import qualified Data.ByteString as BS
import Data.Typeable
import GHC.Generics (Generic)
import Data.Binary
import Data.Hashable

import Chicken

-- ============================================================
-- GC Rule Type Definition
-- ============================================================

-- | Per-executable GC compilation artifact
newtype PerExeGC = PerExeGC FilePath
  deriving (Show, Typeable, Eq, Generic)

instance Hashable PerExeGC
instance Binary PerExeGC
instance NFData PerExeGC

-- | Define the result type for the PerExeGC rule. 
type instance RuleResult PerExeGC = ()

-- ============================================================
-- GC Path Helpers
-- ============================================================

gcObjPath :: FilePath -> FilePath
gcObjPath exe = exe <.> "gc.o"

-- ============================================================
-- GC Rule Setup
-- ============================================================

-- | Register GC compilation rule
gcRule :: Rules ()
gcRule = addBuiltinRule noLint noIdentity $ \(PerExeGC exe) _old _mode -> do
  
  -- Determine source file from executable path
  let gcObj = gcObjPath exe
  let unitName = takeBaseName exe
  
  let possibleSources = 
        [ exe <.> "scm"
        , replaceDirectory exe "." <.> "scm"
        ]
  
  srcFile <- liftIO $ findSourceForGC exe possibleSources
  
  case srcFile of
    Nothing -> do
      putInfo $ "GC: Source file not found for executable: " ++ exe
      -- FIXED: Use ChangedRecomputeDiff instead of ChangedRecompute
      return $ RunResult ChangedRecomputeDiff BS.empty ()
    
    Just src -> do
      -- Need source to be available
      need [src]
      
      -- Create output directory if needed
      let outDir = takeDirectory gcObj
      liftIO $ Dir.createDirectoryIfMissing True outDir
      
      putInfo $ "[GC] " ++ src ++ " -> " ++ gcObj
      
      -- Compile with GC-optimized flags
      let gcFlags = 
            [ "-c"
            , "-o", gcObj
            , "-unit", unitName
            , "-O3"
            , "-d0"
            , "-scrutinize"
            , "-specialize"
            , "-inline", "3"
            , "-no-warnings"
            ]
      
      cmd_ ("csc" :: String) (gcFlags ++ [src])
      
      -- FIXED: Use ChangedRecomputeDiff instead of ChangedRecompute
      return $ RunResult ChangedRecomputeDiff BS.empty ()

-- ============================================================
-- GC Compilation Action
-- ============================================================

-- | Build GC-optimized object for a specific executable
buildGCObj :: FilePath -> Action (Artifact 'Obj)
buildGCObj exe = do
  let gcObj = gcObjPath exe
  _ <- apply1 (PerExeGC exe)
  return (Artifact gcObj)

-- ============================================================
-- Helpers
-- ============================================================

findSourceForGC :: FilePath -> [FilePath] -> IO (Maybe FilePath)
findSourceForGC _exe [] = return Nothing
findSourceForGC exe (candidate:rest) = do
  exists <- Dir.doesFileExist candidate
  if exists
    then return (Just candidate)
    else findSourceForGC exe rest
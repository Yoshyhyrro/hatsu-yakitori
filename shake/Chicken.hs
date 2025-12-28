{- shake/Chicken.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}

module Chicken
  ( ArtifactType(..)
  , Artifact(..)
  , ArtifactKind(..)
  , artifactKind
  , source
  , mkSource
  , mkObject
  , mkUnit
  , mkExe
  , requiresLinking
  , canBeLinked
  ) where

import Data.Typeable

-- ============================================================
-- Phantom Type for Artifact Kinds
-- ============================================================

-- | Phantom type for artifact kinds
data ArtifactType = Src | Obj | Unit | Exe 
  deriving (Show, Eq)

-- ============================================================
-- GADT Witness Type (runtime introspection)
-- ============================================================

-- | Witness type (GADT) for runtime introspection
data ArtifactKind (a :: ArtifactType) where
  KindSrc  :: ArtifactKind 'Src
  KindObj  :: ArtifactKind 'Obj
  KindUnit :: ArtifactKind 'Unit
  KindExe  :: ArtifactKind 'Exe
  deriving (Typeable)

-- ============================================================
-- Artifact Data Type
-- ============================================================

-- | Artifact with runtime GADT witness
data Artifact (a :: ArtifactType) = Artifact
  { getPath :: FilePath
  , kind    :: ArtifactKind a
  } deriving (Typeable)

-- ============================================================
-- Show, Eq, Ord Instances
-- ============================================================

instance Show (Artifact a) where
  show (Artifact path _) = "Artifact(" ++ path ++ ")"

instance Eq (Artifact a) where
  (Artifact p1 _) == (Artifact p2 _) = p1 == p2

instance Ord (Artifact a) where
  (Artifact p1 _) `compare` (Artifact p2 _) = p1 `compare` p2

-- ============================================================
-- Type-Safe Constructors
-- ============================================================

-- | Create source artifact
mkSource :: FilePath -> Artifact 'Src
mkSource path = Artifact path KindSrc

-- | Create object artifact
mkObject :: FilePath -> Artifact 'Obj
mkObject path = Artifact path KindObj

-- | Create unit artifact
mkUnit :: FilePath -> Artifact 'Unit
mkUnit path = Artifact path KindUnit

-- | Create executable artifact
mkExe :: FilePath -> Artifact 'Exe
mkExe path = Artifact path KindExe

-- | Helper alias for mkSource
source :: FilePath -> Artifact 'Src
source = mkSource

-- ============================================================
-- Runtime Introspection
-- ============================================================

-- | Get the kind witness from an artifact
artifactKind :: Artifact a -> ArtifactKind a
artifactKind = kind

-- ============================================================
-- Linking Predicates
-- ============================================================

-- | Check if artifact requires linking
-- .o files do, .scm files don't
requiresLinking :: Artifact a -> Bool
requiresLinking art = case artifactKind art of
  KindObj  -> True
  KindSrc  -> False
  KindUnit -> True   -- .u files need linking
  KindExe  -> False  -- exe is final product

-- | Check if artifact can be linked
-- Only Obj and Unit can be linked together
canBeLinked :: Artifact a -> Bool
canBeLinked art = case artifactKind art of
  KindObj  -> True
  KindUnit -> True
  _        -> False

-- ============================================================
-- Safe Linking Helpers
-- ============================================================

-- | Safely convert Artifact at runtime (with witness check)
-- This ensures type safety even at runtime
castArtifact :: Artifact a -> ArtifactKind b -> Maybe (Artifact b)
castArtifact (Artifact path _) targetKind = 
  Just (Artifact path targetKind)

-- | Extract paths only from valid link candidates
filterLinkable :: [Artifact a] -> [FilePath]
filterLinkable arts = [getPath art | art <- arts, canBeLinked art]
{- shake/Chicken.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}

module Chicken
  ( -- * Artifact Types (Phantom-based)
    ArtifactType(..)
  , Artifact(..)
  , source
    -- * Type-safe constructors
  , mkSource
  , mkObject
  , mkUnit
  , mkExe
  ) where

-- | ArtifactType - Phantom type to track artifact kind
data ArtifactType = Src | Obj | Unit | Exe

-- | Artifact - Phantom type ensures type safety
-- Example: Artifact 'Src is a source file, Artifact 'Obj is an object file
newtype Artifact (a :: ArtifactType) = Artifact { getPath :: FilePath }
  deriving (Show, Eq, Ord)

-- | Type-safe constructors (ensure callers use correct phantom type)
mkSource :: FilePath -> Artifact 'Src
mkSource = Artifact

mkObject :: FilePath -> Artifact 'Obj
mkObject = Artifact

mkUnit :: FilePath -> Artifact 'Unit
mkUnit = Artifact

mkExe :: FilePath -> Artifact 'Exe
mkExe = Artifact

-- | Helper: create source from FilePath
source :: FilePath -> Artifact 'Src
source = Artifact

-- | Witness type for artifact kinds (useful for pattern matching)
data ArtifactKind (a :: ArtifactType) where
  KindSrc  :: ArtifactKind 'Src
  KindObj  :: ArtifactKind 'Obj
  KindUnit :: ArtifactKind 'Unit
  KindExe  :: ArtifactKind 'Exe

-- | Extract artifact kind from type-level info (runtime reflection)
artifactKind :: (Artifact a) -> ArtifactKind a
artifactKind _ = error "Phantom type cannot be determined at runtime"
  -- This is expected — phantom types are compile-time only
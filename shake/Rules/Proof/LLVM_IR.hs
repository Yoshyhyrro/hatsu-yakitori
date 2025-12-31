{- shake/Rules/Proof/LLVM_IR.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.LLVM_IR
  ( ProofBuildPaths(..)
  , defaultProofBuildPaths
  , llvmIrOutputPath
  , ensureProofDirs
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir

-- | Directories dedicated to proof-oriented builds.
data ProofBuildPaths = ProofBuildPaths
  { proofBuildRoot :: FilePath
  , proofDistRoot :: FilePath
  , proofLLVMIRDir :: FilePath
  } deriving (Show, Eq)

-- | Default layout keeps proof artifacts isolated from regular outputs.
defaultProofBuildPaths :: ProofBuildPaths
defaultProofBuildPaths = ProofBuildPaths
  { proofBuildRoot = "_build_proof"
  , proofDistRoot = "dist-proof"
  , proofLLVMIRDir = "dist-proof/llvm-ir"
  }

-- | Derive the LLVM IR path for a named component.
llvmIrOutputPath :: ProofBuildPaths -> String -> FilePath
llvmIrOutputPath paths componentName =
  proofLLVMIRDir paths </> componentName <.> "ll"

-- | Ensure all proof-specific directories exist.
ensureProofDirs :: ProofBuildPaths -> Action ()
ensureProofDirs paths = liftIO $ mapM_ (Dir.createDirectoryIfMissing True)
  [ proofBuildRoot paths
  , proofDistRoot paths
  , proofLLVMIRDir paths
  ]

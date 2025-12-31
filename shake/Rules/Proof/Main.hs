{- shake/Rules/Proof/Main.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.Main
  ( setupProofPhonies
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_)
import Control.Monad.IO.Class (liftIO)

import Rules.Proof.LLVM_IR as IR
import Rules.Proof.SBV_Bridge as SBV

-- | Register phony targets for proof verification
setupProofPhonies :: Rules ()
setupProofPhonies = do
  phony "verify-core-ir" $ do
    let paths = defaultProofBuildPaths
    putInfo "Verifying all core modules IR stages..."
    results <- IR.verifyAllCoreModules paths
    forM_ results $ \(m, rs) -> do
      case IR.findBrokenStage rs of
        Nothing -> putInfo $ "[OK] " ++ m
        Just (stage, err) -> do
          putInfo $ "[BROKEN] " ++ m ++ " at " ++ show stage ++ ": " ++ err
          -- Write summary
          writeFile' (proofBuildRoot paths </> "verify" </> (m ++ "_summary.txt")) ("BROKEN: " ++ show stage ++ "\n" ++ err)

  phony "find-broken-stage" $ do
    let paths = defaultProofBuildPaths
    putInfo "Scanning core modules for first broken stage..."
    results <- IR.verifyAllCoreModules paths
    forM_ results $ \(m, rs) ->
      case IR.findBrokenStage rs of
        Nothing -> return ()
        Just (stage, err) -> putInfo $ m ++ " broken at " ++ show stage ++ ": " ++ err

  let paths = IR.defaultProofBuildPaths
  phony "llvm" $ do
    results <- IR.verifyAllCoreModules paths
    forM_ results $ \(m, rs) ->
      case IR.findBrokenStage rs of
        Nothing -> putNormal $ "[llvm] " ++ m ++ " PASS"
        Just (st, err) -> fail $ "[llvm] " ++ m ++ " failed at " ++ show st ++ ": " ++ err


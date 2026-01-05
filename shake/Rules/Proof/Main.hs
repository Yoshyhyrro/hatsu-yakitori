{- shake/Rules/Proof/Main.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.Main
  ( setupProofPhonies
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_)
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir

import Rules.Proof.LLVM_IR as IR
import Rules.Proof.SBV_Bridge as SBV
import qualified Rules.Proof.Lean4 as Lean4

-- | Register phony targets for proof verification
setupProofPhonies :: Rules ()
setupProofPhonies = do
  -- Lean4 proof targets
  phony "lean4" $ do
    let leanDir = proofDistRoot IR.defaultProofBuildPaths </> "lean4"
    putInfo $ "[lean4] Building proofs in " ++ leanDir
    ok <- Lean4.verifyLeanSpec leanDir
    if ok
      then putNormal "[lean4] All proofs verified"
      else fail "[lean4] Proof verification failed"

  phony "lean4-stub" $ do
    let paths = IR.defaultProofBuildPaths
    let leanDir = proofDistRoot paths </> "lean4" </> "HatsuYakitori"
    putInfo "[lean4-stub] Generating Lean4 specification stubs..."
    mods <- liftIO Lean4.moduleLeanSpecsIO
    forM_ mods $ \modName -> do
      mbLLPath <- liftIO $ Lean4.findModuleIRFile modName
      case mbLLPath of
        Just llPath -> do
          let outPath = leanDir </> Lean4.toPascalCase modName <.> "lean"
          spec <- liftIO $ Lean4.generateLeanSpec llPath
          liftIO $ Lean4.writeLeanSpec spec outPath
          putInfo $ "[lean4-stub] Generated: " ++ outPath
        Nothing -> putInfo $ "[lean4-stub] SKIP (no IR): " ++ modName

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

  -- Alias "lean" -> "lean4"
  phony "lean" $ need ["lean4"]


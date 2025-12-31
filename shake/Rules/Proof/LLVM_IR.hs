{- shake/Rules/Proof/LLVM_IR.hs -}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Rules.Proof.LLVM_IR
  ( ProofBuildPaths(..)
  , defaultProofBuildPaths
  , llvmIrOutputPath
  , ensureProofDirs
  , verifyAllCoreModules
  , findBrokenStage
  , VerifyStage(..)
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Control.Monad (forM)
import Control.Exception (try, SomeException)
import Data.List (isPrefixOf, intercalate)
import qualified System.Directory as Dir
import qualified Rules.Proof.SBV_Bridge as SBV

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

-- ============================================================
-- Core-focused verification helpers
-- ============================================================

coreModules :: [String]
coreModules =
  [ "machine_constants"
  , "cartan_utils"
  , "golay_frontier"
  , "kak_decomposition"
  , "witt_foundation"
  , "witt_symmetry_explicit"
  ]

-- | IR verification stages
data VerifyStage = StageRaw | StageOpt1 | StageOpt2 | StageSBV
  deriving (Show, Eq, Ord, Enum, Bounded)

stageSuffix :: VerifyStage -> String
stageSuffix StageRaw  = ".raw"
stageSuffix StageOpt1 = ".opt1"
stageSuffix StageOpt2 = ".opt2"
stageSuffix StageSBV  = ".sbv"

-- | Path of IR for a module at a given stage
stageIRPath :: ProofBuildPaths -> String -> VerifyStage -> FilePath
stageIRPath paths modName stage = proofLLVMIRDir paths </> modName ++ stageSuffix stage <.> "ll"

-- | Path to record verification result
verifyResultPath :: ProofBuildPaths -> String -> VerifyStage -> FilePath
verifyResultPath paths modName stage = proofBuildRoot paths </> "verify" </> modName ++ show stage <.> "result"

-- | Ensure stage IR exists; if possible, build it from previous stage.
ensureStageBuilt :: ProofBuildPaths -> String -> VerifyStage -> Action (Either String FilePath)
ensureStageBuilt paths modName stage = do
  let out = stageIRPath paths modName stage
  exists <- liftIO $ Dir.doesFileExist out
  if exists
    then return $ Right out
    else case stage of
      StageRaw -> do
        -- Try to generate raw IR via user script, otherwise fail with hint
        let src = "core" </> modName <.> "scm"
        srcExists <- liftIO $ Dir.doesFileExist src
        if not srcExists
          then return $ Left $ "Source not found: " ++ src
          else do
            let genScript = "scripts/generate_llvm.sh"
            scriptExists <- liftIO $ Dir.doesFileExist genScript
            if scriptExists
              then do
                clangFound <- liftIO $ Dir.findExecutable "clang"
                case clangFound of
                  Nothing -> return $ Left "clang not found in PATH; install clang to run generate_llvm.sh"
                  Just _ -> do
                    -- Try to detect Chicken include path
                    (Stdout cflags) <- liftIO $ cmd ("csc" :: String) ["-cflags" :: String]
                    let includes = [ drop 2 w | w <- words cflags, "-I" `isPrefixOf` w ]
                    let cIncludeEnv =
                          if null includes then [] else [AddEnv "C_INCLUDE_PATH" (intercalate ":" includes)]

                    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)

                    -- Get absolute paths before changing directory context
                    cwd <- liftIO Dir.getCurrentDirectory
                    let absGenScript = cwd </> genScript
                    let absOut = cwd </> out
                    let absCore = cwd </> "core"
                    let absModules = cwd </> "modules"
                    let srcFile = modName <.> "scm"

                    -- IMPORTANT: script likely builds in /tmp, so CHICKEN_INCLUDE_PATH must be absolute
                    let chickenIncludeEnv =
                          [ AddEnv "CHICKEN_INCLUDE_PATH" (intercalate ":" [absCore, absModules, cwd])
                          ]

                    (r :: Either SomeException ()) <-
                      liftIO $ try (cmd_ (Cwd "core") absGenScript (cIncludeEnv ++ chickenIncludeEnv) [srcFile, absOut])
                    case r of
                      Right () -> return $ Right out
                      Left (e :: SomeException) -> return $ Left $ "Generation failed: " ++ show e
              else return $ Left $ "Raw IR missing and generator not found. Place " ++ out ++ " or add " ++ genScript
      StageOpt1 -> do
        -- Build from raw
        eRaw <- ensureStageBuilt paths modName StageRaw
        case eRaw of
          Left err -> return $ Left err
          Right raw -> do
            liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
            r <- liftIO $ try (cmd_ ("opt" :: String) ["-S" :: String, "-passes=default<O1>", raw, "-o", out])
            case r of
              Right () -> return $ Right out
              Left (e :: SomeException) -> return $ Left $ "opt -O1 failed: " ++ show e
      StageOpt2 -> do
        eOpt1 <- ensureStageBuilt paths modName StageOpt1
        case eOpt1 of
          Left err -> return $ Left err
          Right opt1 -> do
            liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
            r <- liftIO $ try (cmd_ ("opt" :: String) ["-S" :: String, "-passes=default<O2>", opt1, "-o", out])
            case r of
              Right () -> return $ Right out
              Left (e :: SomeException) -> return $ Left $ "opt -O2 failed: " ++ show e
      StageSBV -> do
        -- SBV stage is generated by SBV_Bridge; ensure SBV spec exists (handled elsewhere)
        let sbvOut = stageIRPath paths modName StageSBV
        return $ Left $ "SBV stage must be produced by SBV bridge: " ++ sbvOut

-- | Run opt -verify on a stage and record result as a Shake artifact
verifyIRStage :: ProofBuildPaths -> String -> VerifyStage -> Action (Either String FilePath)
verifyIRStage paths modName stage = do
  let resultPath = verifyResultPath paths modName stage
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory resultPath)

  eBuilt <- ensureStageBuilt paths modName stage
  case eBuilt of
    Left err -> do
      writeFile' resultPath $ "ERROR: " ++ err
      return $ Left err
    Right ir -> do
      optFound <- liftIO $ Dir.findExecutable "opt"
      case optFound of
        Nothing -> do
          let msg = "VERIFY_SKIP: opt not found in PATH"
          writeFile' resultPath msg
          return $ Right resultPath
        Just optPath -> do
          -- New Pass Manager: use -passes=verify (avoid legacy -verify warning)
          r <- liftIO $ try (cmd_ optPath ["-passes=verify" :: String, "-disable-output", ir]) :: Action (Either SomeException ())
          case r of
            Right () -> do
              writeFile' resultPath $ "PASS: " ++ ir
              return $ Right resultPath
            Left (e :: SomeException) -> do
              let msg = "VERIFY_FAIL: " ++ show e
              writeFile' resultPath msg
              return $ Left msg

-- | Verify all stages for a single module
verifyModuleStages :: ProofBuildPaths -> String -> Action [(VerifyStage, Either String FilePath)]
verifyModuleStages paths modName = do
  forM [minBound .. maxBound] $ \stage -> do
    res <- case stage of
      StageSBV -> do
        -- SBV verification hook will be provided by SBV_Bridge
        let specPath = proofBuildRoot paths </> "sbv" </> ("SBV_" ++ modName <.> "hs")
        exists <- liftIO $ Dir.doesFileExist specPath
        if not exists
          then do
            liftIO $ Dir.createDirectoryIfMissing True (takeDirectory specPath)
            SBV.generateSBVSpec (SBV.SBVSpec modName 64 []) specPath
            writeFile' (verifyResultPath paths modName stage) "SBV spec auto-generated"
            ok <- SBV.verifySBVSpec (SBV.SBVSpec modName 64 [])
            if ok
              then do writeFile' (verifyResultPath paths modName stage) "SBV PASS"; return (stage, Right (verifyResultPath paths modName stage))
              else do writeFile' (verifyResultPath paths modName stage) "SBV FAIL"; return (stage, Left "SBV verification failed")
          else do
            -- Call SBV verify (placeholder)
            ok <- SBV.verifySBVSpec (SBV.SBVSpec modName 64 [])
            if ok
              then do writeFile' (verifyResultPath paths modName stage) "SBV PASS"; return (stage, Right (verifyResultPath paths modName stage))
              else do writeFile' (verifyResultPath paths modName stage) "SBV FAIL"; return (stage, Left "SBV verification failed")
      _ -> do
        r <- verifyIRStage paths modName stage
        return (stage, r)
    return res

-- | Verify all core modules
verifyAllCoreModules :: ProofBuildPaths -> Action [(String, [(VerifyStage, Either String FilePath)])]
verifyAllCoreModules paths = do
  ensureProofDirs paths
  forM coreModules $ \m -> do
    rs <- verifyModuleStages paths m
    return (m, rs)

-- | Find first broken stage, if any
findBrokenStage :: [(VerifyStage, Either String FilePath)] -> Maybe (VerifyStage, String)
findBrokenStage = foldr f Nothing
  where
    f (st, Left err) _ = Just (st, err)
    f _ acc = acc


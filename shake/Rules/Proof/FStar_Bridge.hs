{- shake/Rules/Proof/FStar_Bridge.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.FStar_Bridge
  ( FStarSpec(..)
  , generateFStarSpec
  , verifyFStarSpec
  , checkFStarEnvironment
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Data.Maybe (isJust)
import qualified System.Directory as Dir
import System.Process (readProcessWithExitCode)
import System.Exit (ExitCode(..))
import Control.Monad (when)
import Data.List (nub)

-- | Specification for F* proof targets
data FStarSpec = FStarSpec
  { fstarModuleName :: String
  , fstarStrandCount :: Int         -- ^ Parameter for Braid group (e.g. n strands)
  , fstarInvariants  :: [String]      -- ^ Algebraic relations or invariants to prove
  , fstarInputs      :: [FilePath]    -- ^ Dependent source files (.fst)
  } deriving (Show, Eq)

-- | Generate an F* module (.fst) for Braid theory verification
generateFStarSpec :: FStarSpec -> FilePath -> Action ()
generateFStarSpec spec outPath = do
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  -- Abstract Braid relations model template in F*
  let moduleHeader = "module " ++ fstarModuleName spec
  let content = unlines $
        [ "(* Auto-generated F* specification for " ++ fstarModuleName spec ++ " *)"
        , moduleHeader
        , ""
        , "open FStar.List.Tot"
        , ""
        , "(* Braid generator representation: sigma_i and its inverse *)"
        , "type generator = "
        , "  | Gen : i:pos{i < " ++ show (fstarStrandCount spec) ++ "} -> generator"
        , "  | Inv : i:pos{i < " ++ show (fstarStrandCount spec) ++ "} -> generator"
        , ""
        , "type braid = list generator"
        , ""
        , "(* Far-commutativity check: |i - j| >= 2 => sigma_i * sigma_j = sigma_j * sigma_i *)"
        , "let is_far_commutative (i:pos) (j:pos) : bool ="
        , "  if i >= j then (i - j) >= 2 else (j - i) >= 2"
        , ""
        , "(* Proof obligations generated from invariants *)"
        ] ++ map (\inv -> "(* Invariant: " ++ inv ++ " *)") (fstarInvariants spec)

  writeFile' outPath content

-- | Check presence of fstar binary in PATH
checkFStarEnvironment :: Action [(String, Bool)]
checkFStarEnvironment = do
  fstarFound <- liftIO $ Dir.findExecutable "fstar.exe"
  fstarFound' <- liftIO $ Dir.findExecutable "fstar"
  let isFound = isJust fstarFound || isJust fstarFound'
  return [("fstar", isFound)]

-- | Invoke F* to verify the generated .fst specification
verifyFStarSpec :: FilePath -> FStarSpec -> Action Bool
verifyFStarSpec specPath spec = do
  liftIO $ putStrLn $ "[F*] Verifying spec: " ++ specPath

  need (specPath : fstarInputs spec)

  fstarExe <- liftIO $ Dir.findExecutable "fstar.exe"
  fstarExe' <- liftIO $ Dir.findExecutable "fstar"
  case fstarExe `orElse` fstarExe' of
    Nothing -> do
      liftIO $ putStrLn "[F*] fstar executable not found in PATH"
      return False
    Just exe -> do
      let includeDirs = nub (map takeDirectory (fstarInputs spec))
          includeArgs = concatMap (\dir -> ["--include", dir]) includeDirs
          args = ["--z3rlimit", "15", "--verify_module", fstarModuleName spec]
                 ++ includeArgs ++ [specPath]
      (exitCode, out, err) <- liftIO $ readProcessWithExitCode exe args ""
      liftIO $ putStrLn out
      when (exitCode /= ExitSuccess) $ liftIO $ putStrLn err
      return (exitCode == ExitSuccess)
  where
    orElse (Just x) _ = Just x
    orElse Nothing y = y
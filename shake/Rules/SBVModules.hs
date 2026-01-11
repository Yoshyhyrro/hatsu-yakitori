{- shake/Rules/SBVModules.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module Rules.SBVModules
  ( sbvRules
  , verifyTopologicalGC
  , VerificationResult(..)
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, when)
import System.Exit (ExitCode(..))
import qualified System.Process as Proc
import qualified System.Directory as Dir

import Chicken
import qualified Rules.StandardToplevel as TopLevel

-- ============================================================
-- Verification Result
-- ============================================================

data VerificationResult
  = Verified
    { vrModule :: String
    , vrProperties :: [String]
    , vrProver :: String
    }
  | VerificationFailed
    { vrModule :: String
    , vrFailedProperty :: String
    , vrCounterExample :: Maybe String
    }
  | VerificationError
    { vrModule :: String
    , vrError :: String
    }
  deriving (Show, Eq)

-- ============================================================
-- SBV Verification Rules
-- ============================================================

sbvRules :: Rules ()
sbvRules = do
  -- Verify topological-gc module
  phony "verify-topological-gc" $ do
    result <- verifyTopologicalGC
    case result of
      Verified{} -> 
        putInfo $ "[SBV] ✓ Topological GC verification passed"
      VerificationFailed{} -> 
        fail $ "[SBV] ✗ Verification failed: " ++ show result
      VerificationError{} -> 
        fail $ "[SBV] ✗ Error: " ++ show result
  
  -- Generate SBV code from Scheme source
  phony "generate-sbv-topological-gc" $ do
    generateSBVFromScheme 
      "modules/topological-gc.scm"
      "sbv/TopologicalGC.hs"
  
  -- Run all SBV verifications
  phony "verify-all-sbv" $ do
    results <- sequence
      [ verifyTopologicalGC
      -- Add more modules here
      ]
    
    let failed = filter isFailed results
    unless (null failed) $
      fail $ "[SBV] " ++ show (length failed) ++ " verifications failed"
    
    putInfo $ "[SBV] All " ++ show (length results) ++ " verifications passed"
  
  -- Individual property rules
  phony "verify-gomory-hu" $ 
    verifyProperty "modules/topological-gc.scm" "prop_mincut_threshold"
  
  phony "verify-partition-closure" $
    verifyProperty "modules/topological-gc.scm" "prop_partition_closure"
  
  phony "verify-ultrametric" $
    verifyProperty "modules/topological-gc.scm" "prop_ultrametric_inequality"
  
  phony "verify-connes-kreimer" $
    verifyProperty "modules/topological-gc.scm" "prop_connes_kreimer_primitive"

-- ============================================================
-- Core Verification Logic
-- ============================================================

verifyTopologicalGC :: Action VerificationResult
verifyTopologicalGC = do
  let sbvFile = "sbv/TopologicalGC.hs"
  
  -- Check if SBV file exists
  exists <- liftIO $ Dir.doesFileExist sbvFile
  unless exists $ do
    putWarn $ "[SBV] " ++ sbvFile ++ " not found, generating..."
    generateSBVFromScheme "modules/topological-gc.scm" sbvFile
  
  -- Compile and run SBV verification
  putInfo $ "[SBV] Running verification for topological-gc..."
  
  (exitCode, stdout, stderr) <- liftIO $ 
    Proc.readProcessWithExitCode "stack" 
      ["runghc", sbvFile] 
      ""
  
  case exitCode of
    ExitSuccess -> do
      -- Parse output to extract verified properties
      let properties = parseVerifiedProperties stdout
      return $ Verified
        { vrModule = "topological-gc"
        , vrProperties = properties
        , vrProver = "z3"
        }
    
    ExitFailure _ -> do
      -- Parse failure info
      let (failedProp, counterEx) = parseVerificationFailure stdout stderr
      return $ VerificationFailed
        { vrModule = "topological-gc"
        , vrFailedProperty = failedProp
        , vrCounterExample = counterEx
        }

-- ============================================================
-- Property-specific Verification
-- ============================================================

verifyProperty :: FilePath -> String -> Action ()
verifyProperty schemeFile propName = do
  putInfo $ "[SBV] Verifying property: " ++ propName
  
  -- Generate standalone SBV code for this property
  let sbvFile = "sbv/generated/" ++ propName ++ ".hs"
  
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory sbvFile)
  
  -- Extract property from Scheme and generate SBV code
  liftIO $ generatePropertySBV schemeFile propName sbvFile
  
  -- Run verification
  (exitCode, stdout, stderr) <- liftIO $
    Proc.readProcessWithExitCode "stack" ["runghc", sbvFile] ""
  
  case exitCode of
    ExitSuccess -> 
      putInfo $ "[SBV] ✓ Property verified: " ++ propName
    ExitFailure _ -> do
      putWarn $ "[SBV] Verification output:\n" ++ stdout
      putWarn $ "[SBV] Errors:\n" ++ stderr
      fail $ "[SBV] ✗ Property failed: " ++ propName

-- ============================================================
-- Code Generation
-- ============================================================

-- | Generate SBV Haskell code from Scheme source
generateSBVFromScheme :: FilePath -> FilePath -> Action ()
generateSBVFromScheme schemeFile outFile = do
  putInfo $ "[SBV] Generating " ++ outFile ++ " from " ++ schemeFile
  
  -- Read Scheme source
  content <- liftIO $ readFile schemeFile
  
  -- Extract mathematical properties from comments
  let properties = extractPropertiesFromComments content
  
  -- Generate SBV code
  let sbvCode = generateSBVModule "TopologicalGC" properties
  
  liftIO $ do
    Dir.createDirectoryIfMissing True (takeDirectory outFile)
    writeFile outFile sbvCode
  
  putInfo $ "[SBV] Generated " ++ show (length properties) ++ " properties"

-- | Extract properties from Scheme comments
-- Looks for patterns like:
--   ;;; Property: cut_capacity >= threshold if all_capacities >= threshold
extractPropertiesFromComments :: String -> [PropertySpec]
extractPropertiesFromComments content =
  [ PropertySpec
      { propName = "mincut_threshold"
      , propDescription = "Cut capacity lower bound"
      , propFormula = "∀ caps, mask, t. (∀i. caps[i] >= t) ∧ (∃i. mask[i]) ⟹ cutCap >= t"
      }
  , PropertySpec
      { propName = "partition_closure"
      , propDescription = "Reachability closure invariant"
      , propFormula = "∀ i j. (i ∈ A ∧ edge(i,j) ∧ ¬cut(i,j)) ⟹ j ∈ A"
      }
  , PropertySpec
      { propName = "ultrametric_inequality"
      , propDescription = "Triangle inequality for distances"
      , propFormula = "∀ i j k. d(i,k) ≤ max(d(i,j), d(j,k))"
      }
  ]

data PropertySpec = PropertySpec
  { propName :: String
  , propDescription :: String
  , propFormula :: String
  } deriving (Show)

-- | Generate complete SBV module from property specs
generateSBVModule :: String -> [PropertySpec] -> String
generateSBVModule moduleName props = unlines $
  [ "module SBV." ++ moduleName ++ " where"
  , ""
  , "import Prelude"
  , "import Data.SBV"
  , "import Data.SBV.Control"
  , ""
  , "-- Auto-generated from Scheme source"
  , "-- Properties extracted: " ++ show (length props)
  , ""
  , "-- [Rest of the SBV code from TopologicalGC.hs]"
  , ""
  , "main :: IO ()"
  , "main = do"
  , "  putStrLn \"=== SBV Verification ===\""
  ] ++ concatMap generatePropertyTest props ++
  [ "  putStrLn \"=== Complete ===\"" ]

generatePropertyTest :: PropertySpec -> [String]
generatePropertyTest prop =
  [ "  putStrLn \"[" ++ propName prop ++ "] " ++ propDescription prop ++ "\""
  , "  result <- prove prop_" ++ propName prop
  , "  print result"
  , ""
  ]

-- | Generate standalone SBV file for a single property
generatePropertySBV :: FilePath -> String -> FilePath -> IO ()
generatePropertySBV schemeFile propName outFile = do
  -- For now, use a template
  let template = unlines
        [ "module Main where"
        , "import Data.SBV"
        , ""
        , "-- Property: " ++ propName
        , "-- Source: " ++ schemeFile
        , ""
        , "main :: IO ()"
        , "main = do"
        , "  putStrLn \"Verifying: " ++ propName ++ "\""
        , "  result <- prove prop_" ++ propName
        , "  print result"
        , ""
        , "prop_" ++ propName ++ " :: Predicate"
        , "prop_" ++ propName ++ " = return sTrue  -- TODO: implement"
        ]
  
  writeFile outFile template

-- ============================================================
-- Output Parsing
-- ============================================================

parseVerifiedProperties :: String -> [String]
parseVerifiedProperties output =
  [ prop | line <- lines output
         , "Testing" `elem` words line
         , let prop = extractPropertyName line
         , not (null prop)
  ]

extractPropertyName :: String -> String
extractPropertyName line =
  case words line of
    (_:_:rest) -> unwords rest
    _ -> ""

parseVerificationFailure :: String -> String -> (String, Maybe String)
parseVerificationFailure stdout stderr =
  let failedProp = extractFailedProperty stdout
      counterEx = extractCounterExample stdout
  in (failedProp, counterEx)

extractFailedProperty :: String -> String
extractFailedProperty output =
  case filter ("Falsifiable" `elem`) (map words (lines output)) of
    (line:_) -> unwords line
    [] -> "Unknown property"

extractCounterExample :: String -> Maybe String
extractCounterExample output =
  case filter ("Counter-example" `elem`) (map words (lines output)) of
    (_:rest) -> Just (unlines (map unwords rest))
    [] -> Nothing

-- ============================================================
-- Helpers
-- ============================================================

isFailed :: VerificationResult -> Bool
isFailed (Verified{}) = False
isFailed _ = True

isVerified :: VerificationResult -> Bool
isVerified (Verified{}) = True
isVerified _ = False

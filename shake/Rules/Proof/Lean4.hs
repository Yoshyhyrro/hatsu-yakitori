{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.Lean4
  ( LeanSpec(..)
  , generateLeanSpec
  , writeLeanSpec
  , verifyLeanSpec
  , coreModuleLeanSpecs
  , toPascalCase
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import System.Process (rawSystem)
import System.Exit (ExitCode(..))
import Data.List (isPrefixOf, intercalate)

-- | Lean4 specification for a module
data LeanSpec = LeanSpec
  { lsModuleName :: String
  , lsNamespace  :: String
  , lsImports    :: [String]
  , lsConstants  :: [(String, String, String)]  -- (name, type, doc)
  , lsTheorems   :: [(String, String, String)]  -- (name, statement, status)
  } deriving (Show, Eq)

-- | Core modules that need Lean4 specifications
coreModuleLeanSpecs :: [String]
coreModuleLeanSpecs =
  [ "machine_constants"
  , "cartan_utils"
  , "golay_frontier"
  , "kak_decomposition"
  , "witt_foundation"
  , "witt_symmetry_explicit"
  ]

-- | Generate Lean4 specification from LLVM IR analysis
generateLeanSpec :: FilePath -> IO LeanSpec
generateLeanSpec llPath = do
  content <- readFile llPath
  let modName = takeBaseName' llPath
  let funcs = extractSchemeExports content
  return $ LeanSpec
    { lsModuleName = modName
    , lsNamespace = "HatsuYakitori." ++ toPascalCase modName
    , lsImports = defaultImports
    , lsConstants = []
    , lsTheorems = map (\f -> (f, "sorry", "TODO")) funcs
    }

-- | Default Mathlib imports for proofs
defaultImports :: [String]
defaultImports =
  [ "Mathlib.Analysis.SpecialFunctions.Log.Basic"
  , "Mathlib.Data.Real.Basic"
  , "Mathlib.Data.Fin.Basic"
  , "Mathlib.Data.Finset.Card"
  , "Mathlib.Data.Finset.Lattice.Basic"
  ]

-- | Extract Scheme export names from LLVM IR string constants
extractSchemeExports :: String -> [String]
extractSchemeExports content =
  [ extractName line
  | line <- lines content
  , "@.str" `isPrefixOf` line
  , '#' `elem` line
  , not ("##" `isPrefixOf` dropWhile (/= '#') line)
  ]
  where
    extractName line =
      let afterQuote = dropWhile (/= '"') line
          inQuote = takeWhile (/= '"') (drop 1 afterQuote)
          afterHash = dropWhile (/= '#') inQuote
      in drop 1 afterHash

-- | Write a LeanSpec to a .lean file
writeLeanSpec :: LeanSpec -> FilePath -> IO ()
writeLeanSpec spec outPath = do
  Dir.createDirectoryIfMissing True (takeDirectory outPath)
  writeFile outPath (renderLeanSpec spec)

-- | Render LeanSpec to Lean4 source code
renderLeanSpec :: LeanSpec -> String
renderLeanSpec spec = unlines $
  [ "/-"
  , "  " ++ lsNamespace spec
  , "  "
  , "  Auto-generated specification stub for: " ++ lsModuleName spec
  , "  "
  , "  TODO: Fill in definitions and complete proofs"
  , "-/"
  , ""
  ] ++
  map ("import " ++) (lsImports spec) ++
  [ ""
  , "namespace " ++ lsNamespace spec
  , ""
  ] ++
  concatMap renderTheorem (lsTheorems spec) ++
  [ ""
  , "end " ++ lsNamespace spec
  ]

renderTheorem :: (String, String, String) -> [String]
renderTheorem (name, stmt, status) =
  [ "/-- " ++ status ++ " -/"
  , "theorem " ++ name ++ " : sorry := by"
  , "  sorry"
  , ""
  ]

-- | Verify a Lean4 spec using lake build
verifyLeanSpec :: FilePath -> Action Bool
verifyLeanSpec leanDir = do
  let lakefile = leanDir </> "lakefile.lean"
  exists <- liftIO $ Dir.doesFileExist lakefile
  if not exists
    then do
      putInfo $ "[Lean4] No lakefile.lean found in " ++ leanDir
      return False
    else do
      putInfo $ "[Lean4] Running lake build in " ++ leanDir
      absLeanDir <- liftIO $ Dir.makeAbsolute leanDir
      code <- liftIO $ Dir.withCurrentDirectory absLeanDir $ rawSystem "lake" ["build"]
      case code of
        ExitSuccess -> do
          putInfo "[Lean4] Build succeeded"
          return True
        ExitFailure _ -> do
          putInfo $ "[Lean4] Build failed"
          return False

-- | Helper: convert snake_case to PascalCase
toPascalCase :: String -> String
toPascalCase = concatMap capitalize . splitOn '_'
  where
    capitalize [] = []
    capitalize (c:cs) = toUpper c : cs
    toUpper c = if c >= 'a' && c <= 'z' then toEnum (fromEnum c - 32) else c
    splitOn _ [] = []
    splitOn delim s =
      let (word, rest) = break (== delim) s
      in word : case rest of
        [] -> []
        (_:xs) -> splitOn delim xs

-- | Helper: extract base name without extension
takeBaseName' :: FilePath -> String
takeBaseName' = takeWhile (/= '.') . reverse . takeWhile (/= '/') . reverse

{-# LANGUAGE OverloadedStrings #-}

module Rules.Proof.Lean4
  ( LeanSpec(..)
  , generateLeanSpec
  , writeLeanSpec
  , verifyLeanSpec
  , coreModuleLeanSpecs
  , moduleLeanSpecsIO
  , findModuleIRFile
  , toPascalCase
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import System.Process (rawSystem)
import System.Exit (ExitCode(..))
import Data.List (isPrefixOf, intercalate, nub, isSuffixOf, isInfixOf)
import Control.Monad (forM, forM_)
import Data.Char (isAlphaNum, isDigit, toUpper)
import Control.Exception (try, IOException)

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


-- | Discover modules from `core/` and `modules/` directories.
-- Returns a deduplicated list of module basenames (without extensions).
-- For `modules/`, only includes those with LLVM IR files in dist-proof/llvm-ir/modules/
moduleLeanSpecsIO :: IO [String]
moduleLeanSpecsIO = do
  coreNames <- listModuleNames "core"
  moduleNames <- listModuleNamesInIR "dist-proof/llvm-ir/modules"
  return $ nub $ filter (not . null) (coreNames ++ moduleNames)

-- | List module names from `core/` directory (looks for .scm files)
listModuleNames :: FilePath -> IO [String]
listModuleNames dir = do
  exists <- Dir.doesDirectoryExist dir
  if not exists
    then return []
    else do
      entries <- Dir.listDirectory dir
      let scmFiles = filter (\f -> ".scm" `isSuffixOf` f) entries
      return $ map (\f -> takeWhile (/= '.') f) scmFiles

-- | List module names from modules/ IR directory
-- IR files may have names like "boids-boids_main.raw.ll" -> extract "boids"
listModuleNamesInIR :: FilePath -> IO [String]
listModuleNamesInIR dir = do
  exists <- Dir.doesDirectoryExist dir
  if not exists
    then return []
    else do
      entries <- Dir.listDirectory dir
      let baseNames = nub $ map extractModuleName entries
      return $ filter (not . null) baseNames

-- | Extract module name from IR filename (e.g., "boids-boids_main.raw.ll" -> "boids")
extractModuleName :: String -> String
extractModuleName fname =
  takeWhile (/= '-') $ takeWhile (/= '.') fname

-- | Find IR file for a module (searches core/ opt2.ll first, then modules/ raw.ll)
findModuleIRFile :: String -> IO (Maybe FilePath)
findModuleIRFile modName = do
  let irRoot = "dist-proof/llvm-ir"
  -- Try core module path (e.g., dist-proof/llvm-ir/machine_constants.opt2.ll)
  let corePath = irRoot </> modName ++ ".opt2.ll"
  coreExists <- Dir.doesFileExist corePath
  if coreExists
    then return $ Just corePath
    else do
      -- Try modules path with any variant (e.g., dist-proof/llvm-ir/modules/boids-*.raw.ll)
      let modulesDir = irRoot </> "modules"
      moduleDirExists <- Dir.doesDirectoryExist modulesDir
      if moduleDirExists
        then do
          entries <- Dir.listDirectory modulesDir
          let matching = filter (\f -> modName `isPrefixOf` f) entries
          case matching of
            [] -> return Nothing
            (first:_) -> return $ Just (modulesDir </> first)
        else return Nothing

-- | Generate Lean4 specification from LLVM IR analysis
generateLeanSpec :: FilePath -> IO LeanSpec
generateLeanSpec llPath = do
  content <- readFile llPath
  let modName = normalizeModuleName (takeBaseName' llPath)
  let candidates = extractSchemeExports content
  -- putStrLn $ "[DEBUG] Module: " ++ modName
  -- putStrLn $ "[DEBUG] Found " ++ show (length candidates) ++ " export candidates"
  -- forM_ (take 5 candidates) $ \c -> putStrLn $ "  - " ++ show c
  let leanNames = makeUnique $ map (sanitizeLeanIdent . stripNullEscape) candidates
  return $ LeanSpec
    { lsModuleName = modName
    , lsNamespace = "HatsuYakitori." ++ toPascalCase modName
    , lsImports = defaultImports
    , lsConstants = []
    , lsTheorems = zipWith (\leanName rawName -> (leanName, stripNullEscape rawName, "TODO")) leanNames candidates
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
  [ name
  | line <- lines content
  , "@.str" `isPrefixOf` line
  , '#' `elem` line
  , let name = extractName line
  , not ("##" `isPrefixOf` name)
  , isPlausibleExport name
  ]
  where
    extractName line =
      let afterQuote = dropWhile (/= '"') line
          inQuote = takeWhile (/= '"') (drop 1 afterQuote)
      in inQuote

-- | Write a LeanSpec to a .lean file
writeLeanSpec :: LeanSpec -> FilePath -> IO ()
writeLeanSpec spec outPath = do
  Dir.createDirectoryIfMissing True (takeDirectory outPath)
  exists <- Dir.doesFileExist outPath
  let content = renderLeanSpec spec
  if not exists
    then do
      res <- try (writeFile outPath content) :: IO (Either IOException ())
      case res of
        Left e -> putStrLn $ "[ERROR] Failed to write " ++ outPath ++ ": " ++ show e
        Right _ -> pure ()
    else do
      eFirstChunk <- try (readFile outPath) :: IO (Either IOException String)
      case eFirstChunk of
        Left e -> putStrLn $ "[ERROR] Failed to read " ++ outPath ++ ": " ++ show e
        Right firstChunk ->
          if "Auto-generated specification stub" `isInfixOf` take 512 firstChunk
            then do
              res <- try (writeFile outPath content) :: IO (Either IOException ())
              case res of
                Left e -> putStrLn $ "[ERROR] Failed to overwrite " ++ outPath ++ ": " ++ show e
                Right _ -> pure ()
            else pure ()

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
  [ "/-- " ++ status ++ " (from: " ++ stmt ++ ") -/"
  , "theorem " ++ name ++ " : True := by"
  , "  trivial"
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
toPascalCase = concatMap capitalize . splitOn '_' . map normalizeDelim
  where
    capitalize [] = []
    capitalize (c:cs) = toUpper c : cs
    normalizeDelim c = if isAlphaNum c then c else '_'
    splitOn _ [] = []
    splitOn delim s =
      let (word, rest) = break (== delim) s
      in word : case rest of
        [] -> []
        (_:xs) -> splitOn delim xs

-- | Normalize module names derived from LLVM IR file base names.
-- For module IR files like "boids-boids_main" we take the prefix "boids".
normalizeModuleName :: String -> String
normalizeModuleName = takeWhile (/= '-')

-- | Strip trailing C-style null and hex escapes from IR string literals.
-- Covers \\00, \\FE, \\01, \\FF, etc.
stripNullEscape :: String -> String
stripNullEscape s = stripHexEscapes s

stripHexEscapes :: String -> String
stripHexEscapes [] = []
stripHexEscapes ('\\':a:b:xs)
  | isHexDigit a && isHexDigit b = stripHexEscapes xs
stripHexEscapes (x:xs) = x : stripHexEscapes xs

isHexDigit :: Char -> Bool
isHexDigit c = (c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f')

-- | Heuristic filter: keep only valid export names.
-- Accept names with only lowercase/uppercase/digits/underscore/dash/dot/hash.
-- Reject anything with other backslash escapes (e.g. \FE, \01, etc).
isPlausibleExport :: String -> Bool
isPlausibleExport raw =
  let cleaned = stripHexEscapes raw
  in not (null cleaned)
     && length cleaned <= 120
     && all isValidExportChar cleaned

-- | Valid characters in an export name after stripping hex escapes
isValidExportChar :: Char -> Bool
isValidExportChar c = isAlphaNum c || c `elem` ('_' : '-' : '#' : '.' : [])

isPrintableAscii :: Char -> Bool
isPrintableAscii c = c >= ' ' && c <= '~'

-- | Sanitize a (possibly Scheme) symbol name into a Lean identifier.
-- Keeps only [A-Za-z0-9_], replaces everything else with '_', and prefixes if needed.
sanitizeLeanIdent :: String -> String
sanitizeLeanIdent raw0 =
  let raw = stripNullEscape raw0
      base0 = map (\c -> if isAlphaNum c then c else '_') raw
      base1 = collapseUnderscores base0
      base2 = dropWhile (== '_') base1
      base3 = if null base2 then "export" else base2
      base4 = if isDigit (head base3) then "export_" ++ base3 else base3
  in "export_" ++ base4

collapseUnderscores :: String -> String
collapseUnderscores = reverse . foldl step []
  where
    step [] c = [c]
    step (p:ps) c
      | p == '_' && c == '_' = p:ps
      | otherwise = c:p:ps

-- | Ensure identifiers are unique within a file by suffixing _2, _3, ...
makeUnique :: [String] -> [String]
makeUnique = go []
  where
    go _ [] = []
    go seen (x:xs) =
      let x' = uniquify seen x 1
      in x' : go (x' : seen) xs

    uniquify seen x n
      | x `elem` seen =
          let candidate = x ++ "_" ++ show (n + 1)
          in if candidate `elem` seen then uniquify seen x (n + 1) else candidate
      | otherwise = x

-- | Helper: extract base name without extension
takeBaseName' :: FilePath -> String
takeBaseName' = takeWhile (/= '.') . reverse . takeWhile (/= '/') . reverse

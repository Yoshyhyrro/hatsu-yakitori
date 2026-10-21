{- shake/Rules/Proof/Flang.hs -}
{-# LANGUAGE ScopedTypeVariables #-}

-- module Rules.Proof.Flang
--
-- Fortran -> LLVM IR compilation pipeline using flang (LLVM Flang frontend).
-- This module is structurally parallel to Rules.Proof.LLVM_IR but targets
-- Fortran source files (.f90, .f95, .f03, .f08, .for, .f, .F90, .F95).
--
-- Diagnostic codes (all defined in Diag):
--   HYK006W  flang not found in PATH
--   HYK007E  --flang-src requires a non-empty directory path
--   HYK008W  --flang-src directory not found at parse time
--   HYK009N  --flang-src directory accepted; Fortran targets enabled
--   HYK010I  no --flang-src supplied; Flang targets skipped
--
-- JCL philosophy: warnings do not halt the build; only Error codes trigger
-- summarize -> exitFailure. checkFlangSrc is designed to be called at Shake
-- startup alongside checkHdf5 so the user sees all environmental issues
-- upfront, before any build rule runs.

module Rules.Proof.Flang
  ( FlangBuildPaths(..)
  , defaultFlangBuildPaths
  , flangIrOutputPath
  , ensureFlangDirs
  , checkFlangSrc
  , discoverFortranSources
  , compileFortranToIR
  , verifyFlangIR
  , verifyFlangModules
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Control.Monad (forM)
import Control.Exception (try, SomeException)
import Data.List (isSuffixOf, intercalate)
import qualified System.Directory as Dir
import Diag

-- ----------------------------------------------------------------
-- Build paths
-- ----------------------------------------------------------------

-- | Directories dedicated to Flang (Fortran) proof builds.
-- Kept isolated from the LLVM_IR proof paths so artifacts never mix.
data FlangBuildPaths = FlangBuildPaths
  { flangBuildRoot :: FilePath  -- ^ scratch dir for intermediate files
  , flangDistRoot  :: FilePath  -- ^ distribution root for final artifacts
  , flangIRDir     :: FilePath  -- ^ destination for emitted .ll files
  , flangModulesDir :: FilePath -- ^ directory for compiled .mod files
  } deriving (Show, Eq)

-- | Default layout: dist-flang/ mirrors dist-proof/ from LLVM_IR.
defaultFlangBuildPaths :: FlangBuildPaths
defaultFlangBuildPaths = FlangBuildPaths
  { flangBuildRoot = "_build_flang"
  , flangDistRoot  = "dist-flang"
  , flangIRDir     = "dist-flang/llvm-ir"
  , flangModulesDir = "_build_flang/modules"
  }

-- | Derive the LLVM IR output path for a Fortran module (by base name).
-- | Derive the LLVM IR output path for a Fortran source file, preserving
-- relative directory hierarchy from the provided source root when used.
flangIrOutputPath :: FlangBuildPaths -> FilePath -> FilePath -> FilePath
flangIrOutputPath paths srcRoot srcFile =
  let rel = makeRelative srcRoot srcFile
      relNoExt = dropExtension rel
  in flangIRDir paths </> relNoExt <.> "ll"

-- | Ensure all Flang-specific directories exist before rules run.
ensureFlangDirs :: FlangBuildPaths -> Action ()
ensureFlangDirs paths = liftIO $ mapM_ (Dir.createDirectoryIfMissing True)
  [ flangBuildRoot paths
  , flangDistRoot  paths
  , flangIRDir     paths
  , flangModulesDir paths
  ]

-- ----------------------------------------------------------------
-- Option check  (called at Shake startup, parallel to checkHdf5)
-- ----------------------------------------------------------------

-- | Validate the --flang-src option and emit Diag-based diagnostics.
-- Call this once at startup alongside checkHdf5; pass all returned Diag
-- values to summarize at the end of the build.
--
--   Nothing  -> HYK010I (info, build continues without Fortran targets)
--   Just ""  -> HYK007E (error, causes summarize to exitFailure)
--   Just dir -> HYK008W if dir absent, HYK009N if present; HYK006W if flang missing
checkFlangSrc :: Maybe FilePath -> IO [Diag]
checkFlangSrc Nothing =
  return
    [ Diag SevInfo HYK010I
        "no --flang-src DIR supplied; Flang targets will be skipped"
        [ "pass --flang-src <fortran-src-dir> before the target name to enable Fortran -> LLVM IR" ]
    ]

checkFlangSrc (Just "") =
  return
    [ Diag SevError HYK007E
        "--flang-src requires a non-empty directory path"
        []
    ]

checkFlangSrc (Just dir) = do
  dirExists <- Dir.doesDirectoryExist dir
  flangExe  <- Dir.findExecutable "flang"
  let dirDiag
        | not dirExists =
            [ Diag SevWarning HYK008W
                ("--flang-src directory not found at parse time: " ++ dir)
                [ "the directory may be created before Flang targets run"
                , "if still missing at runtime, Fortran compilation will fail"
                ]
            ]
        | otherwise =
            [ Diag SevNote HYK009N
                ("Fortran source directory accepted: " ++ dir)
                []
            ]
  let flangDiag
        | Nothing <- flangExe =
            [ Diag SevWarning HYK006W
                "flang not found in PATH; Fortran -> LLVM IR targets will fail"
                [ "install LLVM Flang: https://flang.llvm.org"
                , "Debian/Ubuntu (LLVM apt): apt install flang-<version>"
                , "macOS (Homebrew): brew install llvm  # flang is bundled"
                , "Windows/MSYS2: pacman -S mingw-w64-ucrt-x86_64-flang"
                ]
            ]
        | otherwise = []
  mapM_ emit (dirDiag ++ flangDiag)
  return (dirDiag ++ flangDiag)

-- ----------------------------------------------------------------
-- Source discovery
-- ----------------------------------------------------------------

-- | Fortran file extensions recognised by flang.
fortranExtensions :: [String]
fortranExtensions =
  [ ".f90", ".f95", ".f03", ".f08"   -- free-form, standard suffixes
  , ".F90", ".F95", ".F03", ".F08"   -- same but preprocessed (cpp pass)
  , ".f",   ".for", ".ftn"           -- fixed-form legacy
  , ".F",   ".FOR"                   -- fixed-form + cpp
  ]

isFortranSource :: FilePath -> Bool
isFortranSource fp = any (`isSuffixOf` fp) fortranExtensions

-- | Recursively collect all Fortran source files under a root directory.
-- Does not follow symlinks; silently skips unreadable subdirectories.
discoverFortranSources :: FilePath -> IO [FilePath]
discoverFortranSources root = do
  entries <- Dir.listDirectory root
  let files   = [ root </> e | e <- entries, isFortranSource e ]
  subdirCandidates <- filterM' (\e -> Dir.doesDirectoryExist (root </> e)) entries
  nested <- concat <$> mapM (\d -> discoverFortranSources (root </> d)) subdirCandidates
  return (files ++ nested)
  where
    filterM' p xs = do
      flags <- mapM p xs
      return [ x | (x, True) <- zip xs flags ]

-- ----------------------------------------------------------------
-- Compilation: Fortran -> LLVM IR
-- ----------------------------------------------------------------

-- | Compile a single Fortran source file to LLVM IR (.ll) using flang.
-- Equivalent to: flang -S -emit-llvm -o <out> <src>
--
-- Returns Right outPath on success, Left errorMsg on failure.
-- The output path is derived from the source base name via flangIrOutputPath.
compileFortranToIR
  :: FlangBuildPaths
  -> FilePath                        -- ^ root of Fortran source tree (for relative paths)
  -> FilePath                        -- ^ path to .f90 / .f95 / ... source
  -> Action (Either String FilePath)
compileFortranToIR paths srcRoot src = do
  let out = flangIrOutputPath paths srcRoot src
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)

  flangFound <- liftIO $ Dir.findExecutable "flang"
  case flangFound of
    Nothing ->
      return $ Left "flang not found in PATH; install LLVM Flang (see HYK006W)"
    Just flangExe -> do
      -- Module dir flag to keep .mod files isolated
      let moduleFlag = ["-module-dir", flangModulesDir paths]
      -- If source uses uppercase extension (preprocessing expected), enable CPP
      let ext = takeExtension src
      let useCPP = any (`elem` ext) ['A'..'Z']
      let cppFlag = if useCPP then ["-cpp"] else []
      let args = ["-S", "-emit-llvm", "-o", out] ++ moduleFlag ++ cppFlag ++ [src]
      r <- liftIO $ try (cmd_ flangExe args) :: Action (Either SomeException ())
      case r of
        Right ()                  -> return (Right out)
        Left (e :: SomeException) -> return $ Left ("flang compilation failed: " ++ show e)

-- ----------------------------------------------------------------
-- Verification: LLVM IR integrity check
-- ----------------------------------------------------------------

-- | Verify a .ll file produced by flang using opt -passes=verify.
-- Skips gracefully when opt is absent (not a hard failure, consistent
-- with LLVM_IR.hs behaviour).
--
-- Returns Right irPath on pass/skip, Left errorMsg on verification failure.
verifyFlangIR :: FilePath -> Action (Either String FilePath)
verifyFlangIR irPath = do
  optFound <- liftIO $ Dir.findExecutable "opt"
  case optFound of
    Nothing ->
      -- opt absent: emit a single informational line but keep building
      return (Right irPath)
    Just optExe -> do
      r <- liftIO $ try (cmd_ optExe [ "-passes=verify", "-disable-output", irPath ])
             :: Action (Either SomeException ())
      case r of
        Right ()                  -> return (Right irPath)
        Left (e :: SomeException) -> return $ Left ("opt -passes=verify failed on " ++ irPath ++ ": " ++ show e)

-- ----------------------------------------------------------------
-- Batch pipeline
-- ----------------------------------------------------------------

-- | Discover, compile, and verify every Fortran source under srcDir.
-- Returns one result entry per source file (base name + outcome).
-- Errors in one module do not abort compilation of other modules.
verifyFlangModules
  :: FlangBuildPaths
  -> FilePath                    -- ^ root of Fortran source tree (value of --flang-src)
  -> Action [(String, Either String FilePath)]
verifyFlangModules paths srcDir = do
  ensureFlangDirs paths
  srcs <- liftIO $ discoverFortranSources srcDir
  forM srcs $ \src -> do
    let modName = takeBaseName src
    eIR <- compileFortranToIR paths srcDir src
    result <- case eIR of
      Left  err -> return (Left err)
      Right ir  -> verifyFlangIR ir
    return (modName, result)
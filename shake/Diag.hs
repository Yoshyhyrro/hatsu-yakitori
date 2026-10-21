-- shake/Diag.hs
--
-- module Diag provides a simple diagnostic system for the Shake build. It defines a Diag type with severity levels (Error, Warning, Note, Info) and codes for categorization. The emit function prints diagnostics in a structured format, and summarize will exit with failure if any Error is present. The checkHdf5 function checks the --hdf5 option and emits appropriate diagnostics without halting the build on warnings (following JCL philosophy). DiagCodes HYK006W-HYK010I are reserved for the Flang/Fortran pipeline (Rules.Proof.Flang).
--   rustc like diagnostics with labels and notes
--   SBCL like summary with counts of warnings and errors, and exitFailure if any error is present
--   JCL  philosophy of "Error only halts, Warning/Note continue" is followed in checkHdf5 where it emits warnings for missing files or tools but does not halt the build, allowing the user to fix issues while still getting feedback.
--
module Diag
  ( DiagCode(..)
  , Severity(..)
  , Diag(..)
  , emit
  , checkHdf5
  , summarize
  ) where

import System.IO (hPutStrLn, stderr)
import System.Exit (exitFailure)
import qualified System.Directory as Dir

-- ----------------------------------------------------------------
--  code for categorizing diagnostics; these are used in the label and can be searched for in CI logs. The convention is HYK (Hatsu Yakitori) + 3-digit code + severity letter (E/W/N/I).
--    HYK001-005  HDF5 pipeline  (checkHdf5)
--    HYK006-010  Flang/Fortran  (Rules.Proof.Flang.checkFlangSrc)
-- ----------------------------------------------------------------
data DiagCode
  -- ---- HDF5 (checkHdf5) ----------------------------------------
  = HYK001W   -- --hdf5  is missing at parse time (Warning)
  | HYK002N   -- --hdf5  is present at parse time (Note)
  | HYK003W   -- h5dump not found in PATH (Warning)
  | HYK004E   -- --hdf5 requires a non-empty file path (Error)
  | HYK005I   -- HDF5 input not supplied (Info)
  -- ---- Flang / Fortran (checkFlangSrc in Rules.Proof.Flang) -----
  | HYK006W   -- flang not found in PATH (Warning)
  | HYK007E   -- --flang-src requires a non-empty directory path (Error)
  | HYK008W   -- --flang-src directory not found at parse time (Warning)
  | HYK009N   -- --flang-src directory found; Fortran targets enabled (Note)
  | HYK010I   -- no --flang-src supplied; Flang targets skipped (Info)
  -- ---- Flang Dhall / Mock diagnostics -------------------------
  | HYK011E   -- Flang Dhall: Error-level gap (Error)
  | HYK011W   -- Flang Dhall: Warning-level gap (Warning)
  | HYK011N   -- Flang Dhall: Note-level gap (Note)
  | HYK011I   -- Flang Dhall: Info-level gap (Info)
  deriving (Show, Eq)

-- ----------------------------------------------------------------
-- this is the main diagnostic type. It includes a severity level, a code for categorization, a message, and optional notes for additional context. The emit function will print these in a structured format.
--   severity: error, warning, note, info
-- ----------------------------------------------------------------
data Severity
  = SevError    -- ^ summarize で exitFailure
  | SevWarning  -- ^ the build continues, but the summary will report the warning count
  | SevNote     -- ^ informational note that is not a warning; the build continues and the summary does not count it, but it may be emitted alongside warnings or errors for additional context
  | SevInfo     -- ^ purely informational message that is not a warning; the build continues and the summary does not count it
  deriving (Show, Eq, Ord)

data Diag = Diag
  { diagSev     :: Severity
  , diagCode    :: DiagCode
  , diagMessage :: String
  , diagNotes   :: [String]
  } deriving (Show)

-- ----------------------------------------------------------------
-- emit: this is the only function that produces output or side effects; it takes a Diag and prints it in a structured format. The summarize function will call exitFailure if any emitted Diag has SevError.
--   warning[HYK001W]: message
--      = note: ...
-- ----------------------------------------------------------------
emit :: Diag -> IO ()
emit d = do
  let label = case diagSev d of
        SevError   -> "error"
        SevWarning -> "warning"
        SevNote    -> "note"
        SevInfo    -> "info"
  let code = "[" ++ show (diagCode d) ++ "]"
  hPutStrLn stderr $ label ++ code ++ ": " ++ diagMessage d
  mapM_ (\n -> hPutStrLn stderr $ "   = note: " ++ n) (diagNotes d)

-- ----------------------------------------------------------------
-- checkHdf5: --hdf5 the option may be passed to Shake with a file path. This function checks the presence and validity of that file path and emits appropriate diagnostics. If the file is missing or h5dump is not found, it emits warnings but does not halt the build, allowing the user to fix issues while still getting feedback. If --hdf5 is not supplied at all, it emits an informational message. If --hdf5 is supplied with an empty string, it emits an error and will cause summarize to exit with failure.
--   Warning if the file is missing at parse time (it may be generated later), or if h5dump is not found. Note if the file is present at parse time. Info if --hdf5 is not supplied.
-- ----------------------------------------------------------------
checkHdf5 :: Maybe FilePath -> IO [Diag]
checkHdf5 Nothing =
  return [ Diag SevInfo HYK005I
             "no --hdf5 FILE supplied; SBV targets run without HDF5 input"
             ["pass --hdf5 examples/fmm/plasma_landau_mock.h5 before target name"] ]

checkHdf5 (Just "") =
  return [ Diag SevError HYK004E
             "--hdf5 requires a non-empty file path"
             [] ]

checkHdf5 (Just fp) = do
  exists <- Dir.doesFileExist fp
  h5dump <- Dir.findExecutable "h5dump"
  let fileWarn
        | not exists =
            [ Diag SevWarning HYK001W
                ("--hdf5 file not found at parse time: " ++ fp)
                [ "the file may be generated before the SBV target runs"
                , "if still missing at runtime, the SBV program will receive a bad path"
                ] ]
        | otherwise =
            [ Diag SevNote HYK002N
                ("HDF5 input forwarded to SBV runtime: " ++ fp)
                [] ]
  let h5Warn
        | Nothing <- h5dump =
            [ Diag SevWarning HYK003W
                "h5dump not found in PATH; hdf5-scan will fail"
                [ "Debian/Ubuntu: sudo apt install hdf5-tools"
                , "Windows/MSYS2: pacman -S mingw-w64-ucrt-x86_64-hdf5"
                ] ]
        | otherwise = []
  mapM_ emit (fileWarn ++ h5Warn)
  return (fileWarn ++ h5Warn)

-- ----------------------------------------------------------------
-- summarize: SBCL like summary at the end of the build. It takes the list of all emitted Diag and prints a summary of how many warnings and errors were emitted. If any Diag has SevError, it will call exitFailure to halt the build with a non-zero exit code. Otherwise, it will just print the counts and allow the build to succeed.
--   caught N warning(s), M error(s) which will be visible in CI logs. If M > 0 then exitFailure to halt the build.
--   Error and Warning are counted in the summary, Note and Info are not. The individual Diag messages are emitted when they are created via emit, so the summary just counts them and reports the totals at the end.
-- ----------------------------------------------------------------
summarize :: [Diag] -> IO ()
summarize [] = return ()
summarize diags = do
  let errs  = filter ((== SevError)   . diagSev) diags
  let warns = filter ((== SevWarning) . diagSev) diags
  hPutStrLn stderr $
    "-- diagnostic summary: "
    ++ show (length errs)  ++ " error(s), "
    ++ show (length warns) ++ " warning(s)"
  case errs of
    []    -> return ()
    (e:_) -> do
      hPutStrLn stderr $ "build aborted: " ++ diagMessage e
      exitFailure
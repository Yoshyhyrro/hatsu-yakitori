#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath

{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Development.Shake.Classes
import Control.Monad
import System.Console.GetOpt
import System.Directory (removeFile)
import Data.Maybe (fromMaybe, listToMaybe)
import Data.List (find)
import Data.Typeable
import GHC.Generics

-- | Build flags
data Flags = Flags
    { flagDebug :: Bool
    , flagModule :: Maybe String
    } deriving (Show, Eq)

defaultFlags :: Flags
defaultFlags = Flags False Nothing

-- | Command line options
flags :: [OptDescr (Either String Flags)]
flags =
    [ Option "d" ["debug"] (NoArg $ Right defaultFlags{flagDebug = True})
        "Build with debug symbols"
    , Option "m" ["module"] (ReqArg (\m -> Right defaultFlags{flagModule = Just m}) "MODULE")
        "Specify module to build"
    ]

-- | Oracle for build configuration
newtype BuildConfig a = BuildConfig ()
    deriving (Show, Typeable, Eq, Hashable, Binary, NFData)

type instance RuleResult (BuildConfig String) = String

-- | Module definition
data Module = Module
    { modName     :: String
    , modSrc      :: FilePath  -- Empty if library-only
    , modTest     :: FilePath
    , modDeps     :: [FilePath]
    } deriving (Show, Eq)

-- | All available modules
modules :: [Module]
modules =
    [ Module "boids"            "modules/boids/boids_main.scm"        "tests/boids_tests.scm"       coreFiles
    , Module "fmm"              "modules/fmm/fmm_main.scm"            "tests/fmm_tests.scm"         coreFiles
    , Module "sssp"             "modules/sssp/sssp_main.scm"          "tests/sssp_tests.scm"        coreFiles
    , Module "kak-decomposition" ""                                   "tests/kak_tests.scm"         coreFiles
    , Module "golay24-tool"     "tools/golay24-tool/golay24_main.scm" "tests/golay24_tests.scm"     golayDeps
    ]
  where
    -- Core dependencies (MUST BE IN DEPENDENCY ORDER)
    coreFiles = [ "core/machine_constants.scm"
                , "core/golay_frontier.scm"
                , "core/cartan_utils.scm"
                , "core/kak_decomposition.scm" ]
    -- Golay tool only needs first two
    golayDeps = [ "core/machine_constants.scm"
                , "core/golay_frontier.scm" ]

-- | Find module by name
findModule :: String -> Maybe Module
findModule name = find (\m -> modName m == name) modules

main :: IO ()
main = shakeArgsWith shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} flags $ \flags targets -> return $ Just $ do
    let buildDir = "_build"
        distDir  = "dist"
        csc = "csc"

    -- Merge all flags
    let mergedFlags = foldl mergeFlags defaultFlags flags
        mergeFlags (Flags d1 m1) (Flags d2 m2) = 
            Flags (d1 || d2) (m2 `mplus` m1)
        mplus Nothing x = x
        mplus x _ = x

    -- Compiler flags based on debug setting
    let cflags = if flagDebug mergedFlags
                 then "-O3 -g -debug-level 3"
                 else "-O3 -optimize-leaf-routines"

    -- Oracle rules for configuration
    addOracle $ \(BuildConfig ()) -> return cflags

    -- Default targets
    if null targets
        then want ["help"]
        else want targets

    -- Help target
    phony "help" $ do
        putInfo $ unlines
          [ "Shake Build System for hatsu-yakitori"
          , ""
          , "Usage:"
          , "  shake/Shake.hs [options] <targets>"
          , ""
          , "Options:"
          , "  -d, --debug              Build with debug symbols"
          , "  -m, --module=MODULE      Specify module"
          , ""
          , "Quick targets:"
          , "  <module>                 Build and test module"
          ] ++ map (("    " ++) . modName) modules ++
          [ ""
          , "Explicit targets:"
          , "  build                    Build (requires --module)"
          , "  test                     Test (requires --module)"
          , "  test-salmonella          Salmonella test (requires --module)"
          , "  test-all-salmonella      Test all modules"
          , "  clean                    Clean build artifacts"
          , "  info                     Show configuration"
          , ""
          , "Examples:"
          , "  shake/Shake.hs boids"
          , "  shake/Shake.hs --debug --module=fmm build"
          , "  shake/Shake.hs test-all-salmonella"
          ]

    -- Info target
    phony "info" $ do
        flags <- askOracle (BuildConfig ())
        putInfo "=== Configuration ==="
        putInfo $ "Build dir: " ++ buildDir
        putInfo $ "Dist dir: " ++ distDir
        putInfo $ "Compiler: " ++ csc
        putInfo $ "Flags: " ++ flags
        putInfo $ "Debug: " ++ show (flagDebug mergedFlags)
        putInfo ""
        putInfo "=== Available Modules ==="
        forM_ modules $ \m -> putInfo $ "  " ++ modName m

    -- Module shortcuts (e.g., "shake/Shake.hs boids")
    forM_ modules $ \m -> phony (modName m) $ do
        need ["build-" ++ modName m, "test-" ++ modName m]
        putInfo $ "✓ Finished " ++ modName m

    -- Generic build target
    phony "build" $ do
        let modName = case flagModule mergedFlags of
                Just n  -> n
                Nothing -> error "MODULE required (use --module=NAME or MODULE=NAME)"
        
        case findModule modName of
            Nothing -> error $ "Unknown module: " ++ modName ++ "\nAvailable: " ++ 
                              unwords (map (\m -> modName m) modules)
            Just m  -> need ["build-" ++ modName m]

    -- Generic test target
    phony "test" $ do
        let modName = case flagModule mergedFlags of
                Just n  -> n
                Nothing -> error "MODULE required"
        
        case findModule modName of
            Nothing -> error $ "Unknown module: " ++ modName
            Just m  -> need ["test-" ++ modName m]

    -- Build individual modules
    forM_ modules $ \m -> phony ("build-" ++ modName m) $ do
        let stamp = buildDir </> modName m <.> "stamp"
        need [stamp]
        
        -- Build application binary if source exists
        unless (null $ modSrc m) $ do
            let app = distDir </> modName m ++ "_app" <.> exe
            need [app]

    -- Application binaries (cross-platform with exe)
    (distDir </> "*_app" <.> exe) %> \out -> do
        let name = takeBaseName $ dropExtension out
        case findModule name of
            Nothing -> error $ "No module definition for " ++ name
            Just m | null (modSrc m) -> error $ "Module " ++ name ++ " is library-only"
                   | otherwise -> do
                need [buildDir </> name <.> "stamp"]
                flags <- askOracle (BuildConfig ())
                cmd csc flags [modSrc m] "-o" [out]
                putInfo $ "✓ Built " ++ out

    -- Module stamps (dependency compilation)
    (buildDir </> "*.stamp") %> \out -> do
        let name = dropExtension $ takeFileName out
        case findModule name of
            Nothing -> error $ "No module definition for " ++ name
            Just m -> do
                need (modDeps m)
                flags <- askOracle (BuildConfig ())
                -- Compile dependencies IN ORDER (important for imports)
                forM_ (modDeps m) $ \dep -> do
                    putInfo $ "Compiling dependency: " ++ dep
                    cmd csc flags "-c -J" [dep]
                writeFile' out ""
                putInfo $ "✓ Compiled " ++ name ++ " dependencies"

    -- Test individual modules
    forM_ modules $ \m -> phony ("test-" ++ modName m) $ do
        need ["build-" ++ modName m]
        let testBin = "/tmp/test_" ++ modName m <.> exe
        flags <- askOracle (BuildConfig ())
        cmd csc flags [modTest m] "-o" [testBin]
        cmd testBin
        liftIO $ removeFile testBin
        putInfo $ "✓ Tests passed for " ++ modName m

    -- Salmonella testing
    phony "test-salmonella" $ do
        let modName = case flagModule mergedFlags of
                Just n  -> n
                Nothing -> error "MODULE required for salmonella testing"
        
        case findModule modName of
            Nothing -> error $ "Unknown module: " ++ modName
            Just m -> do
                need ["build-" ++ modName m]
                let logFile = buildDir </> ("salmonella_" ++ modName m) <.> "log"
                cmd "salmonella" ("--log-file=" ++ logFile) "--verbosity=2" modName

    -- Test all with salmonella
    phony "test-all-salmonella" $ do
        forM_ modules $ \m ->
            need ["salmonella-" ++ modName m]
        putInfo "✓ All modules passed salmonella"

    forM_ modules $ \m -> phony ("salmonella-" ++ modName m) $ do
        need ["build-" ++ modName m]
        let logFile = buildDir </> ("salmonella_" ++ modName m) <.> "log"
        cmd "salmonella" ("--log-file=" ++ logFile) "--verbosity=2" (modName m)

    -- Clean
    phony "clean" $ do
        putInfo "Cleaning build artifacts..."
        removeFilesAfter buildDir ["//*"]
        removeFilesAfter distDir ["//*"]
        removeFilesAfter "/tmp" ["test_*" <.> exe]
        putInfo "✓ Clean complete"
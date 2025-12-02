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
import Data.List (find, unwords, isSuffixOf)
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
newtype BuildConfig = BuildConfig ()
    deriving (Show, Typeable, Eq, Hashable, Binary, NFData)

type instance RuleResult BuildConfig = String

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
    , Module "kak-decomposition" "core/kak_decomposition.scm"           "tests/kak_tests.scm"         coreFiles
    , Module "golay24-tool"     "tools/golay24-tool/golay24_main.scm" "tests/golay24_tests.scm"     golayDeps
    , Module "sssp_geometry"   "modules/sssp_geometry/sssp_geo_main.scm" "tests/sssp_geometry_tests.scm" golayDeps
    ]
  where
    coreFiles = [ "core/machine_constants.scm"
                , "core/golay_frontier.scm"
                , "core/cartan_utils.scm"
                , "core/kak_decomposition.scm" ]
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

    let mergedFlags = foldl mergeFlags defaultFlags flags
        mergeFlags (Flags d1 m1) (Flags d2 m2) = 
            Flags (d1 || d2) (m2 `mplus` m1)
        mplus Nothing x = x
        mplus x _ = x

    let cflags = if flagDebug mergedFlags
                 then "-O3 -debug-level 3"
                 else "-O3 -optimize-leaf-routines"

    addOracle $ \(BuildConfig ()) -> return cflags

    if null targets
        then want ["help"]
        else want targets

    phony "help" $ do
        putInfo "Usage: shake/Shake.hs [options] <target>"

    phony "info" $ do
        flagsStr <- askOracle (BuildConfig ())
        putInfo $ "Flags: " ++ flagsStr

    forM_ modules $ \m -> phony (modName m) $ do
        need ["build-" ++ modName m, "test-" ++ modName m]
        putInfo $ "✓ Finished " ++ modName m

    phony "build" $ do
        let target = fromMaybe (error "MODULE required") (flagModule mergedFlags)
        case findModule target of
            Nothing -> error $ "Unknown module: " ++ target
            Just m  -> need ["build-" ++ modName m]

    phony "test" $ do
        let target = fromMaybe (error "MODULE required") (flagModule mergedFlags)
        case findModule target of
            Nothing -> error $ "Unknown module: " ++ target
            Just m  -> need ["test-" ++ modName m]

    forM_ modules $ \m -> phony ("build-" ++ modName m) $ do
        let stamp = buildDir </> modName m <.> "stamp"
        need [stamp]
        unless (null $ modSrc m) $ do
            let app = distDir </> modName m ++ "_app" <.> exe
            need [app]

    (distDir </> "*_app" <.> exe) %> \out -> do
        let baseName = takeBaseName $ dropExtension out
        let name | "_app" `isSuffixOf` baseName = take (length baseName - 4) baseName
                 | otherwise = baseName

        case findModule name of
            Nothing -> error $ "No module definition for " ++ name
            Just m -> do
                need [buildDir </> name <.> "stamp"]
                flagsStr <- askOracle (BuildConfig ())
                -- Main app linking: also relies on deps being units or objects
                -- Assuming main source doesn't need -unit flag as it IS the program.
                let depObjs = [ replaceExtension dep "o" | dep <- modDeps m ]
                cmd_ csc flagsStr "-I" "." ([modSrc m] ++ depObjs) "-o" [out]
                putInfo $ "✓ Built " ++ out

    -- Module stamps (dependency compilation)
    (buildDir </> "*.stamp") %> \out -> do
        let name = dropExtension $ takeFileName out
        case findModule name of
            Nothing -> error $ "No module definition for " ++ name
            Just m -> do
                need (modDeps m)
                flagsStr <- askOracle (BuildConfig ())
                
                -- Compile dependencies IN ORDER
                forM_ (modDeps m) $ \dep -> do
                    putInfo $ "Compiling dependency: " ++ dep
                    
                    -- [CRITICAL FIX]
                    -- Derive unit name from file path (e.g., core/machine_constants.scm -> core/machine_constants)
                    -- This prevents "multiple definition of C_toplevel" by namespacing the entry point.
                    let unitName = dropExtension dep
                    
                    -- -c: Compile to object (no main)
                    -- -J: Generate import library
                    -- -unit: Declare compilation unit name
                    cmd_ csc flagsStr "-c -J" "-unit" unitName [dep]
                    
                writeFile' out ""
                putInfo $ "✓ Compiled " ++ name ++ " dependencies"

    -- Test individual modules
    forM_ modules $ \m -> phony ("test-" ++ modName m) $ do
        need ["build-" ++ modName m]
        let testBin = "/tmp/test_" ++ modName m <.> exe
        flagsStr <- askOracle (BuildConfig ())
        
        -- [CRITICAL FIX]
        -- Link object files (.o).
        -- Since deps were compiled with -unit, they won't collide on C_toplevel.
        let depObjs = [ replaceExtension dep "o" | dep <- modDeps m ]
        
        -- Compile test and link with dependency objects
        -- The test file itself is the "main" program, so no -unit needed for it.
        cmd_ csc flagsStr "-I" "." ([modTest m] ++ depObjs) "-o" [testBin]
        
        cmd_ testBin
        liftIO $ removeFile testBin
        putInfo $ "✓ Tests passed for " ++ modName m

    phony "clean" $ do
        putInfo "Cleaning build artifacts..."
        removeFilesAfter buildDir ["//*"]
        removeFilesAfter distDir ["//*"]
        removeFilesAfter "core" ["//*.o", "//*.import.scm"] -- Clean compiled core objs/imports
        removeFilesAfter "tools" ["//*.o", "//*.import.scm"]
        removeFilesAfter "/tmp" ["test_*" <.> exe]
        putInfo "✓ Clean complete"
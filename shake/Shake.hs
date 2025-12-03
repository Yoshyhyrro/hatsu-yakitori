#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath --ghc-options -isshake

{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Development.Shake.Classes
import Control.Monad
import System.Console.GetOpt
import System.Directory (removeFile)
import Data.Maybe (fromMaybe)
import Data.List (isSuffixOf)
import Data.Typeable
import GHC.Generics

import Build.Chicken
import Build.Modules

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

main :: IO ()
main = shakeArgsWith shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} flags $ \flags targets -> return $ Just $ do
    let buildDir = "_build"
        distDir  = "dist"

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

    -- ========================================
    -- Phony Targets
    -- ========================================
    
    phony "help" $ do
        putInfo "Usage: shake/Shake.hs [options] <target>"
        putInfo ""
        putInfo "Available modules:"
        forM_ modules $ \m -> putInfo $ "  - " ++ modName m
        putInfo ""
        putInfo "Targets:"
        putInfo "  <module>        - Build and test a module"
        putInfo "  build-<module>  - Build module only"
        putInfo "  test-<module>   - Test module only"
        putInfo "  clean           - Clean all artifacts"

    phony "info" $ do
        flagsStr <- askOracle (BuildConfig ())
        putInfo $ "Compiler flags: " ++ flagsStr
        putInfo $ "Build directory: " ++ buildDir
        putInfo $ "Output directory: " ++ distDir

    -- Top-level module targets (build + test)
    forM_ modules $ \m -> phony (modName m) $ do
        need ["build-" ++ modName m, "test-" ++ modName m]
        putInfo $ "✓ Finished " ++ modName m

    -- Build targets
    forM_ modules $ \m -> phony ("build-" ++ modName m) $ do
        let stamp = buildDir </> modName m <.> "stamp"
        need [stamp]
        unless (null $ modSrc m) $ do
            let app = distDir </> modName m ++ "_app" <.> exe
            need [app]

    -- Test targets
    forM_ modules $ \m -> phony ("test-" ++ modName m) $ do
        need ["build-" ++ modName m]
        let testBin = "/tmp/test_" ++ modName m <.> exe
        flagsStr <- askOracle (BuildConfig ())
        
        linkTest flagsStr (modTest m) (modDeps m) testBin
        
        cmd_ testBin
        liftIO $ removeFile testBin
        putInfo $ "✓ Tests passed for " ++ modName m

    -- Clean target
    phony "clean" $ do
        putInfo "Cleaning build artifacts..."
        removeFilesAfter buildDir ["//*"]
        removeFilesAfter distDir ["//*"]
        cleanArtifacts ["core", "modules", "tools", "tests"]
        removeFilesAfter "/tmp" ["test_*" <.> exe]
        putInfo "✓ Clean complete"

    -- ========================================
    -- File Rules
    -- ========================================
    
    -- Dependency compilation stamp files
    (buildDir </> "*.stamp") %> \out -> do
        let name = dropExtension $ takeFileName out
        case findModule name of
            Nothing -> error $ "No module definition for " ++ name
            Just m -> do
                flagsStr <- askOracle (BuildConfig ())
                
                -- Compile each dependency in order
                forM_ (modDeps m) $ \dep -> do
                    compileModule flagsStr dep
                
                writeFile' out ""
                putInfo $ "✓ Compiled " ++ name ++ " dependencies"

    -- Main executables
    (distDir </> "*_app" <.> exe) %> \out -> do
        let baseName = takeBaseName $ dropExtension out
        let name | "_app" `isSuffixOf` baseName = take (length baseName - 4) baseName
                 | otherwise = baseName

        case findModule name of
            Nothing -> error $ "No module definition for " ++ name
            Just m -> do
                need [buildDir </> name <.> "stamp"]
                flagsStr <- askOracle (BuildConfig ())
                
                linkExecutable flagsStr (modSrc m) (modDeps m) out
                putInfo $ "✓ Built " ++ out
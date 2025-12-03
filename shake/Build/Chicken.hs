{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

module Build.Chicken 
    ( ChickenModule(..)
    , compileModule
    , linkExecutable
    , linkTest
    , cleanArtifacts
    ) where

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Development.Shake.Classes
import Control.Monad
import Data.List (isSuffixOf)
import Data.Typeable
import GHC.Generics

-- | Chicken Scheme module definition
data ChickenModule = ChickenModule
    { modName     :: String
    , modSrc      :: FilePath  -- Main source (empty if library-only)
    , modTest     :: FilePath  -- Test file
    , modDeps     :: [FilePath] -- Dependency sources
    } deriving (Show, Eq)

-- | Compile a single Chicken Scheme source file to object
-- This creates both .o and .import.scm files
compileModule :: String -> FilePath -> Action ()
compileModule cflags srcPath = do
    let unitName = dropExtension srcPath
        objPath = replaceExtension srcPath "o"
        importPath = replaceExtension srcPath "import.scm"
    
    putInfo $ "Compiling: " ++ srcPath ++ " -> " ++ objPath
    
    -- Compile with:
    -- -c: compile to object file
    -- -J: generate import library
    -- -unit: declare compilation unit (prevents C_toplevel collision)
    cmd_ "csc" cflags "-c" "-J" "-unit" unitName [srcPath]
    
    need [objPath, importPath]

-- | Link an executable from main source and dependency objects
linkExecutable :: String -> FilePath -> [FilePath] -> FilePath -> Action ()
linkExecutable cflags mainSrc deps outPath = do
    let depObjs = map (`replaceExtension` "o") deps
    
    putInfo $ "Linking executable: " ++ outPath
    putInfo $ "  Main: " ++ mainSrc
    putInfo $ "  Deps: " ++ show depObjs
    
    -- Link main source with all dependency objects
    cmd_ "csc" cflags "-I" "." ([mainSrc] ++ depObjs) "-o" [outPath]

-- | Link a test executable
linkTest :: String -> FilePath -> [FilePath] -> FilePath -> Action ()
linkTest cflags testSrc deps outPath = do
    let depObjs = map (`replaceExtension` "o") deps
    
    putInfo $ "Linking test: " ++ outPath
    putInfo $ "  Test: " ++ testSrc
    putInfo $ "  Deps: " ++ show depObjs
    
    -- Link test file with dependency objects
    cmd_ "csc" cflags "-I" "." ([testSrc] ++ depObjs) "-o" [outPath]

-- | Clean Chicken Scheme build artifacts
cleanArtifacts :: [String] -> Action ()
cleanArtifacts dirs = do
    putInfo "Cleaning Chicken Scheme artifacts..."
    forM_ dirs $ \dir -> do
        removeFilesAfter dir ["//*.o", "//*.import.scm", "//*.link"]
    putInfo "✓ Chicken artifacts cleaned"
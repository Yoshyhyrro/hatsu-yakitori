{- shake/Rules.hs (GC-integrated) -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Rules
  ( -- * Core Rules
    setupRules
  , buildArtifact
  , buildArtifactWithGC
    -- * ChickenOp constructors
  , ChickenOp(CompileObj, CompileUnit, LinkExe)
    -- * GC Rules
  , module Rules.GC
    -- * Helpers
  , getChickenEnv
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Control.Monad (when, unless, filterM)
import qualified System.Directory as Dir
import System.Process (readProcess)
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate, isSuffixOf, isPrefixOf)
import qualified Data.ByteString.Char8 as BS8
import Data.Binary (encode)
import qualified Data.ByteString.Base16 as Base16
import qualified Data.ByteString.Lazy as BL

import Chicken
import qualified Rules.GC as GC

-- | ビルド操作を表すGADT
data ChickenOp a where
  CompileObj  :: Artifact 'Src -> String -> ChickenOp (Artifact 'Obj)
  CompileUnit :: Artifact 'Src -> String -> ChickenOp (Artifact 'Unit)
  LinkExe     :: [Artifact 'Obj] -> Artifact 'Src -> String -> FilePath -> ChickenOp (Artifact 'Exe)

deriving instance Show (ChickenOp a)
deriving instance Eq (ChickenOp a)

-- | ユーザー向けの型安全なビルドアクション
buildArtifact :: ChickenOp a -> Action a
buildArtifact (CompileObj src flags) = do
  let out = artifactPathForCompileObj src flags
  need [out]
  return (Artifact out)

buildArtifact (CompileUnit src flags) = do
  let out = artifactPathForCompileUnit src flags
  need [out]
  let importSrc = replaceExtension (getPath src) "import.scm"
  exists <- liftIO $ Dir.doesFileExist importSrc
  when exists $ need [importSrc]
  return (Artifact out)

buildArtifact (LinkExe objs mainSrc flags outPath) = do
  need (getPath mainSrc : map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  let args = words flags ++ ["-o", outPath] ++ map getPath objs ++ [getPath mainSrc]
  
  putInfo $ "[Link] " ++ outPath
  cmd_ ("csc" :: String) args
  
  return (Artifact outPath)

-- ============================================================
-- GC-Aware Building
-- ============================================================

-- | Build artifact with optional GC compilation
-- If gcOptimize is True, also compile a GC-optimized version
buildArtifactWithGC :: Bool -> ChickenOp a -> Action a
buildArtifactWithGC gcOptimize op = do
  result <- buildArtifact op
  
  when gcOptimize $ case op of
    LinkExe _ _ _ outPath -> do
      -- Build GC-optimized version alongside
      _ <- GC.buildGCObj outPath
      return ()
    _ -> return ()
  
  return result

-- ============================================================
-- Path Helpers
-- ============================================================

hashFlags :: String -> String
hashFlags flags = BS8.unpack $ Base16.encode $ BL.toStrict $ encode flags

artifactPathForCompileObj :: Artifact 'Src -> String -> FilePath
artifactPathForCompileObj (Artifact src) flags = 
  "dist" </> ("obj_" ++ hashFlags flags) </> replaceExtension (takeFileName src) "o"

artifactPathForCompileUnit :: Artifact 'Src -> String -> FilePath
artifactPathForCompileUnit (Artifact src) flags = 
  "dist" </> ("unit_" ++ hashFlags flags) </> replaceExtension (takeFileName src) "o"

-- ============================================================
-- Rule Setup (including GC rules)
-- ============================================================

setupRules :: Rules ()
setupRules = do
  -- Standard compilation rules
  "dist/obj_*/*.o" %> \out -> compileAction out False
  "dist/unit_*/*.o" %> \out -> compileAction out True

  -- Import file handling
  "dist/unit_*/*.import.scm" %> \out -> do
    let dir = takeDirectory out
    let fileName = takeFileName out
    
    let searchDirs = ["core", "modules", "tools", "."]
    candidates <- liftIO $ concat <$> mapM (findAllFilesRecursive fileName) searchDirs
    
    case candidates of
        (src:_) -> do
            liftIO $ Dir.createDirectoryIfMissing True dir
            copyFile' src out
        [] -> error $ "Could not find .import.scm file for: " ++ fileName

  -- GC-specific rules
  GC.gcRule

-- ============================================================
-- Compilation Actions
-- ============================================================

compileAction :: FilePath -> Bool -> Action ()
compileAction out isUnit = do
  let dir = takeDirectory out
  let baseName = dropExtension (takeFileName out)
  let srcFileName = baseName <.> "scm"

  let standardPaths =
        [ "core" </> srcFileName
        , "modules" </> srcFileName
        , "modules" </> baseName </> srcFileName
        , "tools" </> baseName ++ "-tool" </> srcFileName
        , "tests" </> srcFileName
        , srcFileName
        ]

  srcFullPath <- liftIO $ findSourceFile standardPaths
  
  finalSrc <- case srcFullPath of
    Just path -> return path
    Nothing -> do
      allSrcs <- liftIO $ findAllScmFiles [srcFileName]
      case allSrcs of
        (path:_) -> return path
        []       -> error $ "Source file not found for: " ++ srcFileName ++ " (target: " ++ out ++ ")"

  compileSrc finalSrc out dir baseName isUnit

compileSrc :: FilePath -> FilePath -> FilePath -> String -> Bool -> Action ()
compileSrc srcPath out dir baseName isUnit = do
  liftIO $ Dir.createDirectoryIfMissing True dir
  putInfo $ (if isUnit then "[Unit] " else "[Obj]  ") 
            ++ srcPath ++ " -> " ++ out

  let unitArgs = if isUnit
        then ["-J", "-unit", baseName]
        else []

  cmd_ ("csc" :: String) unitArgs ("-c" :: String) srcPath ("-o" :: String) out

  when isUnit $ do
    let importFile = baseName ++ ".import.scm"
    let srcImport = replaceFileName srcPath importFile
    
    liftIO $ do
        exists <- Dir.doesFileExist srcImport
        if exists 
            then putStrLn $ "       (Using existing import: " ++ srcImport ++ ")"
            else return ()

-- ============================================================
-- File Search Utilities
-- ============================================================

findSourceFile :: [FilePath] -> IO (Maybe FilePath)
findSourceFile [] = return Nothing
findSourceFile (path:paths) = do
  if ".import.scm" `isSuffixOf` path
    then findSourceFile paths
    else do
      exists <- Dir.doesFileExist path
      if exists
        then return (Just path)
        else findSourceFile paths

findAllScmFiles :: [String] -> IO [FilePath]
findAllScmFiles targetNames = do
  let searchRoots = ["core", "modules", "tools", "tests", "."]
  concat <$> mapM (findAllFilesRecursive' targetNames) searchRoots

findAllFilesRecursive :: String -> FilePath -> IO [FilePath]
findAllFilesRecursive targetName root = findAllFilesRecursive' [targetName] root

findAllFilesRecursive' :: [String] -> FilePath -> IO [FilePath]
findAllFilesRecursive' targetNames currentDir = do
  exists <- Dir.doesDirectoryExist currentDir
  if not exists then return []
  else do
    entries <- Dir.listDirectory currentDir
    let files = filter (\f -> any (== f) targetNames) entries
    let foundPaths = map (currentDir </>) files
    
    subDirs <- filterM (isValidSubDir currentDir) entries
    nestedMatches <- concat <$> mapM (\sd -> findAllFilesRecursive' targetNames (currentDir </> sd)) subDirs
    
    return $ foundPaths ++ nestedMatches
  where
    isValidSubDir :: FilePath -> FilePath -> IO Bool
    isValidSubDir parent sub = 
        if "." `isPrefixOf` sub 
            then return False 
            else Dir.doesDirectoryExist (parent </> sub)

-- ============================================================
-- Environment Setup
-- ============================================================

getChickenEnv :: IO [(String, String)]
getChickenEnv = do
  home <- Dir.getHomeDirectory
  sysEnv <- getEnvironment
  let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)

  systemRepo <-
    fmap (filter (/= '\n')) $
      readProcess "csi" ["-R", "chicken.platform", "-e", "(display (car (repository-path)))"] ""

  let repoPath =
        intercalate
          ":"
          [ "dist"
          , home </> ".chicken"
          , systemRepo
          , sysEnvRepo
          ]

  return
    [ ("CHICKEN_INCLUDE_PATH", "core:dist:.:_build")
    , ("CHICKEN_REPOSITORY_PATH", repoPath)
    , ("CHICKEN_INSTALL_REPOSITORY", "dist")
    ]
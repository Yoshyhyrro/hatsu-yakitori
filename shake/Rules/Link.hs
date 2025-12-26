{- shake/Rules/Link.hs -}
{-# LANGUAGE DataKinds #-}

module Rules.Link
  ( linkExe
  , linkWithDeps
  , getChickenEnv
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate, partition, isPrefixOf)

import Chicken

-- ============================================================
-- Linking
-- ============================================================

-- | Simple linking without dependencies
linkExe :: [Artifact 'Obj] -> FilePath -> Action (Artifact 'Exe)
linkExe objs outPath = do
  need (map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  let objPaths = map getPath objs
  cmd_ ("csc" :: String) ("-o" : outPath : objPaths)
  return (Artifact outPath)

-- | Linking with dependencies (-uses flags) AND system libraries
linkWithDeps :: [Artifact 'Obj] -> [String] -> FilePath -> Action (Artifact 'Exe)
linkWithDeps objs deps outPath = do
  need (map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  
  let objPaths = map getPath objs
  
  -- 依存関係を分類
  let (srfiDeps, otherDeps) = partition ("srfi-" `isPrefixOf`) deps
  let (chickenDeps, customDeps) = partition ("chicken" `isPrefixOf`) otherDeps
  
  -- SRFIとChickenモジュールは特別なリンクが必要
  let usesFlags = concatMap (\d -> ["-uses", d]) customDeps
  let srfiFlags = concatMap (\d -> ["-require-extension", d]) srfiDeps
  let chickenFlags = concatMap (\d -> ["-require-extension", d]) chickenDeps
  
  let args = ["-o", outPath] ++ usesFlags ++ srfiFlags ++ chickenFlags ++ objPaths
  
  cmd_ envOpts ("csc" :: String) args
  return (Artifact outPath)

-- ============================================================
-- Environment Setup
-- ============================================================

-- | Get Chicken Scheme environment variables
getChickenEnv :: IO [(String, String)]
getChickenEnv = do
  home <- Dir.getHomeDirectory
  projectRoot <- Dir.getCurrentDirectory
  sysEnv <- getEnvironment
  let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)

  let corePath = projectRoot </> "core"
  let distPath = projectRoot </> "dist"
  
  let repoPath = intercalate ":" [distPath, corePath, home </> ".chicken", sysEnvRepo]

  return
    [ ("CHICKEN_INCLUDE_PATH", intercalate ":" [corePath, distPath, ".", "_build"])
    , ("CHICKEN_REPOSITORY_PATH", repoPath)
    , ("CHICKEN_INSTALL_REPOSITORY", distPath)
    , ("LD_LIBRARY_PATH", "/usr/lib")
    ]
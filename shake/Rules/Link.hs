{- shake/Rules/Link.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}

module Rules.Link
  ( linkExe
  , linkWithDeps
  , getChickenEnv
  , unsafeLinkExe  -- Only for when you're 100% sure
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
-- Safe Linking with Phantom Types
-- ============================================================

-- | Safe linking: Objects + Dependencies → Executable
-- The phantom type 'Exe ensures this only produces executables
linkExe :: [Artifact 'Obj] -> FilePath -> Action (Artifact 'Exe)
linkExe objs outPath = do
  need (map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  let objPaths = map getPath objs
  cmd_ ("csc" :: String) ("-o" : outPath : objPaths)
  
  -- Return with CORRECT phantom type witness
  return $ mkExe outPath

-- | Safe linking with dependencies (full -uses flag support)
-- Phantom type 'Exe guarantees output is an executable
linkWithDeps :: [Artifact 'Obj] -> [String] -> FilePath -> Action (Artifact 'Exe)
linkWithDeps objs deps outPath = do
  need (map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  
  let objPaths = map getPath objs
  
  -- All dependencies as -uses flags (SRFI, chicken, custom all the same)
  let usesFlags = concatMap (\d -> ["-uses", d]) deps
  
  let args = ["-o", outPath] ++ usesFlags ++ objPaths
  
  cmd_ envOpts ("csc" :: String) args
  
  -- Return with CORRECT phantom type witness
  return $ mkExe outPath

-- | Unsafe linking: only use when you KNOW the file is executable
-- This is a last resort - prefer linkExe or linkWithDeps
unsafeLinkExe :: FilePath -> Artifact 'Exe
unsafeLinkExe = mkExe

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

-- ============================================================
-- Additional type-safe helpers
-- ============================================================

-- | Verify object file can actually be linked before attempting
verifyLinkable :: Artifact 'Obj -> Either String ()
verifyLinkable art =
  if canBeLinked art
    then Right ()
    else Left $ "Cannot link: " ++ getPath art

-- | Batch verify multiple objects
verifyLinkableObjects :: [Artifact 'Obj] -> Either String ()
verifyLinkableObjects objs =
  case filter (not . canBeLinked) objs of
    [] -> Right ()
    bad -> Left $ "Cannot link objects: " ++ show (map getPath bad)
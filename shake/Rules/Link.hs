{- shake/Rules/Link.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}

module Rules.Link
  ( linkExe
  , linkWithDeps
  , getChickenEnv
  , unsafeLinkExe
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
-- Note: All objects must be compiled as units except the main entry point
linkExe :: [Artifact 'Obj] -> FilePath -> Action (Artifact 'Exe)
linkExe objs outPath = do
  need (map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  
  let objPaths = map getPath objs
  
  -- Link with Chicken runtime (csc automatically links chicken runtime)
  let args = ["-o", outPath] ++ objPaths
  
  cmd_ envOpts ("csc" :: String) args
  
  return $ mkExe outPath

-- | Safe linking with dependencies (full -uses flag support)
linkWithDeps :: [Artifact 'Obj] -> [String] -> FilePath -> Action (Artifact 'Exe)
linkWithDeps objs deps outPath = do
  need (map getPath objs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  
  let objPaths = map getPath objs
  
  -- All dependencies as -uses flags
  let usesFlags = concatMap (\d -> ["-uses", d]) deps
  
  -- csc automatically links chicken runtime, no need for -lchicken
  let args = ["-o", outPath] ++ usesFlags ++ objPaths
  
  cmd_ envOpts ("csc" :: String) args
  
  return $ mkExe outPath

unsafeLinkExe :: FilePath -> Artifact 'Exe
unsafeLinkExe = mkExe

-- ============================================================
-- Environment Setup
-- ============================================================

getChickenEnv :: IO [(String, String)]
getChickenEnv = do
  home <- Dir.getHomeDirectory
  projectRoot <- Dir.getCurrentDirectory
  sysEnv <- getEnvironment
  let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)

  let corePath = projectRoot </> "core"
  let modulesPath = projectRoot </> "modules"
  let distPath = projectRoot </> "dist"
  
  let includePath = intercalate ":" [corePath, modulesPath, distPath, projectRoot, ".", "_build"]

  -- IMPORTANT: Avoid overriding CHICKEN_REPOSITORY_PATH unless the user already set it.
  -- Overriding it without the system repository path can break standard modules like (chicken bitwise).
  let extraRepoPrefix = intercalate ":" [distPath, corePath, modulesPath, projectRoot, home </> ".chicken"]
  let repoEnv =
        if null sysEnvRepo
          then []
          else [("CHICKEN_REPOSITORY_PATH", intercalate ":" [extraRepoPrefix, sysEnvRepo])]

  return $
    [ ("CHICKEN_INCLUDE_PATH", includePath)
    , ("LD_LIBRARY_PATH", "/usr/lib")
    ] ++ repoEnv

-- ============================================================
-- Additional type-safe helpers
-- ============================================================

verifyLinkable :: Artifact 'Obj -> Either String ()
verifyLinkable art =
  if canBeLinked art
    then Right ()
    else Left $ "Cannot link: " ++ getPath art

verifyLinkableObjects :: [Artifact 'Obj] -> Either String ()
verifyLinkableObjects objs =
  case filter (not . canBeLinked) objs of
    [] -> Right ()
    bad -> Left $ "Cannot link objects: " ++ show (map getPath bad)
{- shake/Rules/ModuleLinking.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.ModuleLinking
  ( linkHiddenExe
  , withHiddenRepoEnv
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import System.Environment (getEnvironment, lookupEnv, setEnv, unsetEnv)
import qualified System.Directory as Dir
import Data.Maybe (fromMaybe)
import Data.List (intercalate)

-- | Link executable using a hidden/temporary CHICKEN_REPOSITORY_PATH so
-- that private/generated units in dest/modules are visible only for this
-- link invocation and do not pollute the global environment.
linkHiddenExe :: [FilePath] -> [String] -> FilePath -> Action ()
linkHiddenExe objPaths deps outPath = do
  need objPaths
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)

  sysEnv <- liftIO getEnvironment
  let projectRoot = "." -- Called from project root in Shake
  let destModules = projectRoot </> "dest" </> "modules"
  let destCore = projectRoot </> "dest" </> "core"
  let destExamples = projectRoot </> "dest" </> "examples"
  let corePath = projectRoot </> "core"
  let extra = intercalate ":" $ filter (not . null) [destCore, destModules, destExamples, corePath, projectRoot]
  let repoEnv = ("CHICKEN_REPOSITORY_PATH", extra)

  -- Format -uses flags
  let usesFlags = concatMap (\d -> ["-uses", d]) deps

  let args = ["-o", outPath] ++ usesFlags ++ objPaths

  cmd_ [AddEnv (fst repoEnv) (snd repoEnv)] ("csc" :: String) args

-- | A helper to run an Action with CHICKEN_REPOSITORY_PATH set to dest modules
withHiddenRepoEnv :: Action a -> Action a
withHiddenRepoEnv act = do
  -- Temporarily set CHICKEN_REPOSITORY_PATH in the process environment
  let var = "CHICKEN_REPOSITORY_PATH"
  sysEnv <- liftIO getEnvironment
  let projectRoot = "."
  let destModules = projectRoot </> "dest" </> "modules"
  let destCore = projectRoot </> "dest" </> "core"
  let destExamples = projectRoot </> "dest" </> "examples"
  let corePath = projectRoot </> "core"
  let extra = intercalate ":" $ filter (not . null) [destCore, destModules, destExamples, corePath, projectRoot]

  old <- liftIO $ lookupEnv var
  liftIO $ setEnv var extra
  res <- act
  -- restore previous environment
  liftIO $ case old of
    Nothing -> unsetEnv var
    Just v  -> setEnv var v
  return res

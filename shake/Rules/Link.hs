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
import Control.Monad (filterM, forM)
import qualified System.Directory as Dir
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate, partition, isPrefixOf, isInfixOf)

import Chicken

-- | Format a normalized dependency into a csc-friendly -uses token.
-- Converts e.g. "chicken.base" -> "(chicken base)", leaves
-- "srfi-1" and "scheme" alone, and passes custom module names through.
formatUse :: String -> String
formatUse d
  | "chicken." `isPrefixOf` d =
      let rest = drop (length ("chicken." :: String)) d
      in "(chicken " ++ rest ++ ")"
  | "chicken-" `isPrefixOf` d =
      let rest = drop (length ("chicken-" :: String)) d
      in "(chicken " ++ rest ++ ")"
  | otherwise = d

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

  sysEnv <- liftIO getEnvironment
  let profFlags = case lookup "CHICKEN_PROFILE_FLAGS" sysEnv of
        Just s -> words s
        Nothing -> []

  let objPaths = map getPath objs

  -- Link with Chicken runtime (csc automatically links chicken runtime)
  let args = profFlags ++ ["-o", outPath] ++ objPaths

  cmd_ envOpts ("csc" :: String) args
  
  return $ mkExe outPath

-- | Safe linking with dependencies (no -uses for pre-compiled objects)
linkWithDeps :: [Artifact 'Obj] -> [FilePath] -> [String] -> FilePath -> Action (Artifact 'Exe)
linkWithDeps objs mainSrcs deps outPath = do
  need (map getPath objs ++ mainSrcs)
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  let objPaths = map getPath objs
  -- 依存に-usesを必ず付与
  let usesFlags = concatMap (\d -> ["-uses", formatUse d]) deps
  sysEnv <- liftIO getEnvironment
  let profFlags = case lookup "CHICKEN_PROFILE_FLAGS" sysEnv of
        Just s -> words s
        Nothing -> []

  -- csc automatically links chicken runtime, no need for -lchicken
  -- Rely on -uses and CHICKEN_REPOSITORY_PATH to bring in unit import libraries
  let args = profFlags ++ ["-o", outPath] ++ usesFlags ++ objPaths ++ mainSrcs

  -- Debug: print the final csc command and args
  putInfo $ "[Link] Running csc with args: " ++ show args
  cmd_ envOpts ("csc" :: String) args
  putInfo $ "[Link] csc finished"
  
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

  -- Allow overriding the dest top-level via HATSU_DEST_DIR env var
  let sysHatsuDest = fromMaybe "" (lookup "HATSU_DEST_DIR" sysEnv)
  let destDir = if null sysHatsuDest then "dest" else sysHatsuDest

  let corePath = projectRoot </> "core"
  let modulesPath = projectRoot </> "modules"
  let destPath = projectRoot </> destDir
  let destCorePath = destPath </> "core"
  let destModulesPath = destPath </> "modules"
  let destExamplesPath = destPath </> "examples"
  let destProofsPath = destPath </> "proofs"
  
  let includePath = intercalate ":" [corePath, modulesPath, destCorePath, destModulesPath, destExamplesPath, destProofsPath, projectRoot, ".", "_build"]

  -- IMPORTANT: Avoid overriding CHICKEN_REPOSITORY_PATH unless the user already set it.
  -- Use only the dest directories if present, or fallback to other common paths
  -- Also probe for local 'salmonella-tmp-*' temporary repos that contain built chicken eggs
  entries <- Dir.listDirectory projectRoot
  let salmonellaDirs = filter ("salmonella-tmp-" `isPrefixOf`) entries
  localRepos <- filterM Dir.doesDirectoryExist $ map (\d -> projectRoot </> d </> "repo" </> "lib" </> "chicken" </> "11") salmonellaDirs
  let localRepoParts = localRepos

  -- Prefer system chicken repositories first so that standard units (srfi, chicken.*)
  -- are found before any project-local dest with only raw .o files.
  let systemRepos = ["/usr/lib/chicken","/usr/lib/chicken/11","/usr/local/lib/chicken","/usr/local/lib/chicken/11"]
  let extraRepoPrefix = intercalate ":" (filter (not . null) [destCorePath, destModulesPath, destExamplesPath, corePath, modulesPath, projectRoot, home </> ".chicken"] ++ localRepoParts)
  let combinedParts = filter (not . null) $ [sysEnvRepo] ++ systemRepos ++ [extraRepoPrefix]
  let combinedRepo = intercalate ":" combinedParts
  let repoEnv = [("CHICKEN_REPOSITORY_PATH", combinedRepo)]

  -- Debug: print resolved CHICKEN_REPOSITORY_PATH during shake runs
  putStrLn $ "[Link] CHICKEN_REPOSITORY_PATH=" ++ combinedRepo

  -- Preserve any existing LD_LIBRARY_PATH and append common system library dirs.
  let sysLd = fromMaybe "" (lookup "LD_LIBRARY_PATH" sysEnv)
  let ldPaths = filter (not . null) [sysLd, "/usr/lib", "/usr/local/lib"]
  let ld = intercalate ":" ldPaths

  return $
    [ ("CHICKEN_INCLUDE_PATH", includePath)
    , ("LD_LIBRARY_PATH", ld)
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
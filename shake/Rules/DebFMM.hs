{-# LANGUAGE OverloadedStrings #-}

module Rules.DebFMM
  ( debFmmRules
  ) where

import Control.Monad (forM_, unless)
import Control.Monad.IO.Class (liftIO)
import Development.Shake
import Development.Shake.Command (cmd_)
import Development.Shake.FilePath
import System.IO (hClose, openTempFile)
import qualified System.Directory as Dir
import System.Info (os)
import System.Environment (lookupEnv)

import Chicken (getPath)
import Pipeline (BuildConfig(..), Module, buildModule, regularModule)

debFmmRules :: BuildConfig -> [FilePath] -> Rules ()
debFmmRules cfg coreFiles = do
  phony "fmm-release-check-env" $ do
    putNormal "FMM release environment:"
    putNormal $ "  host-os: " ++ os
    putNormal $ "  packaging-supported: " ++ yesNo (hostSupportsDeb os)
    dpkgDebFound <- liftIO $ hasExecutable "dpkg-deb"
    putNormal $ "  dpkg-deb: " ++ yesNo dpkgDebFound

  phony "fmm-release-build" $ do
    exe <- buildModule (fmmReleaseModule coreFiles) cfg
    putNormal $ "fmm release binary built: " ++ getPath exe

  phony "fmm-release-stage" $ do
    ensureLinuxHost
    exe <- buildModule (fmmReleaseModule coreFiles) cfg
    -- Allow environment overrides for package name / version / arch
    pkgName <- liftIO $ getEnvDefault "DEB_PACKAGE_NAME" debPackageName
    version <- liftIO $ getEnvDefault "DEB_VERSION" "0.0.1"
    arch <- liftIO $ getEnvDefault "DEB_ARCH" "amd64"

    let stageRoot = releaseStageRoot cfg
    let binDir = stageRoot </> "usr" </> "bin"
    let controlDir = stageRoot </> "DEBIAN"
    let docDir = stageRoot </> "usr" </> "share" </> "doc" </> pkgName
    let binPath = binDir </> debBinaryName
    let controlPath = controlDir </> "control"
    let copyrightPath = docDir </> "copyright"
    let readmePath = docDir </> "README.Debian"
    liftIO $ Dir.createDirectoryIfMissing True binDir
    liftIO $ Dir.createDirectoryIfMissing True controlDir
    liftIO $ Dir.createDirectoryIfMissing True docDir
    copyFile' (getPath exe) binPath
    copyFile' "LICENSE" copyrightPath
    writeFileChanged readmePath releaseReadme
    writeFileChanged controlPath (controlFileContentsFor pkgName version arch)
    normalizeStagePermissions controlDir
      [ binPath
      , controlPath
      , copyrightPath
      , readmePath
      ]
    putNormal $ "staged FMM Debian tree under: " ++ stageRoot

  phony "deb-fmm" $ do
    ensureLinuxHost
    need ["fmm-release-stage"]
    dpkgDebFound <- liftIO $ hasExecutable "dpkg-deb"
    unless dpkgDebFound $
      fail "dpkg-deb not found in PATH. Install dpkg-dev on the Linux runner before building deb-fmm."
    packageRoot <- preparePackageRoot cfg
    pkgName <- liftIO $ getEnvDefault "DEB_PACKAGE_NAME" debPackageName
    version <- liftIO $ getEnvDefault "DEB_VERSION" "0.0.1"
    arch <- liftIO $ getEnvDefault "DEB_ARCH" "amd64"
    let outFile = bcDistDir cfg </> (pkgName ++ "_" ++ version ++ "_" ++ arch <.> "deb")
    liftIO $ Dir.createDirectoryIfMissing True (bcDistDir cfg)
    cmd_ ("dpkg-deb" :: String) ["--build", packageRoot, outFile]
    putNormal $ "built Debian package: " ++ outFile

fmmReleaseModule :: [FilePath] -> Module
fmmReleaseModule coreFiles =
  regularModule
    "fmm-release"
    "modules/fmm/fmm_main.scm"
    "tests/fmm_tests.scm"
    (coreFiles ++ ["modules/fmm/fmm_on_goppa_grid.scm"])

hostSupportsDeb :: String -> Bool
hostSupportsDeb hostOs = hostOs == "linux"

ensureLinuxHost :: Action ()
ensureLinuxHost =
  unless (hostSupportsDeb os) $
    fail $ "deb-fmm is supported only on Linux runners; current host is " ++ os

hasExecutable :: FilePath -> IO Bool
hasExecutable tool = do
  resolved <- Dir.findExecutable tool
  pure (maybe False (const True) resolved)

yesNo :: Bool -> String
yesNo True = "yes"
yesNo False = "no"

releaseStageRoot :: BuildConfig -> FilePath
releaseStageRoot cfg = bcDistDir cfg </> "fmm-release" </> "pkgroot"

debPackageName :: FilePath
debPackageName = "hatsu-fmm"

debBinaryName :: FilePath
debBinaryName = "hatsu-fmm"

-- Read an environment variable with a fallback default
getEnvDefault :: String -> String -> IO String
getEnvDefault key def = do
  m <- lookupEnv key
  pure $ maybe def id m

-- Construct control file contents dynamically using env overrides
controlFileContentsFor :: String -> String -> String -> String
controlFileContentsFor pkgName version arch = unlines
  [ "Package: " ++ pkgName
  , "Version: " ++ version
  , "Section: science"
  , "Priority: optional"
  , "Architecture: " ++ arch
  , "Maintainer: Yoshihiro Hasegawa <je-suis-1oeuf-devautour@proton.me>"
  , "Description: Standalone Fast Multipole Method release for HatsuYakitori"
  ]

releaseReadme :: String
releaseReadme = unlines
  [ "This package currently stages the standalone FMM CLI entrypoint."
  , ""
  , "The first implementation slice provides a Linux-only packaging path for CI."
  , "Future changes will add the stable CLI surface, the C ABI shared library,"
  , "and richer self-check and capability reporting modes."
  ]

normalizeStagePermissions :: FilePath -> [FilePath] -> Action ()
normalizeStagePermissions controlDir payloadFiles = do
  cmd_ ("chmod" :: String) ["0755", controlDir]
  forM_ payloadFiles $ \path -> do
    let mode
          | takeFileName path == debBinaryName = "0755"
          | otherwise = "0644"
    cmd_ ("chmod" :: String) [mode, path]

preparePackageRoot :: BuildConfig -> Action FilePath
preparePackageRoot cfg = do
  let sourceRoot = releaseStageRoot cfg
  tempBase <- liftIO Dir.getTemporaryDirectory
  tempRoot <- liftIO $ do
    (tempPath, tempHandle) <- openTempFile tempBase (debPackageName ++ "-pkgroot-")
    hClose tempHandle
    Dir.removeFile tempPath
    Dir.createDirectory tempPath
    pure tempPath
  pkgName <- liftIO $ getEnvDefault "DEB_PACKAGE_NAME" debPackageName
  let binDir = tempRoot </> "usr" </> "bin"
  let controlDir = tempRoot </> "DEBIAN"
  let docDir = tempRoot </> "usr" </> "share" </> "doc" </> pkgName
  let binPath = binDir </> debBinaryName
  let controlPath = controlDir </> "control"
  let copyrightPath = docDir </> "copyright"
  let readmePath = docDir </> "README.Debian"
  liftIO $ Dir.createDirectoryIfMissing True binDir
  liftIO $ Dir.createDirectoryIfMissing True controlDir
  liftIO $ Dir.createDirectoryIfMissing True docDir
  copyFile' (sourceRoot </> "usr" </> "bin" </> debBinaryName) binPath
  copyFile' (sourceRoot </> "DEBIAN" </> "control") controlPath
  copyFile' (sourceRoot </> "usr" </> "share" </> "doc" </> pkgName </> "copyright") copyrightPath
  copyFile' (sourceRoot </> "usr" </> "share" </> "doc" </> pkgName </> "README.Debian") readmePath
  normalizeStagePermissions controlDir
    [ binPath
    , controlPath
    , copyrightPath
    , readmePath
    ]
  pure tempRoot
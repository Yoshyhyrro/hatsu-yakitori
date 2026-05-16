{-# LANGUAGE OverloadedStrings #-}

module Rules.DebFMM
  ( debFmmRules
  ) where

import Control.Monad (unless)
import Control.Monad.IO.Class (liftIO)
import Development.Shake
import Development.Shake.Command (cmd_)
import Development.Shake.FilePath
import qualified System.Directory as Dir
import System.Info (os)

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
    let stageRoot = releaseStageRoot cfg
    let binDir = stageRoot </> "usr" </> "bin"
    let controlDir = stageRoot </> "DEBIAN"
    let docDir = stageRoot </> "usr" </> "share" </> "doc" </> debPackageName
    liftIO $ Dir.createDirectoryIfMissing True binDir
    liftIO $ Dir.createDirectoryIfMissing True controlDir
    liftIO $ Dir.createDirectoryIfMissing True docDir
    copyFile' (getPath exe) (binDir </> debBinaryName)
    copyFile' "LICENSE" (docDir </> "copyright")
    writeFileChanged (docDir </> "README.Debian") releaseReadme
    writeFileChanged (controlDir </> "control") controlFileContents
    putNormal $ "staged FMM Debian tree under: " ++ stageRoot

  phony "deb-fmm" $ do
    ensureLinuxHost
    need ["fmm-release-stage"]
    dpkgDebFound <- liftIO $ hasExecutable "dpkg-deb"
    unless dpkgDebFound $
      fail "dpkg-deb not found in PATH. Install dpkg-dev on the Linux runner before building deb-fmm."
    let outFile = bcDistDir cfg </> debPackageFileName
    liftIO $ Dir.createDirectoryIfMissing True (bcDistDir cfg)
    cmd_ ("dpkg-deb" :: String) ["--build", releaseStageRoot cfg, outFile]
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

debVersion :: String
debVersion = "0.0.1"

debArchitecture :: String
debArchitecture = "amd64"

debPackageFileName :: FilePath
debPackageFileName = debPackageName ++ "_" ++ debVersion ++ "_" ++ debArchitecture <.> "deb"

controlFileContents :: String
controlFileContents = unlines
  [ "Package: " ++ debPackageName
  , "Version: " ++ debVersion
  , "Section: science"
  , "Priority: optional"
  , "Architecture: " ++ debArchitecture
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
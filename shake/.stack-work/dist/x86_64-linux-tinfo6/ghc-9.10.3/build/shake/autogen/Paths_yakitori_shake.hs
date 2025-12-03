{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_yakitori_shake (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/mnt/c/Users/tyuuw/hatsu-yakitori/shake/.stack-work/install/x86_64-linux-tinfo6/1f8d984613172aec1bee3687a9ecd657567a0629b817a0febeb914ce41b429d0/9.10.3/bin"
libdir     = "/mnt/c/Users/tyuuw/hatsu-yakitori/shake/.stack-work/install/x86_64-linux-tinfo6/1f8d984613172aec1bee3687a9ecd657567a0629b817a0febeb914ce41b429d0/9.10.3/lib/x86_64-linux-ghc-9.10.3-56e0/yakitori-shake-0.1.0.0-EruoJI8U9KaiPs6SJ2I3S-shake"
dynlibdir  = "/mnt/c/Users/tyuuw/hatsu-yakitori/shake/.stack-work/install/x86_64-linux-tinfo6/1f8d984613172aec1bee3687a9ecd657567a0629b817a0febeb914ce41b429d0/9.10.3/lib/x86_64-linux-ghc-9.10.3-56e0"
datadir    = "/mnt/c/Users/tyuuw/hatsu-yakitori/shake/.stack-work/install/x86_64-linux-tinfo6/1f8d984613172aec1bee3687a9ecd657567a0629b817a0febeb914ce41b429d0/9.10.3/share/x86_64-linux-ghc-9.10.3-56e0/yakitori-shake-0.1.0.0"
libexecdir = "/mnt/c/Users/tyuuw/hatsu-yakitori/shake/.stack-work/install/x86_64-linux-tinfo6/1f8d984613172aec1bee3687a9ecd657567a0629b817a0febeb914ce41b429d0/9.10.3/libexec/x86_64-linux-ghc-9.10.3-56e0/yakitori-shake-0.1.0.0"
sysconfdir = "/mnt/c/Users/tyuuw/hatsu-yakitori/shake/.stack-work/install/x86_64-linux-tinfo6/1f8d984613172aec1bee3687a9ecd657567a0629b817a0febeb914ce41b429d0/9.10.3/etc"

getBinDir     = catchIO (getEnv "yakitori_shake_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "yakitori_shake_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "yakitori_shake_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "yakitori_shake_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "yakitori_shake_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "yakitori_shake_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'

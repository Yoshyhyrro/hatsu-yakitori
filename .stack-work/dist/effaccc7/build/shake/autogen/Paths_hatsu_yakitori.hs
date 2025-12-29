{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_hatsu_yakitori (
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
version = Version [0,0,2,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "C:\\Users\\tyuuw\\Documents\\test_clone\\hatsu-yakitori\\.stack-work\\install\\14fefa73\\bin"
libdir     = "C:\\Users\\tyuuw\\Documents\\test_clone\\hatsu-yakitori\\.stack-work\\install\\14fefa73\\lib\\x86_64-windows-ghc-9.6.6\\hatsu-yakitori-0.0.2.0-NFcHsCYT383L6k3iupQeY-shake"
dynlibdir  = "C:\\Users\\tyuuw\\Documents\\test_clone\\hatsu-yakitori\\.stack-work\\install\\14fefa73\\lib\\x86_64-windows-ghc-9.6.6"
datadir    = "C:\\Users\\tyuuw\\Documents\\test_clone\\hatsu-yakitori\\.stack-work\\install\\14fefa73\\share\\x86_64-windows-ghc-9.6.6\\hatsu-yakitori-0.0.2.0"
libexecdir = "C:\\Users\\tyuuw\\Documents\\test_clone\\hatsu-yakitori\\.stack-work\\install\\14fefa73\\libexec\\x86_64-windows-ghc-9.6.6\\hatsu-yakitori-0.0.2.0"
sysconfdir = "C:\\Users\\tyuuw\\Documents\\test_clone\\hatsu-yakitori\\.stack-work\\install\\14fefa73\\etc"

getBinDir     = catchIO (getEnv "hatsu_yakitori_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "hatsu_yakitori_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "hatsu_yakitori_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "hatsu_yakitori_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hatsu_yakitori_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hatsu_yakitori_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '\\'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/' || c == '\\'

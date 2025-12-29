{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_hatsu_yakitori (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "hatsu_yakitori"
version :: Version
version = Version [0,0,2,0] []

synopsis :: String
synopsis = "Shake-based build system for Chicken Scheme project"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/Yoshyhyrro/hatsu-yakitori#readme"

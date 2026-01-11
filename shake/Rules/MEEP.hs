{- shake/Rules/MEEP.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module Rules.MEEP
  ( meepRules
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir

import Chicken
import qualified Rules.Link as Link

-- ============================================================
-- MEEP Rules
-- ============================================================

meepRules :: Rules ()
meepRules = do
  "examples/meep/*.scm" %> \out -> do
    putInfo $ "MEEP: " ++ out
    return ()
  
  "dest/meep_app" <.> exe %> \out -> do
    let meepMain = "examples/meep/main.scm"
    need [meepMain]
    
    liftIO $ Dir.createDirectoryIfMissing True (takeDirectory out)
    
    env <- liftIO Link.getChickenEnv
    let envOpts = map (uncurry AddEnv) env
    
    putInfo $ "Building MEEP: " ++ out
    cmd_ envOpts ("csc" :: String) ["-o", out, meepMain]
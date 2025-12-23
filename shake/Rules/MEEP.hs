{- shake/Rules/MEEP.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module Rules.MEEP
  ( meepRules
  , buildMeepExe
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import Chicken
import Rules (buildArtifact, ChickenOp(..))
import qualified Link

meepRules :: Rules ()
meepRules = do
  phony "meep" $ do
    putInfo "Building MEEP simulation engine..."
    exe <- buildMeepExe "examples/meep/main.scm"
    need [getPath exe]
    putInfo $ "MEEP build complete: " ++ getPath exe

  phony "meep-engine" $ do
    exe <- buildMeepExe "examples/meep/main.scm"
    need [getPath exe]

buildMeepExe :: FilePath -> Action (Artifact 'Exe)
buildMeepExe mainSrc = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  
  -- コンパイルフラグ（srfi-1, srfi-69, chicken.bitwise を明示的に指定）
  let compileFlags = "-O3 -d0 -uses srfi-1 -uses srfi-69 -uses chicken.bitwise"
  
  -- リンクフラグ：-uses で動的リンク対象を指定
  -- Link.hs が自動的に -lsrfi-X に変換する
  let linkFlags = "-O3 -d0 -uses srfi-1 -uses srfi-69 -uses chicken.bitwise"
  
  physCoreUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_physics_core.scm") compileFlags)
  optUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_optimization.scm") compileFlags)
  quiverUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_quiver_safety.scm") compileFlags)
  
  let physCore = toObjArtifact physCoreUnit
  let opt = toObjArtifact optUnit
  let quiver = toObjArtifact quiverUnit
  
  Link.linkExe [quiver, opt, physCore]
               (Artifact $ projectRoot </> mainSrc)
               linkFlags
               "dist/meep"

toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
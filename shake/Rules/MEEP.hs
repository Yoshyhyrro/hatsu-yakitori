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

-- | MEEP(物理シミュレーション)専用のビルドルール
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

-- | MEEP実行ファイルの構築
buildMeepExe :: FilePath -> Action (Artifact 'Exe)
buildMeepExe mainSrc = do
  projectRoot <- liftIO Dir.getCurrentDirectory
  
  let cflags = "-O3 -d0"
  
  -- 1. 物理コア
  physCoreUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_physics_core.scm") cflags)
  let physCore = toObjArtifact physCoreUnit
  
  -- 2. 最適化モジュール
  optUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_optimization.scm") cflags)
  let opt = toObjArtifact optUnit
  
  -- 3. Quiver Safety
  quiverUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_quiver_safety.scm") cflags)
  let quiver = toObjArtifact quiverUnit
  
  -- 4. リンク
  -- 【修正】静的リンクに必要なフラグを追加
  let linkFlags = cflags ++ " -uses kak_physics_core -uses kak_optimization -uses kak_quiver_safety"

  -- 【修正】buildArtifact ではなく Link.linkExe を使用する
  -- これにより、Link.hs に書かれている srfi-1.o などのパス設定が適用されます
  Link.linkExe 
    [physCore, opt, quiver] 
    (Artifact $ projectRoot </> mainSrc) 
    linkFlags
    "dist/meep"

-- Helper
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
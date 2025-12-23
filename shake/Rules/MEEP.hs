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

-- | MEEP(物理シミュレーション)専用のビルドルール
meepRules :: Rules ()
meepRules = do
  phony "meep" $ do
    putInfo "Building MEEP simulation engine..."
    exe <- buildMeepExe "examples/meep/main.scm"
    need [getPath exe]
    putInfo $ "MEEP build complete: " ++ getPath exe

  -- "meep-engine" というターゲット名でもビルドできるようにする
  phony "meep-engine" $ do
    exe <- buildMeepExe "examples/meep/main.scm"
    need [getPath exe]

-- | MEEP実行ファイルの構築
-- 物理コア (kak_physics_core) と安全な波面更新 (kak_quiver_safety) をリンクする
buildMeepExe :: FilePath -> Action (Artifact 'Exe)
buildMeepExe mainSrc = do
  -- プロジェクトルートを取得
  projectRoot <- liftIO Dir.getCurrentDirectory
  
  let cflags = "-O3 -d0"
  
  -- 1. 物理コアのコンパイル (Unit → Obj に変換)
  physCoreUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_physics_core.scm") cflags)
  let physCore = toObjArtifact physCoreUnit
  
  -- 2. 最適化モジュールのコンパイル (Unit → Obj に変換)
  optUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_optimization.scm") cflags)
  let opt = toObjArtifact optUnit
  
  -- 3. Quiver Safety(物理モード)のコンパイル (Unit → Obj に変換)
  quiverUnit <- buildArtifact (CompileUnit (Artifact $ projectRoot </> "modules/kak_quiver_safety.scm") cflags)
  let quiver = toObjArtifact quiverUnit
  
  -- 4. メインプログラムのリンク (topoGCは除外)
  buildArtifact (LinkExe 
    [physCore, opt, quiver] 
    (Artifact $ projectRoot </> mainSrc) 
    cflags
    "dist/meep")

-- Helper: Unit を Obj に変換
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
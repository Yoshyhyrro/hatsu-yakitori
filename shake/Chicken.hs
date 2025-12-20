{- Chicken.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE StandaloneDeriving #-}

module Chicken where

import Development.Shake.Classes
import GHC.Generics (Generic)
import System.FilePath (takeFileName, replaceExtension, (</>))
import Data.Hashable (Hashable)
import Data.Binary (Binary)
import Control.DeepSeq (NFData)

-- | ファイルの種別を表すデータカインド
data ArtifactType
    = Src   -- ^ Schemeソース (.scm)
    | Obj   -- ^ コンパイル済みオブジェクト (.o)
    | Unit  -- ^ ライブラリユニット (.o + .import.scm)
    | Exe   -- ^ 実行ファイル
    deriving (Show, Eq, Generic)

-- | ファイルパスをラップするPhantom Type
-- 't' パラメータにより、これが何のファイルかを型レベルで保持する
newtype Artifact (t :: ArtifactType) = Artifact { getPath :: FilePath }
    deriving (Show, Eq, Hashable, Binary, NFData, Generic)

-- | ヘルパー: パス操作
toObjectPath :: Artifact 'Src -> Artifact 'Obj
toObjectPath (Artifact p) = Artifact $ "dist" </> replaceExtension (takeFileName p) "o"

toUnitPath :: Artifact 'Src -> Artifact 'Unit
toUnitPath (Artifact p) = Artifact $ "dist" </> replaceExtension (takeFileName p) "o"

-- 新しく追加: モジュールに対応する .import.scm のパスを計算する
unitImportPath :: Artifact 'Src -> FilePath
unitImportPath (Artifact p) = "dist" </> replaceExtension (takeFileName p) "import.scm"

-- | 拡張子を強制的に付与するスマートコンストラクタ(安全性のため)
source :: FilePath -> Artifact 'Src
source p = Artifact p

executable :: FilePath -> Artifact 'Exe
executable p = Artifact p

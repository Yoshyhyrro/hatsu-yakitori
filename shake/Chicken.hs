{- shake/Chicken.hs -}
module Chicken 
    ( compileUnit
    , linkProgram
    , cleanArtifacts
    , objectFile
    ) where

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Data.List (isSuffixOf)

-- | ソースファイルからオブジェクトファイルのパスを計算
objectFile :: FilePath -> FilePath
objectFile src = replaceExtension src "o"

-- | ユニット（ライブラリ/モジュール）のコンパイル
-- -c: コンパイルのみ
-- -J: importライブラリ生成
-- -unit: ユニット名をファイルパスから決定（多重定義エラー回避）
compileUnit :: String -> FilePath -> FilePath -> Action ()
compileUnit flags src out = do
    let unitName = dropExtension src -- core/machine_constants.scm -> core/machine_constants
    putInfo $ "Compiling unit: " ++ unitName
    cmd_ "csc" flags "-c -J" "-unit" unitName src "-o" out

-- | 実行ファイルのリンク
linkProgram :: String -> [FilePath] -> [FilePath] -> FilePath -> Action ()
linkProgram flags sources objects out = do
    putInfo $ "Linking executable: " ++ out
    -- ソースと依存オブジェクトをまとめてリンク
    cmd_ "csc" flags "-I" "." (sources ++ objects) "-o" out

-- | クリーンアップ対象のパターンリスト
cleanArtifacts :: [FilePattern]
cleanArtifacts = 
    [ "//*.o"
    , "//*.import.scm"
    , "//*.link"
    , "//*.deploy"
    ]
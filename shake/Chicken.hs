{- shake/Chicken.hs -}
{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

module Chicken 
    ( -- * Types
      ChickenUnit(..)
    , ChickenObject(..)
    , ChickenExec(..)
    
    -- * Rules
    , chickenRules
    , needUnit
    , needObject
    
    -- * Low-level operations
    , compileUnit
    , linkProgram
    , cleanArtifacts
    , objectFile
    ) where

import Development.Shake
import Development.Shake.Classes
import Development.Shake.FilePath
import Development.Shake.Rule
import Development.Shake.Command
import Data.List (isSuffixOf)
import Data.Typeable
import GHC.Generics
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BS8

-- ============================================================================
-- Phantom Types for Type Safety
-- ============================================================================

-- | ユニット（コンパイル済みモジュール）を表すPhantom Type
-- Phantom type parameterはコンパイル時の型安全性を提供しますが、
-- 実行時には消去されます
newtype ChickenUnit = ChickenUnit FilePath
    deriving (Show, Eq, Typeable, Hashable, Binary, NFData, Generic)

-- | オブジェクトファイルを表すPhantom Type
newtype ChickenObject = ChickenObject FilePath
    deriving (Show, Eq, Typeable, Hashable, Binary, NFData, Generic)

-- | 実行ファイルを表すPhantom Type
newtype ChickenExec = ChickenExec FilePath
    deriving (Show, Eq, Typeable, Hashable, Binary, NFData, Generic)

-- RuleResult型の関連付け - ユニットは何も返さない
type instance RuleResult ChickenUnit = ()
type instance RuleResult ChickenObject = ()
type instance RuleResult ChickenExec = ()

-- ============================================================================
-- Rule Implementation
-- ============================================================================

-- | Chickenのビルドルールを登録
-- addBuiltinRuleを使用して、型安全なビルドルールを定義
chickenRules :: String -> Rules ()
chickenRules flags = do
    -- ユニットのコンパイルルール
    addBuiltinRule noLint noIdentity $ runUnit flags
    -- オブジェクトのコンパイルルール
    addBuiltinRule noLint noIdentity $ runObject flags
    -- 実行ファイルのリンクルール
    addBuiltinRule noLint noIdentity $ runExec flags

-- | ユニットのビルドルール実装
runUnit :: String -> BuiltinRun ChickenUnit ()
runUnit flags (ChickenUnit src) oldStore mode = do
    let unitName = takeBaseName src
    
    -- REMOVED liftIO HERE
    exists <- doesFileExist src
    if not exists
        then fail $ "Source file not found: " ++ src
        else do
            -- BS.readFile IS IO, SO KEEP liftIO HERE
            content <- liftIO $ BS.readFile src
            let newStore = content
            
            -- 変更検出
            case mode of
                RunDependenciesSame | Just old <- oldStore, old == newStore -> 
                    -- 何も変わっていない
                    return $ RunResult ChangedNothing newStore ()
                _ -> do
                    -- 再コンパイル
                    let out = replaceExtension src "o"
                    putInfo $ "Compiling unit: " ++ unitName
                    cmd_ "csc" flags "-c -J" "-unit" unitName src "-o" out
                    return $ RunResult ChangedRecomputeDiff newStore ()

-- | オブジェクトのビルドルール実装
runObject :: String -> BuiltinRun ChickenObject ()
runObject flags (ChickenObject src) oldStore mode = do
    -- REMOVED liftIO HERE
    exists <- doesFileExist src
    if not exists
        then fail $ "Source file not found: " ++ src
        else do
            content <- liftIO $ BS.readFile src
            let newStore = content
            
            case mode of
                RunDependenciesSame | Just old <- oldStore, old == newStore ->
                    return $ RunResult ChangedNothing newStore ()
                _ -> do
                    let out = replaceExtension src "o"
                    putInfo $ "Compiling object: " ++ src
                    cmd_ "csc" flags "-c" src "-o" out
                    return $ RunResult ChangedRecomputeDiff newStore ()

-- | 実行ファイルのビルドルール実装
runExec :: String -> BuiltinRun ChickenExec ()
runExec flags (ChickenExec out) oldStore mode = do
    -- 実行ファイルは常に依存関係が変わったら再リンク
    case mode of
        RunDependenciesSame | Just old <- oldStore -> 
            return $ RunResult ChangedNothing old ()
        _ -> do
            putInfo $ "Linking executable: " ++ out
            -- リンクは外部で行われるため、ここでは何もしない
            return $ RunResult ChangedRecomputeDiff BS.empty ()

-- ============================================================================
-- Public API - Type-safe wrappers
-- ============================================================================

-- | ユニットへの依存を宣言（型安全）
needUnit :: FilePath -> Action ()
needUnit src = do
    () <- apply1 $ ChickenUnit src
    return ()

-- | オブジェクトへの依存を宣言（型安全）
needObject :: FilePath -> Action ()
needObject src = do
    () <- apply1 $ ChickenObject src
    return ()

-- ============================================================================
-- Low-level Operations (後方互換性)
-- ============================================================================

-- | ソースファイルからオブジェクトファイルのパスを計算
objectFile :: FilePath -> FilePath
objectFile src = replaceExtension src "o"

-- | ユニット（ライブラリ/モジュール）のコンパイル
compileUnit :: String -> FilePath -> FilePath -> Action ()
compileUnit flags src out = do
    let unitName = takeBaseName src 
    putInfo $ "Compiling unit: " ++ unitName
    cmd_ "csc" flags "-c -J" "-unit" unitName src "-o" out

-- | 実行ファイルのリンク
linkProgram :: String -> [FilePath] -> [FilePath] -> FilePath -> Action ()
linkProgram flags sources objects out = do
    putInfo $ "Linking executable: " ++ out
    cmd_ "csc" flags "-I" "." (sources ++ objects) "-o" out

-- | クリーンアップ対象のパターンリスト
cleanArtifacts :: [FilePattern]
cleanArtifacts = 
    [ "//*.o"
    , "//*.import.scm"
    , "//*.link"
    , "//*.deploy"
    ]
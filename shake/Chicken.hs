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
import Control.Monad.IO.Class (liftIO)
import Data.List (isSuffixOf)
import Data.Typeable
import GHC.Generics
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BS8
import System.Directory (createDirectoryIfMissing, removePathForcibly, removeFile)

-- ============================================================================
-- Phantom Types for Type Safety
-- ============================================================================

-- | ユニット(コンパイル済みモジュール)を表すPhantom Type
newtype ChickenUnit = ChickenUnit FilePath
    deriving (Show, Eq, Typeable, Hashable, Binary, NFData, Generic)

-- | オブジェクトファイルを表すPhantom Type
newtype ChickenObject = ChickenObject FilePath
    deriving (Show, Eq, Typeable, Hashable, Binary, NFData, Generic)

-- | 実行ファイルを表すPhantom Type
newtype ChickenExec = ChickenExec FilePath
    deriving (Show, Eq, Typeable, Hashable, Binary, NFData, Generic)

-- RuleResult型の関連付け
type instance RuleResult ChickenUnit = ()
type instance RuleResult ChickenObject = ()
type instance RuleResult ChickenExec = ()

-- ============================================================================
-- Rule Implementation
-- ============================================================================

-- | Chickenのビルドルールを登録
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
    let out = "dist" </> replaceExtension (takeFileName src) "o"
    
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
                    putInfo $ "Compiling unit: " ++ unitName
                    
                    -- 一時ファイルを使って原子的にコンパイル
                    withTempFile $ \tmpObj -> do
                        liftIO $ createDirectoryIfMissing True "dist"
                        cmd_ "csc" (words flags) "-c" "-J" "-unit" unitName src "-o" tmpObj
                        -- 成功したら最終的な場所に移動(原子的操作)
                        copyFile' tmpObj out
                    
                    return $ RunResult ChangedRecomputeDiff newStore ()

-- | オブジェクトのビルドルール実装
runObject :: String -> BuiltinRun ChickenObject ()
runObject flags (ChickenObject src) oldStore mode = do
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
                    
                    -- 一時ファイルを使って原子的にコンパイル
                    withTempFile $ \tmpObj -> do
                        cmd_ "csc" (words flags) "-c" src "-o" tmpObj
                        -- 成功したら最終的な場所に移動
                        copyFile' tmpObj out
                    
                    return $ RunResult ChangedRecomputeDiff newStore ()

-- | 実行ファイルのビルドルール実装
runExec :: String -> BuiltinRun ChickenExec ()
runExec flags (ChickenExec out) oldStore mode = do
    case mode of
        RunDependenciesSame | Just old <- oldStore -> 
            return $ RunResult ChangedNothing old ()
        _ -> do
            putInfo $ "Linking executable: " ++ out
            return $ RunResult ChangedRecomputeDiff BS.empty ()

-- ============================================================================
-- Public API - Type-safe wrappers
-- ============================================================================

-- | ユニットへの依存を宣言(型安全)
needUnit :: FilePath -> Action ()
needUnit src = do
    () <- apply1 $ ChickenUnit src
    return ()

-- | オブジェクトへの依存を宣言(型安全)
needObject :: FilePath -> Action ()
needObject src = do
    () <- apply1 $ ChickenObject src
    return ()

-- ============================================================================
-- Low-level Operations (後方互換性)
-- ============================================================================

-- | ソースファイルからオブジェクトファイルのパスを計算
objectFile :: FilePath -> FilePath
objectFile src = "dist" </> replaceExtension (takeFileName src) "o"

-- | ユニット(ライブラリ/モジュール)のコンパイル
compileUnit :: String -> FilePath -> FilePath -> Action ()
compileUnit flags src out = do
    let unitName = takeBaseName src 
    putInfo $ "Compiling unit: " ++ unitName
    
    -- 一時ファイルを使って原子的にコンパイル
    withTempFile $ \tmpObj -> do
        liftIO $ createDirectoryIfMissing True (takeDirectory out)
        cmd_ "csc" (words flags) "-c" "-J" "-unit" unitName src "-o" tmpObj
        -- 成功したら最終的な場所に移動
        copyFile' tmpObj out

-- | 実行ファイルのリンク
linkProgram :: String -> [FilePath] -> [FilePath] -> FilePath -> Action ()
linkProgram flags sources objects out = do
    putInfo $ "Linking executable: " ++ out
    
    -- 一時ファイルを使って原子的にリンク
    withTempFile $ \tmpExe -> do
        liftIO $ createDirectoryIfMissing True (takeDirectory out)
        
        -- フラグを個別の引数として分割
        let compilerFlags = words flags
            -- インクルードパスとライブラリパスを正しく分割
            includePaths = ["-I.", "-Icore", "-Idist", "-I_build"]
            libraryPaths = ["-Ldist"]
            allArgs = compilerFlags ++ includePaths ++ libraryPaths ++ sources ++ objects ++ ["-o", tmpExe]
        
        cmd_ "csc" allArgs
        -- 成功したら最終的な場所に移動
        copyFile' tmpExe out

-- | クリーンアップ対象のパターンリスト
cleanArtifacts :: [FilePattern]
cleanArtifacts = 
    [ "//*.o"
    , "//*.import.scm"
    , "//*.link"
    , "//*.deploy"
    , "dist//*"
    ]
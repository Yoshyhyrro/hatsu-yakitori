{- Rules.hs -}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Rules 
    ( -- * Core Rules
      setupRules
    , buildArtifact
    -- * Helpers
    , getChickenEnv
    ) where

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Classes
import Development.Shake.Rule
import Control.Monad.IO.Class (liftIO)
import Control.Monad (filterM, when)
import qualified System.Directory as Dir
import System.Process (readProcess)
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate)
import qualified Data.ByteString as BS

import Chicken
import qualified Salmonella

-- | ビルド操作を表す GADT
data ChickenOp a where
    CompileObj :: Artifact 'Src -> String -> ChickenOp (Artifact 'Obj)
    CompileUnit :: Artifact 'Src -> String -> ChickenOp (Artifact 'Unit)
    LinkExe :: [Artifact 'Obj] -> Artifact 'Src -> String -> FilePath -> ChickenOp (Artifact 'Exe)

type instance RuleResult (ChickenOp a) = a

-- | ルールのセットアップ関数
setupRules :: Rules ()
setupRules = do
    -- オブジェクトコンパイルのルール定義
    addBuiltinRule noLint noIdentity $ \op@(CompileObj src flags) _ mode -> 
        runCompile op src flags mode

    -- ユニットコンパイルのルール定義
    addBuiltinRule noLint noIdentity $ \op@(CompileUnit src flags) _ mode -> 
        runCompile op src flags mode

    -- リンクのルール定義
    addBuiltinRule noLint noIdentity $ \key old mode -> do
        let LinkExe objs mainSrc flags out = key
        let outExe = Artifact out :: Artifact 'Exe
        
        -- 【修正1-A】 RunDependenciesSame は引数を取らない形に修正 (mode == RunDependenciesSame)
        if mode == RunDependenciesSame 
            then return $ RunResult ChangedNothing mempty outExe
            else do
                need [getPath mainSrc]
                need (map getPath objs)
                putInfo $ "Linking: " ++ out
                
                let objPaths = map getPath objs
                    compilerFlags = words flags
                    includePaths = ["-Idist", "-I.", "-Icore", "-I_build"]
                    libraryPaths = ["-Ldist"]
                    allArgs = compilerFlags ++ includePaths ++ libraryPaths ++ [getPath mainSrc] ++ objPaths ++ ["-o", out]
                
                cmd_ "csc" allArgs
                return $ RunResult ChangedRecomputeDiff mempty outExe

-- | 共通のコンパイルロジック
runCompile :: (Typeable a, Show a, NFData a) 
           => ChickenOp a 
           -> Artifact 'Src 
           -> String 
           -> RunMode    
           -> Action (RunResult a)
runCompile op src flags mode = do
    -- 【修正2】 outPath の型を FilePath と明示的に注釈する (GADT/TypeFamiliesの厳密な型推論を助ける)
    let outPath :: FilePath = case op of
            CompileObj _ _ -> getPath (toObjectPath src)
            CompileUnit _ _ -> getPath (toUnitPath src)
            _ -> error "Impossible pattern in runCompile"
    
    -- ソースファイルの変更監視
    need [srcPath]
    
    -- 【修正1-B】 RunDependenciesSame のパターンマッチも引数を取らない形に修正
    case mode of
        RunDependenciesSame -> do
            -- 依存関係に変更がない場合
            let res = unsafeRes op outPath
            return $ RunResult ChangedNothing mempty res
            
        _ -> do
            -- 再ビルドが必要な場合
            putInfo $ "Compiling: " ++ srcPath
            liftIO $ Dir.createDirectoryIfMissing True "dist"
            
            let isUnit = case op of CompileUnit{} -> True; _ -> False
            let unitArgs = if isUnit 
                           then ["-J", "-unit", takeBaseName srcPath] 
                           else []
            
            withTempFile $ \tmpObj -> do
                cmd_ "csc" (words flags) "-c" unitArgs srcPath "-o" tmpObj
                liftIO $ Dir.copyFile tmpObj outPath
                
                -- .import.scm の処理
                when isUnit $ do
                    let importSrc = replaceExtension srcPath "import.scm"
                    let importDest = "dist" </> takeFileName importSrc
                    liftIO $ do
                        exists <- Dir.doesFileExist importSrc
                        when exists $ Dir.copyFile importSrc importDest

            let result = unsafeRes op outPath
            return $ RunResult ChangedRecomputeDiff mempty result

  where
    -- GADTの型に合わせて戻り値を構築するヘルパー
    unsafeRes :: ChickenOp a -> FilePath -> a
    unsafeRes (CompileObj _ _) p = Artifact p
    unsafeRes (CompileUnit _ _) p = Artifact p
    unsafeRes _ _ = error "Invalid op"

-- | ユーザー向けの型安全なビルドアクション
buildArtifact :: Typeable a => ChickenOp a -> Action a
buildArtifact op = apply1 op

-- | 環境変数の取得ロジック
getChickenEnv :: IO [(String, String)]
getChickenEnv = do
    home <- Dir.getHomeDirectory
    sysEnv <- getEnvironment
    let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)
    
    systemRepo <- fmap (filter (/= '\n')) $ readProcess "csi" ["-R", "chicken.platform", "-e", "(display (car (repository-path)))"] ""
    
    let repoPath = intercalate ":" 
            [ "dist"
            , home </> ".chicken" 
            , systemRepo
            , sysEnvRepo 
            ]
            
    return 
        [ ("CHICKEN_INCLUDE_PATH", "core:dist:.:_build")
        , ("CHICKEN_REPOSITORY_PATH", repoPath)
        , ("CHICKEN_INSTALL_REPOSITORY", "dist")
        ]
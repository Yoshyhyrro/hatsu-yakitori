{- shake/Rules.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Rules
  ( -- * Core Rules
    setupRules
  , buildArtifact
    -- * ChickenOp constructors
  , ChickenOp(CompileObj, CompileUnit, LinkExe)
    -- * Helpers
  , getChickenEnv
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Control.Monad (when, unless, filterM)
import qualified System.Directory as Dir
import System.Process (readProcess)
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate, isSuffixOf, isPrefixOf, isInfixOf)
import qualified Data.ByteString.Char8 as BS8
import Data.Binary (encode)
import qualified Data.ByteString.Base16 as Base16
import qualified Data.ByteString.Lazy as BL

import Chicken

-- | ビルド操作を表す GADT
data ChickenOp a where
  CompileObj  :: Artifact 'Src -> String -> ChickenOp (Artifact 'Obj)
  CompileUnit :: Artifact 'Src -> String -> ChickenOp (Artifact 'Unit)
  LinkExe     :: [Artifact 'Obj] -> Artifact 'Src -> String -> FilePath -> ChickenOp (Artifact 'Exe)

deriving instance Show (ChickenOp a)
deriving instance Eq (ChickenOp a)

-- | ユーザー向けの型安全なビルドアクション
buildArtifact :: ChickenOp a -> Action a
buildArtifact (CompileObj src flags) = do
  let out = artifactPathForCompileObj src flags
  need [out]
  return (Artifact out)

buildArtifact (CompileUnit src flags) = do
  let out = artifactPathForCompileUnit src flags
  need [out]
  -- .import.scm が生成される可能性があるため、ソース側のimportファイルがあれば依存に追加 
  let importSrc = replaceExtension (getPath src) "import.scm"
  exists <- liftIO $ Dir.doesFileExist importSrc
  when exists $ need [importSrc]
  return (Artifact out)

buildArtifact (LinkExe objs mainSrc flags outPath) = do
  
  -- 1. mainSrc も need に追加する
  need (getPath mainSrc : map getPath objs)
  
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  -- 2. コマンドライン引数の最後に mainSrc を追加する
  --    これにより Chicken がこのファイルをメインプログラムとしてコンパイル・リンクします
  let args = words flags ++ ["-o", outPath] ++ map getPath objs ++ [getPath mainSrc]
  
  putInfo $ "[Link] " ++ outPath
  
  -- Ensure CHICKEN_* environment (CHICKEN_REPOSITORY_PATH etc.) is provided
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  cmd_ envOpts ("csc" :: String) args
  
  return (Artifact outPath)

-- | パス生成ヘルパー
hashFlags :: String -> String
hashFlags flags = BS8.unpack $ Base16.encode $ BL.toStrict $ encode flags

artifactPathForCompileObj :: Artifact 'Src -> String -> FilePath
artifactPathForCompileObj (Artifact src) flags = 
  "dist" </> ("obj_" ++ hashFlags flags) </> replaceExtension (takeFileName src) "o"

artifactPathForCompileUnit :: Artifact 'Src -> String -> FilePath
artifactPathForCompileUnit (Artifact src) flags = 
  "dist" </> ("unit_" ++ hashFlags flags) </> replaceExtension (takeFileName src) "o"

-- | ルールのセットアップ
setupRules :: Rules ()
setupRules = do
  -- オブジェクトファイルのコンパイルルール
  "dist/obj_*/*.o" %> \out -> compileAction out False

  -- ユニットファイルのコンパイルルール
  "dist/unit_*/*.o" %> \out -> compileAction out True

  -- インポートファイルのコピールール
  -- ソースディレクトリから dist/unit_*/ へコピーする
  "dist/unit_*/*.import.scm" %> \out -> do
    let dir = takeDirectory out
    let fileName = takeFileName out
    
    -- 標準的なパス + 再帰検索で見つける
    let searchDirs = ["core", "modules", "tools", "."]
    candidates <- liftIO $ concat <$> mapM (findAllFilesRecursive fileName) searchDirs
    
    case candidates of
        (src:_) -> do
            liftIO $ Dir.createDirectoryIfMissing True dir
            copyFile' src out
        [] -> error $ "Could not find .import.scm file for: " ++ fileName

-- | 共通のコンパイルアクション
compileAction :: FilePath -> Bool -> Action ()
compileAction out isUnit = do
  let dir = takeDirectory out
  let baseName = dropExtension (takeFileName out)
  let srcFileName = baseName <.> "scm"

  -- Skip unit compilation for test files
  let isTest = "test" `isPrefixOf` baseName
  let actuallyUnit = isUnit && not isTest

  -- 1. まず標準的なパス構成を確認 (高速化)
  let standardPaths =
        [ "core" </> srcFileName
        , "modules" </> srcFileName
        , "modules" </> baseName </> srcFileName
        , "tools" </> baseName ++ "-tool" </> srcFileName
        , "tests" </> srcFileName
        , srcFileName
        ]

  srcFullPath <- liftIO $ findSourceFile standardPaths
  
  finalSrc <- case srcFullPath of
    Just path -> return path
    Nothing -> do
      -- 2. 見つからない場合、全ディレクトリを再帰検索
      allSrcs <- liftIO $ findAllScmFiles [srcFileName]
      case allSrcs of
        (path:_) -> return path
        []       -> error $ "Source file not found for: " ++ srcFileName ++ " (target: " ++ out ++ ")"

  compileSrc finalSrc out dir baseName actuallyUnit

-- | 実際のコンパイル実行
compileSrc :: FilePath -> FilePath -> FilePath -> String -> Bool -> Action ()
compileSrc srcPath out dir baseName isUnit = do
  env <- liftIO getChickenEnv

  -- 出力ディレクトリの作成を明示的に行う
  liftIO $ Dir.createDirectoryIfMissing True dir
  
  -- ファイルにモジュール定義があるかチェック
  srcContent <- liftIO $ readFile srcPath
  let hasModuleDecl = "(module" `isInfixOf` srcContent  
  let unitArgs = if isUnit && hasModuleDecl
        then [ "-unit", baseName
             , "-emit-import-library", dir </> baseName
             , "-setup-mode"
             , "-regenerate-import-libraries"
             , "-no-warnings"
             ]
        else if isUnit
             then [ "-no-warnings" ]  -- Unit compile without import library
             else []
  
  let envOpts = map (uncurry AddEnv) env
  
  -- プロジェクトルートで実行
  cmd_ envOpts ("csc" :: String) unitArgs ("-c" :: String) srcPath ("-o" :: String) out

  -- 生成された import ファイルの処理
  when (isUnit && hasModuleDecl) $ do
    let importFile = baseName ++ ".import.scm"
    let srcImport = replaceFileName srcPath importFile
    
    liftIO $ do
        exists <- Dir.doesFileExist srcImport
        if exists 
            then putStrLn $ "       (Using existing import: " ++ srcImport ++ ")"
            else return ()

    -- ビルドによって生成された import ファイルを dist/ 直下にコピーして
    --    後続のコンパイルが参照できるようにする (CHICKEN_REPOSITORY_PATH対応)
    let generatedImport = replaceFileName out importFile
    let commonImport = "dist" </> importFile
    
    liftIO $ do
      -- dist/unit_xxx/ 内に生成されたかチェック
      genExists <- Dir.doesFileExist generatedImport
      if genExists
        then do
           Dir.createDirectoryIfMissing True "dist"
           Dir.copyFile generatedImport commonImport
        else do
           -- カレントディレクトリ(ルート)に生成されたかチェック
           rootExists <- Dir.doesFileExist importFile
           if rootExists
             then do
               Dir.createDirectoryIfMissing True "dist"
               Dir.copyFile importFile commonImport
               Dir.removeFile importFile -- ルート汚濁を防ぐため削除
             else return ()

-- | 指定リストから実在する ファイルを探す
findSourceFile :: [FilePath] -> IO (Maybe FilePath)
findSourceFile [] = return Nothing
findSourceFile (path:paths) = do
  if ".import.scm" `isSuffixOf` path
    then findSourceFile paths
    else do
      exists <- Dir.doesFileExist path
      if exists
        then return (Just path)
        else findSourceFile paths

-- | ファイル名を指定して再帰的に検索 (.scm用)
findAllScmFiles :: [String] -> IO [FilePath]
findAllScmFiles targetNames = do
  let searchRoots = ["core", "modules", "tools", "tests", "."]
  concat <$> mapM (findAllFilesRecursive' targetNames) searchRoots

-- | 特定のディレクトリ以下を再帰探索してマッチするファイルを返す (汎用)
findAllFilesRecursive :: String -> FilePath -> IO [FilePath]
findAllFilesRecursive targetName root = findAllFilesRecursive' [targetName] root

findAllFilesRecursive' :: [String] -> FilePath -> IO [FilePath]
findAllFilesRecursive' targetNames currentDir = do
  exists <- Dir.doesDirectoryExist currentDir
  if not exists then return []
  else do
    entries <- Dir.listDirectory currentDir
    -- ファイルのマッチング
    let files = filter (\f -> any (== f) targetNames) entries
    let foundPaths = map (currentDir </>) files
    
    -- サブディレクトリの探索 (隠しファイル/ディレクトリは除外)
    subDirs <- filterM (isValidSubDir currentDir) entries
    nestedMatches <- concat <$> mapM (\sd -> findAllFilesRecursive' targetNames (currentDir </> sd)) subDirs
    
    return $ foundPaths ++ nestedMatches
  where
    isValidSubDir :: FilePath -> FilePath -> IO Bool
    isValidSubDir parent sub = 
        if "." `isPrefixOf` sub 
            then return False 
            else Dir.doesDirectoryExist (parent </> sub)

-- | 環境変数取得
getChickenEnv :: IO [(String, String)]
getChickenEnv = do
  home <- Dir.getHomeDirectory
  projectRoot <- Dir.getCurrentDirectory
  sysEnv <- getEnvironment
  let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)

  -- システムのrepository pathを取得
  systemRepo <-
    fmap (filter (/= '\n')) $
      readProcess "csi" ["-R", "chicken.platform", "-e", "(display (car (repository-path)))"] ""

  let corePath = projectRoot </> "core"
  let repoPath =
        intercalate
          ":"
          [ corePath
          , "dist"
          , home </> ".chicken"
          , systemRepo
          , sysEnvRepo
          ]

  return
    [ ("CHICKEN_INCLUDE_PATH", corePath ++ ":dist:.:_build")
    , ("CHICKEN_REPOSITORY_PATH", repoPath)
    , ("CHICKEN_INSTALL_REPOSITORY", "dist")
    ]
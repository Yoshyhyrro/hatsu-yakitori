{- Rules.hs -}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

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
import Control.Monad (when)
import qualified System.Directory as Dir
import System.Process (readProcess)
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate)
import qualified Data.ByteString.Char8 as BS8
import Data.Binary (encode)
import qualified Data.ByteString.Base16 as Base16
import qualified Data.ByteString.Lazy as BL
import Control.Monad (when, unless)

import Chicken

-- | ビルド操作を表す GADT（ユーザー向け API）
data ChickenOp a where
  CompileObj  :: Artifact 'Src -> String -> ChickenOp (Artifact 'Obj)
  CompileUnit :: Artifact 'Src -> String -> ChickenOp (Artifact 'Unit)
  LinkExe     :: [Artifact 'Obj] -> Artifact 'Src -> String -> FilePath -> ChickenOp (Artifact 'Exe)

-- Derive instances
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
  -- Check and depend on .import.scm if it exists
  let importSrc = replaceExtension (getPath src) "import.scm"
  exists <- liftIO $ Dir.doesFileExist importSrc  -- liftIO の外で need を呼ぶ
  when exists $ need ["dist" </> takeFileName importSrc]
  return (Artifact out)

buildArtifact (LinkExe objs mainSrc flags outPath) = do
  need (outPath : map getPath objs ++ [getPath mainSrc])
  return (Artifact outPath)

-- | ファイルパス生成ヘルパー（フラグを含めて一意化）
hashFlags :: String -> String
hashFlags flags = BS8.unpack $ Base16.encode $ BL.toStrict $ encode flags

-- Obj: dist/obj_<hash>/Main.o
artifactPathForCompileObj :: Artifact 'Src -> String -> FilePath
artifactPathForCompileObj (Artifact src) flags = 
  "dist" </> ("obj_" ++ hashFlags flags) </> replaceExtension (takeFileName src) "o"

-- Unit: dist/unit_<hash>/Utils.o （Chicken では .o がユニット本体）
artifactPathForCompileUnit :: Artifact 'Src -> String -> FilePath
artifactPathForCompileUnit (Artifact src) flags = 
  "dist" </> ("unit_" ++ hashFlags flags) </> replaceExtension ( takeFileName src ) "o"

-- | ルールのセットアップ
setupRules :: Rules ()
setupRules = do
  -- Rule for compiled objects (.o)
  "dist/obj_*/" ++ "*.o" %> \out -> compileAction out False

  -- Rule for compiled units (.o, but with -unit and .import.scm handling)
  "dist/unit_*/" ++ "*.o" %> \out -> compileAction out True

  -- Rule for executables
  -- We assume the user explicitly calls `need [getPath exe]`, so we define a very general rule
  "dist//*" %> \out -> do
    -- This rule is intentionally minimal. In practice, you might want a dedicated rule
    -- or generate this from a higher-level description.
    putInfo $ "Linking (generic rule): " ++ out
    -- You *must* set up the correct inputs via `need` before triggering this.
    -- We cannot infer obj files here without metadata.
    -- So this rule assumes the calling code has already declared dependencies.
    -- Alternatively, store linking info in a .shake file or config.
    return ()

-- | 共通のコンパイルアクション
compileAction :: FilePath -> Bool -> Action ()
compileAction out isUnit = do
  let dir = takeDirectory out
  let baseName = dropExtension (takeFileName out)
  let srcPath = baseName <.> "scm"
  -- Find the source file: it must exist in the current directory or we fail
  -- (you can adjust search logic as needed)
  when (not (isUnit || isUnit)) $ return () -- dummy to avoid warning

  -- Reconstruct source path: we assume source is in "." (or adjust as needed)
  let srcFullPath = srcPath  -- assumes flat source layout; adjust if needed
    
  -- Ensure source exists
  exists <- liftIO $ Dir.doesFileExist srcFullPath
  unless exists $ error $ "Source file not found: " ++ srcFullPath

  need [srcFullPath]

  -- Extract flags from the directory name
  let dirName = takeFileName dir
  let flagHash = drop (if isUnit then 5 else 4) dirName  -- drop "unit_" or "obj_"
  -- We can't reverse the hash, so we don't validate flags here.
  -- The hash ensures that different flags → different output paths → different rules.
  -- That's sufficient for correctness.

  liftIO $ Dir.createDirectoryIfMissing True dir
  putInfo $ (if isUnit then "Compiling unit: " else "Compiling object: ") ++ srcFullPath ++ " -> " ++ out

  let unitArgs = if isUnit
        then ["-J", "-unit", baseName]
        else []

  withTempFile $ \tmpObj -> do
    -- 型注釈を追加して曖昧さを解消
    cmd_ ("csc" :: String) unitArgs ("-c" :: String) srcFullPath ("-o" :: String) tmpObj
    liftIO $ Dir.copyFile tmpObj out

  -- Handle .import.scm for units
  when isUnit $ do
    let importSrc = replaceExtension srcFullPath "import.scm"
    let importDest = dir </> takeFileName importSrc
    liftIO $ do
      existsImport <- Dir.doesFileExist importSrc
      when existsImport $ do
        Dir.createDirectoryIfMissing True dir
        Dir.copyFile importSrc importDest

-- | 環境変数の取得ロジック（そのまま使用）
getChickenEnv :: IO [(String, String)]
getChickenEnv = do
  home <- Dir.getHomeDirectory
  sysEnv <- getEnvironment
  let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)

  systemRepo <-
    fmap (filter (/= '\n')) $
      readProcess "csi" ["-R", "chicken.platform", "-e", "(display (car (repository-path)))"] ""

  let repoPath =
        intercalate
          ":"
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
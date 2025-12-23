{- shake/Link.hs -}
{-# LANGUAGE DataKinds #-}

module Link
  ( -- * Linking operations
    linkExe
    -- * Re-export from Rules for convenience
  , getChickenEnv
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import qualified System.Directory as Dir
import System.Process (readProcess)
import System.Environment (getEnvironment)
import Data.Maybe (fromMaybe)
import Data.List (intercalate)

import Chicken

-- | Link object files into an executable
-- Automatically converts -uses srfi-X flags to -lsrfi-X for proper linking
linkExe :: [Artifact 'Obj] -> Artifact 'Src -> String -> FilePath -> Action (Artifact 'Exe)
linkExe objs mainSrc flags outPath = do
  
  need (getPath mainSrc : map getPath objs)
  
  liftIO $ Dir.createDirectoryIfMissing True (takeDirectory outPath)
  
  let flagList = words flags
  
  -- SRFI ライブラリの .o ファイルを追加
  let srfiObjs = 
        [ "/var/lib/chicken/11/srfi-1.o"
        , "/var/lib/chicken/11/srfi-69.o"
        ]
  
  -- リンク時にも chicken.bitwise を指定
  let fullArgs = flagList 
        ++ ["-o", outPath] 
        ++ map getPath objs 
        ++ [getPath mainSrc]
        ++ srfiObjs
  
  putInfo $ "[Link] " ++ outPath
  putInfo $ "Command: csc " ++ unwords fullArgs
  
  env <- liftIO getChickenEnv
  let envOpts = map (uncurry AddEnv) env
  
  liftIO $ putStrLn $ "CHICKEN_REPOSITORY_PATH=" ++ show (lookup "CHICKEN_REPOSITORY_PATH" env)
  
  cmd_ envOpts ("csc" :: String) fullArgs
  
  return (Artifact outPath)

-- | 環境変数取得ヘルパー
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
  let distPath = projectRoot </> "dist"
  
  -- 重要：dist/ を最初に追加して、ユニットの .import.so が見つかるようにする
  let repoPath =
        intercalate
          ":"
          [ distPath              -- ← ここを最初に追加！
          , corePath
          , home </> ".chicken"
          , systemRepo
          , sysEnvRepo
          ]

  return
    [ ("CHICKEN_INCLUDE_PATH", intercalate ":" [corePath, "dist", ".", "_build", systemRepo])
    , ("CHICKEN_REPOSITORY_PATH", repoPath)
    , ("CHICKEN_INSTALL_REPOSITORY", distPath)
    , ("LD_LIBRARY_PATH", "/usr/lib:" ++ systemRepo)
    , ("CSC_OPTIONS", "-L/usr/lib")
    ]
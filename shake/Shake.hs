#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath

{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Classes
import Control.Monad
import System.Console.GetOpt
import Data.Maybe (fromMaybe)
import Data.List (find)
import Data.Typeable
import GHC.Generics

-- Chickenモジュールをインポート（同じディレクトリにある場合）
import Chicken

-- -----------------------------------------------------------------------------
-- Configuration & Types
-- -----------------------------------------------------------------------------

data Flags = Flags
    { flagDebug :: Bool
    , flagModule :: Maybe String
    } deriving (Show, Eq)

defaultFlags :: Flags
defaultFlags = Flags False Nothing

flags :: [OptDescr (Either String Flags)]
flags =
    [ Option "d" ["debug"] (NoArg $ Right defaultFlags{flagDebug = True}) "Build with debug symbols"
    , Option "m" ["module"] (ReqArg (\m -> Right defaultFlags{flagModule = Just m}) "MODULE") "Specify module"
    ]

newtype BuildConfig = BuildConfig ()
    deriving (Show, Typeable, Eq, Hashable, Binary, NFData)
type instance RuleResult BuildConfig = String

data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath] -- Source dependencies (.scm)
    } deriving (Show, Eq)

-- モジュール定義（変更なし）
modules :: [Module]
modules =
    [ Module "boids"            "modules/boids/boids_main.scm"        "tests/boids_tests.scm"       coreFiles
    , Module "fmm"              "modules/fmm/fmm_main.scm"            "tests/fmm_tests.scm"         coreFiles
    , Module "sssp"             "modules/sssp/sssp_main.scm"          "tests/sssp_tests.scm"        coreFiles
    , Module "kak-decomposition" "core/kak_decomposition.scm"           "tests/kak_tests.scm"         coreFiles
    , Module "golay24-tool"     "tools/golay24-tool/golay24_main.scm" "tests/golay24_tests.scm"     golayDeps
    , Module "sssp_geometry"    "modules/sssp_geometry/sssp_geo_main.scm" "tests/sssp_geometry_tests.scm" golayDeps
    ]
  where
    coreFiles = [ "core/machine_constants.scm", "core/golay_frontier.scm", "core/cartan_utils.scm", "core/kak_decomposition.scm" ]
    golayDeps = [ "core/machine_constants.scm", "core/golay_frontier.scm" ]

findModule :: String -> Maybe Module
findModule name = find (\m -> modName m == name) modules

-- -----------------------------------------------------------------------------
-- Build Rules
-- -----------------------------------------------------------------------------

main :: IO ()
main = shakeArgsWith shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} flags $ \flags targets -> return $ Just $ do
    let buildDir = "_build"
        distDir  = "dist"
    
    let mergedFlags = foldl (\(Flags d1 m1) (Flags d2 m2) -> Flags (d1 || d2) (m2 `mplus` m1)) defaultFlags flags
        mplus Nothing x = x; mplus x _ = x

    -- csc用のフラグ設定
    let cflags = if flagDebug mergedFlags
                 then "-O0 -d3" -- Debug: 最適化なし、デバッグ情報最大
                 else "-O3 -optimize-leaf-routines -inline -local"

    addOracle $ \(BuildConfig ()) -> return cflags

    if null targets then want ["help"] else want targets

    phony "help" $ putInfo "Usage: make [options] <target>"
    phony "info" $ askOracle (BuildConfig ()) >>= \f -> putInfo $ "Flags: " ++ f

    -- 各モジュールのショートカット
    forM_ modules $ \m -> phony (modName m) $ need ["build-" ++ modName m, "test-" ++ modName m]

    -- Generic targets
    phony "build" $ withModule mergedFlags $ \m -> need ["build-" ++ modName m]
    phony "test"  $ withModule mergedFlags $ \m -> need ["test-" ++ modName m]

    -- アプリケーションのビルド (.exe)
    (distDir </> "*_app" <.> exe) %> \out -> do
        let name = dropExtension $ takeBaseName out -- "kak-decomposition_app" -> "kak-decomposition"
            modNameStr = if "_app" `isSuffixOf` name then take (length name - 4) name else name
        
        case findModule modNameStr of
            Nothing -> fail $ "No module definition for " ++ modNameStr
            Just m -> do
                -- 依存関係（スタンプ）を要求
                need [buildDir </> modNameStr <.> "stamp"]
                flagsStr <- askOracle (BuildConfig ())
                
                -- 依存ファイルのオブジェクトパス計算
                let depObjs = map Chicken.objectFile (modDeps m)
                
                -- リンク実行 (Chickenモジュールに委譲)
                Chicken.linkProgram flagsStr [modSrc m] depObjs out

    -- 依存関係のコンパイル (Stamp file pattern)
    (buildDir </> "*.stamp") %> \out -> do
        let name = dropExtension $ takeFileName out
        case findModule name of
            Nothing -> fail $ "Unknown module: " ++ name
            Just m -> do
                need (modDeps m)
                flagsStr <- askOracle (BuildConfig ())

                -- 依存ファイルを順番にコンパイル
                -- 注: 本来は %.o %> %.scm のルールを書くべきですが、
                -- 既存ロジック(依存順序)を維持するためここで回します
                forM_ (modDeps m) $ \src -> do
                    let obj = Chicken.objectFile src
                    Chicken.compileUnit flagsStr src obj
                
                writeFile' out ""

    -- テスト実行
    forM_ modules $ \m -> phony ("test-" ++ modName m) $ do
        need ["build-" ++ modName m]
        flagsStr <- askOracle (BuildConfig ())
        let testBin = "/tmp/test_" ++ modName m <.> exe
        let depObjs = map Chicken.objectFile (modDeps m)
        
        -- テストバイナリのリンクと実行
        Chicken.linkProgram flagsStr [modTest m] depObjs testBin
        cmd_ testBin
        removeFilesAfter "/tmp" [testBin]
        putInfo $ "✓ Tests passed for " ++ modName m

    phony "clean" $ do
        putInfo "Cleaning..."
        removeFilesAfter buildDir ["//*"]
        removeFilesAfter distDir ["//*"]
        -- Chickenモジュール定義のパターンを使ってクリーン
        removeFilesAfter "." Chicken.cleanArtifacts
        putInfo "✓ Clean complete"

-- Helper
withModule :: Flags -> (Module -> Action ()) -> Action ()
withModule flags act = 
    case flagModule flags of
        Nothing -> fail "MODULE parameter required (e.g., -m boids)"
        Just name -> case findModule name of
            Nothing -> fail $ "Unknown module: " ++ name
            Just m -> act m
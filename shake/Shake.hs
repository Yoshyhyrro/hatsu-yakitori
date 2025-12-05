#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath

{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

import System.Environment (lookupEnv)
import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Classes
import Control.Monad
import System.Console.GetOpt
import Data.Maybe (fromMaybe)
import Data.List (find, isSuffixOf, intercalate)  -- ADD THIS LINE
import qualified System.Directory as Dir
import Data.Typeable
import GHC.Generics

-- Chickenモジュールをインポート
import qualified Chicken

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

-- | Oracle for build configuration
-- Oracleは実行時に一度だけ計算され、キャッシュされる値を提供します
newtype BuildConfig = BuildConfig ()
    deriving (Show, Typeable, Eq, Hashable, Binary, NFData)

type instance RuleResult BuildConfig = String

data Module = Module
    { modName :: String
    , modSrc  :: FilePath
    , modTest :: FilePath
    , modDeps :: [FilePath]
    } deriving (Show, Eq)

-- モジュール定義
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
                 then "-O0 -d3"
                 else "-O3 -optimize-leaf-routines -inline -local"

    -- Oracleを登録: ビルド中に何度も問い合わせできるグローバル設定
    addOracle $ \(BuildConfig ()) -> return cflags
    
    -- Chickenのカスタムルールを登録
    Chicken.chickenRules cflags

    if null targets then want ["help"] else want targets

    phony "help" $ do
        putInfo "Usage: ./Shake.hs [options] <target>"
        putInfo ""
        putInfo "Options:"
        putInfo "  -d, --debug        Build with debug symbols"
        putInfo "  -m, --module=NAME  Specify module to build/test"
        putInfo ""
        putInfo "Targets:"
        putInfo "  help               Show this help"
        putInfo "  info               Show build configuration"
        putInfo "  build              Build specified module (requires -m)"
        putInfo "  test               Test specified module (requires -m)"
        putInfo "  <module-name>      Build and test specific module"
        putInfo "  clean              Clean all build artifacts"
        putInfo ""
        putInfo "Available modules:"
        forM_ modules $ \m -> putInfo $ "  - " ++ modName m

    phony "info" $ do
        f <- askOracle (BuildConfig ())
        putInfo $ "Compiler flags: " ++ f

    -- 各モジュールのショートカット
    forM_ modules $ \m -> 
        phony (modName m) $ need ["build-" ++ modName m, "test-" ++ modName m]

    -- Generic targets
    phony "build" $ withModule mergedFlags $ \m -> need ["build-" ++ modName m]
    phony "test"  $ withModule mergedFlags $ \m -> need ["test-" ++ modName m]

    -- モジュールごとのビルドターゲット
    forM_ modules $ \m -> phony ("build-" ++ modName m) $ do
        need [buildDir </> modName m <.> "stamp"]
        unless (null $ modSrc m) $ do
            let app = distDir </> modName m ++ "_app" <.> exe
            need [app]

    -- アプリケーションのビルド (.exe)
    -- パターンマッチを使った宣言的ルール定義
    (distDir </> "*_app" <.> exe) %> \out -> do
        let name = dropExtension $ takeBaseName out
            modNameStr = if "_app" `isSuffixOf` name then take (length name - 4) name else name
        
        case findModule modNameStr of
            Nothing -> fail $ "No module definition for " ++ modNameStr
            Just m -> do
                -- 依存関係を要求
                need [buildDir </> modNameStr <.> "stamp"]
                
                -- 型安全なChicken APIを使用
                forM_ (modDeps m) $ \dep -> 
                    Chicken.needUnit dep
                
                flagsStr <- askOracle (BuildConfig ())
                let depObjs = map Chicken.objectFile (modDeps m)
                
                -- リンク実行
                Chicken.linkProgram flagsStr [modSrc m] depObjs out

    -- 依存関係のコンパイル (Stamp file pattern)
    (buildDir </> "*.stamp") %> \out -> do
        let name = dropExtension $ takeFileName out
        case findModule name of
            Nothing -> fail $ "Unknown module: " ++ name
            Just m -> do
                -- 型安全な依存関係の宣言
                forM_ (modDeps m) $ \dep -> 
                    Chicken.needUnit dep
                
                -- スタンプファイルを作成
                writeFile' out ""

    -- オブジェクトファイルのビルドルール
    -- Chickenのカスタムルールが自動的に処理しますが、
    -- 明示的な依存関係も定義できます
    "//*.o" %> \out -> do
        let src = replaceExtension out "scm"
        need [src]
        -- Chicken.needUnit が実際のコンパイルを実行

    -- テスト実行(WSL対応版)
    forM_ modules $ \m -> phony ("test-" ++ modName m) $ do
        need ["build-" ++ modName m]
        
        flagsStr <- askOracle (BuildConfig ())
        let testBin = "/tmp/test_" ++ modName m <.> exe
        
        -- WSLでは/tmpが特殊なので確認
        liftIO $ Dir.createDirectoryIfMissing True "/tmp"
        
        let depObjs = map Chicken.objectFile (modDeps m)
        
        -- テストバイナリのリンク
        Chicken.linkProgram flagsStr [modTest m] depObjs testBin
        
        -- WSLで動かすための環境変数設定
        cmd_ 
            [ AddEnv "CHICKEN_INCLUDE_PATH" (intercalate ":" ["core", "dist", ".", "_build"])
            , AddEnv "CHICKEN_REPOSITORY_PATH" (intercalate ":" ["dist", "~/.chicken", "/usr/local/lib/chicken"])
            , AddEnv "CHICKEN_INSTALL_REPOSITORY" "dist"
            , AddEnv "LD_LIBRARY_PATH" (intercalate ":" ["dist", "/usr/local/lib"])
            , AddEnv "C_INCLUDE_PATH" (intercalate ":" ["/usr/include", "core"])
            , Shell  -- WSLではShellモードが安定
            ] 
            testBin 
        
        removeFilesAfter "/tmp" [testBin]
        putInfo $ "✓ Tests passed for " ++ modName m
        
    phony "clean" $ do
        putInfo "Cleaning..."
        removeFilesAfter buildDir ["//*"]
        removeFilesAfter distDir ["//*"]
        -- Chicken.cleanArtifacts はすでに Action モナド内で実行
        removeFilesAfter "." Chicken.cleanArtifacts
        -- liftIO が必要な場合
        liftIO $ do
            distExists <- Dir.doesDirectoryExist "dist"
            when distExists $ Dir.removeDirectoryRecursive "dist"
            buildExists <- Dir.doesDirectoryExist "_build"
            when buildExists $ Dir.removeDirectoryRecursive "_build"
        putInfo "✓ Clean complete"

-- Helper function
withModule :: Flags -> (Module -> Action ()) -> Action ()
withModule flags act = 
    case flagModule flags of
        Nothing -> fail "MODULE parameter required (use -m <module-name>)"
        Just name -> case findModule name of
            Nothing -> fail $ "Unknown module: " ++ name ++ "\nAvailable modules: " ++ 
                             unwords (map modName modules)
            Just m -> act m
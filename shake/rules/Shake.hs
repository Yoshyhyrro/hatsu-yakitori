#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath --package process

{- shake/Shake.hs -}
{-# LANGUAGE DeriveGeneric, GeneralizedNewtypeDeriving, TypeFamilies #-}

import System.Environment (lookupEnv, getEnvironment)
import System.Directory (getHomeDirectory)
import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Classes
import Control.Monad
import System.Console.GetOpt
import Data.Maybe (fromMaybe)
import Data.List (find, isSuffixOf, intercalate)
import qualified System.Directory as Dir
import Data.Typeable
import GHC.Generics
import Development.Shake.Command
import Text.Printf (printf)
import System.Process (readProcess)

-- Chickenモジュールをインポート
import qualified Chicken
import qualified Salmonella

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
    golayDeps = [ "core/machine_constants.scm"
                , "core/golay_frontier.scm"
                , "core/cartan_utils.scm" 
                , "core/kak_decomposition.scm"
                ]

findModule :: String -> Maybe Module
findModule name = find (\m -> modName m == name) modules

-- | Helper to build environment variables
-- Dynamically fetches the system CHICKEN_REPOSITORY_PATH
getChickenEnv :: IO [(String, String)]
getChickenEnv = do
    home <- getHomeDirectory
    sysEnv <- getEnvironment
    let sysEnvRepo = fromMaybe "" (lookup "CHICKEN_REPOSITORY_PATH" sysEnv)
    
    -- Ask csi for the correct library location
    -- (filter to remove the trailing newline)
    systemRepo <- liftM (filter (/= '\n')) $ readProcess "csi" ["-p", "(repository-path)"] ""
    
    -- Build path: 
    -- 1. dist (compiled artifacts)
    -- 2. ~/.chicken (user eggs)
    -- 3. systemRepo (core libraries like srfi-1)
    -- 4. Environment variable override
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

-- -----------------------------------------------------------------------------
-- Build Rules
-- -----------------------------------------------------------------------------

main :: IO ()
main = shakeArgsWith shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} flags $ \flags targets -> return $ Just $ do
    let buildDir = "_build"
        testBuildDir = "_build/tests"  -- テスト用バイナリの出力先
        distDir  = "dist"
    
    let mergedFlags = foldl (\(Flags d1 m1) (Flags d2 m2) -> Flags (d1 || d2) (m2 `mplus` m1)) defaultFlags flags
        mplus Nothing x = x; mplus x _ = x

    let cflags = if flagDebug mergedFlags
                 then "-O0 -d3"
                 else "-O3 -optimize-leaf-routines -inline -local"

    addOracle $ \(BuildConfig ()) -> return cflags
    
    Chicken.chickenRules cflags

    if null targets then want ["help"] else want targets

    phony "help" $ do
        putInfo "Usage: ./Shake.hs [options] <target>"
        -- (省略: ヘルプ内容は同じ)
        putInfo ""
        putInfo "Available modules:"
        forM_ modules $ \m -> putInfo $ "  - " ++ modName m

    phony "info" $ do
        f <- askOracle (BuildConfig ())
        putInfo $ "Compiler flags: " ++ f

    forM_ modules $ \m -> 
        phony (modName m) $ need ["build-" ++ modName m, "test-" ++ modName m]

    phony "build" $ withModule mergedFlags $ \m -> need ["build-" ++ modName m]
    phony "test"  $ withModule mergedFlags $ \m -> need ["test-" ++ modName m]

    forM_ modules $ \m -> phony ("build-" ++ modName m) $ do
        need [buildDir </> modName m <.> "stamp"]
        unless (null $ modSrc m) $ do
            let app = distDir </> modName m ++ "_app" <.> exe
            need [app]

    (distDir </> "*_app" <.> exe) %> \out -> do
        let name = dropExtension $ takeBaseName out
            modNameStr = if "_app" `isSuffixOf` name then take (length name - 4) name else name
        
        case findModule modNameStr of
            Nothing -> fail $ "No module definition for " ++ modNameStr
            Just m -> do
                need [buildDir </> modNameStr <.> "stamp"]
                forM_ (modDeps m) $ \dep -> Chicken.needUnit dep
                
                flagsStr <- askOracle (BuildConfig ())
                let depObjs = map Chicken.objectFile (modDeps m)
                Chicken.linkProgram flagsStr [modSrc m] depObjs out

    (buildDir </> "*.stamp") %> \out -> do
        let name = dropExtension $ takeFileName out
        case findModule name of
            Nothing -> fail $ "Unknown module: " ++ name
            Just m -> do
                forM_ (modDeps m) $ \dep -> Chicken.needUnit dep
                writeFile' out ""

    "dist//*.o" %> \out -> do
        let objName = takeBaseName out
        let allSources = [ modSrc m | m <- modules ] ++ concat [ modDeps m | m <- modules ]
        case find (\s -> takeBaseName s == objName) allSources of
            Nothing -> fail $ "Source file not found for object: " ++ out
            Just src -> Chicken.needUnit src

    -- ========================================================================
    -- テスト実行ルール (修正版)
    -- ========================================================================
    
    -- 個別テスト
    forM_ modules $ \m -> phony ("test-" ++ modName m) $ do
        need ["build-" ++ modName m]
        
        flagsStr <- askOracle (BuildConfig ())
        let depObjs = map Chicken.objectFile (modDeps m)
        
        -- withTempDir は使わず、永続的なビルドディレクトリを使用する
        let testBin = testBuildDir </> "test_" ++ modName m <.> exe
        
        -- ディレクトリ作成
        liftIO $ Dir.createDirectoryIfMissing True testBuildDir
        
        let compilerFlags = words flagsStr
            includePaths = ["-I.", "-Icore", "-Idist", "-I_build"]
            libraryPaths = ["-Ldist"]
            -- コンパイル
            allArgs = compilerFlags ++ includePaths ++ libraryPaths ++ [modTest m] ++ depObjs ++ ["-o", testBin]
        
        cmd_ "csc" allArgs
        
        -- 環境変数を生成して設定
        envVars <- liftIO getChickenEnv
        let config = Salmonella.defaultTestConfig { Salmonella.tcEnv = envVars }
        
        result <- Salmonella.runModuleTests config (modName m) testBin depObjs
        
        when (not $ Salmonella.trPassed result) $
            fail $ "Tests failed for " ++ modName m

    -- 全テスト (修正版: パスの生存期間問題を解決)
    phony "test-all" $ do
        putInfo "Building all modules..."
        forM_ modules $ \m -> need ["build-" ++ modName m]
        
        flagsStr <- askOracle (BuildConfig ())
        liftIO $ Dir.createDirectoryIfMissing True testBuildDir
        
        -- 先にすべてのテストバイナリをビルドしてパスを収集
        testInfos <- forM modules $ \m -> do
            let testBin = testBuildDir </> "test_" ++ modName m <.> exe
                depObjs = map Chicken.objectFile (modDeps m)
            
            let compilerFlags = words flagsStr
                includePaths = ["-I.", "-Icore", "-Idist", "-I_build"]
                libraryPaths = ["-Ldist"]
                allArgs = compilerFlags ++ includePaths ++ libraryPaths ++ [modTest m] ++ depObjs ++ ["-o", testBin]
            
            -- cmd_ は stdout/stderr を Shake のログに出す
            cmd_ "csc" allArgs
            return (modName m, testBin, depObjs)
        
        -- 全ビルド成功後にテストを一括実行
        envVars <- liftIO getChickenEnv
        let config = Salmonella.defaultTestConfig { Salmonella.tcEnv = envVars }
        
        _report <- Salmonella.runAllTests config testInfos
        
        putInfo "✓ All tests passed"

    phony "clean" $ do
        putInfo "Cleaning..."
        removeFilesAfter buildDir ["//*"]
        removeFilesAfter distDir ["//*"]
        removeFilesAfter "." Chicken.cleanArtifacts
        liftIO $ do
            distExists <- Dir.doesDirectoryExist "dist"
            when distExists $ Dir.removeDirectoryRecursive "dist"
            buildExists <- Dir.doesDirectoryExist "_build"
            when buildExists $ Dir.removeDirectoryRecursive "_build"
        putInfo "✓ Clean complete"

withModule :: Flags -> (Module -> Action ()) -> Action ()
withModule flags act = 
    case flagModule flags of
        Nothing -> fail "MODULE parameter required (use -m <module-name>)"
        Just name -> case findModule name of
            Nothing -> fail $ "Unknown module: " ++ name ++ "\nAvailable modules: " ++ 
                             unwords (map modName modules)
            Just m -> act m
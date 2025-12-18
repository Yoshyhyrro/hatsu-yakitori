{- shake/Shake.hs -}
{-# LANGUAGE DataKinds #-}

import Development.Shake
import Development.Shake.FilePath
import Control.Monad (forM_, unless, forM)
import System.Process (readCreateProcessWithExitCode, proc)
import System.Directory (listDirectory, doesDirectoryExist, getCurrentDirectory)
import System.Exit (ExitCode(..))
import Data.List (words)  -- words関数をインポート

-- 自作モジュール
import Chicken
import Rules
import qualified Rules.GC as GC
import qualified Salmonella
import qualified Clean

-- ====================================================================
--  設定・データ定義
-- ====================================================================

data Module = Module
    { modName :: String
    , modSrc  :: FilePath -- メインソース
    , modTest :: FilePath -- テストソース
    , modDeps :: [FilePath] -- 依存ファイル（フルパス）
    } deriving (Show)

-- コア依存ファイル（全モジュールが使用）
coreFiles :: [FilePath]
coreFiles = 
    [ "core/kak_decomposition.scm"
    , "core/cartan_utils.scm"
    , "core/machine_constants.scm"
    , "core/golay_frontier.scm"
    , "modules/kak_quiver_safety.scm"
    , "modules/topological-gc.scm"
    ]

modules :: [Module]
modules =
    [ Module "boids" 
             "modules/boids/boids_main.scm" 
             "tests/boids_tests.scm" 
             coreFiles
    
    , Module "fmm" 
             "modules/fmm/fmm_on_goppa_grid.scm"     
             "tests/fmm_tests.scm"   
             coreFiles
    
    , Module "sssp" 
             "modules/sssp/sssp_main.scm" 
             "tests/sssp_tests.scm" 
             coreFiles
    
    , Module "sssp_geometry" 
             "modules/sssp_geometry/sssp_geo_main.scm" 
             "tests/sssp_geometry_tests.scm" 
             coreFiles
             
    , Module "golay24-tool" 
         "tools/golay24-tool/golay24_main.scm" 
         "tests/golay24_tests.scm" 
         (coreFiles ++ 
          [ "tools/golay24-tool/setup.scm"
          , "tools/golay24-tool/topological-gc.scm"
          -- KAK統合テストを実行する場合は以下も追加
          , "modules/sssp_geometry/sssp_geo_main.scm"
          ])
    ]

-- ====================================================================
--  Main Loop
-- ====================================================================

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    
    -- 1. ルールの初期化
    setupRules
    GC.gcRule

    -- コンパイラフラグ
    let cflags = "-O3 -d0"

    -- 2. 各モジュールのビルドターゲット定義
    forM_ modules $ \m -> do
        let mName = modName m
        
        -- アプリケーションのビルド
        phony ("build-" ++ mName) $ do
            need (modDeps m)
            projectRoot <- liftIO getCurrentDirectory
            let absPath p = projectRoot </> p
            -- 依存関係(Core等)をユニットとしてコンパイル（絶対パス）
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source $ absPath src) cflags) (modDeps m)
            -- メインプログラムをユニットとしてコンパイル（絶対パス）
            mainUnit <- buildArtifact $ CompileUnit (source $ absPath $ modSrc m) cflags
            -- リンクして実行ファイルを生成
            let objArtifacts = map toObjArtifact (deps ++ [mainUnit])
            let exePath = "dist" </> mName ++ "_app" <.> exe
            _ <- buildArtifact $ LinkExe objArtifacts
                                         (source $ (projectRoot </> modSrc m))
                                         cflags
                                         exePath
            return ()

        -- テストの実行
        phony ("test-" ++ mName) $ do
            -- need ["build-" ++ mName]  -- ← この行を削除！
            -- Salmonellaを使って独立したテストを構築・実行
            env <- liftIO getChickenEnv
            projectRoot <- liftIO getCurrentDirectory
            let config = Salmonella.defaultTestConfig
                    { Salmonella.tcEnv = env
                    , Salmonella.tcCompileFlags = words cflags  -- wordsで文字列をリストに変換
                    }
            -- テスト用パスも絶対パスで渡す
            result <- Salmonella.runIsolatedModuleTests config
                                                         mName
                                                         (projectRoot </> modSrc m)
                                                         (projectRoot </> modTest m)
                                                         (map (projectRoot </>) (modDeps m))
            unless (Salmonella.trPassed result) $
                fail $ "Tests failed for " ++ mName

        -- ショートカット
        phony mName $ need ["build-" ++ mName]

        -- GC コンパイル（ガベージコレクション最適化）
        phony ("gc-" ++ mName) $ do
            need (modDeps m)
            projectRoot <- liftIO getCurrentDirectory
            let absPath p = projectRoot </> p
            -- GC 最適化フラグ付きで再コンパイル
            let gcFlags = "-O3 -d0 -scrutinize -specialize -inline 3"
            -- 依存関係(Core等)をユニットとしてコンパイル（絶対パス）
            deps <- mapM (\src -> buildArtifact $ CompileUnit (source $ absPath src) gcFlags) (modDeps m)
            -- メインプログラムをユニットとしてコンパイル（絶対パス）
            mainUnit <- buildArtifact $ CompileUnit (source $ absPath $ modSrc m) gcFlags
            -- GC オブジェクトを構築
            let exePath = "dist" </> mName ++ "_app_gc" <.> exe
            gcObj <- GC.buildGCObj exePath
            -- リンクして実行ファイルを生成
            let objArtifacts = map toObjArtifact (deps ++ [mainUnit]) ++ [gcObj]
            _ <- buildArtifact $ LinkExe objArtifacts
                                         (source $ (projectRoot </> modSrc m))
                                         gcFlags
                                         exePath
            return ()

    -- 3. Salmonella統合: .egg ファイルでテストを実行
    phony "salmonella" $ do
        need ["test-" ++ modName m | m <- modules]
        liftIO $ do
            -- 指定ディレクトリを再帰的に探索して .egg ファイルを収集
            let roots = [".", "core", "modules", "tools"]
            let findEggs :: FilePath -> IO [FilePath]
                findEggs root = do
                    exists <- System.Directory.doesDirectoryExist root
                    if not exists then return [] else do
                        entries <- listDirectory root
                        paths <- forM entries $ \e -> do
                            let p = root </> e
                            isDir <- System.Directory.doesDirectoryExist p
                            if isDir
                                then findEggs p
                                else return $ if takeExtension p == ".egg" then [p] else []
                        return (concat paths)

            eggLists <- mapM findEggs roots
            let eggFiles = concat eggLists
            let args = if null eggFiles then [] else concatMap (\f -> ["-l", f]) eggFiles
            (exitCode, stdout, stderr) <- readCreateProcessWithExitCode (proc "salmonella" args) ""
            case exitCode of
                ExitSuccess -> putStrLn "✓ Salmonella tests passed"
                _ -> do
                    putStrLn "✗ Salmonella tests failed"
                    putStrLn "=== Stdout ==="
                    putStrLn stdout
                    putStrLn "=== Stderr ==="
                    putStrLn stderr
                    fail "Salmonella tests failed"

    -- 4. クリーニングコマンド（Clean モジュールにて管理）
    phony "clean" $ Clean.cleanAll
    phony "clean-build" $ Clean.cleanBuild
    phony "clean-tests" $ Clean.cleanTests
    phony "clean-artifacts" $ Clean.cleanArtifacts
    phony "clean-cache" $ Clean.cleanCache
    
    phony "distclean" $ do
        Clean.cleanAll
        putInfo "Removed all generated files and caches"

    -- 5. 便利コマンド
    phony "build" $ need ["build-" ++ modName m | m <- modules]
    phony "test-all" $ need ["test-" ++ modName m | m <- modules]
    phony "test" $ need ["test-all"]
    phony "gc-all" $ need ["gc-" ++ modName m | m <- modules]

-- Helper
toObjArtifact :: Artifact 'Unit -> Artifact 'Obj
toObjArtifact (Artifact path) = Artifact path
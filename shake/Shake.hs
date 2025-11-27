#!/usr/bin/env stack
-- stack --resolver lts-22 script --package shake --package directory --package filepath

import Development.Shake
import Development.Shake.FilePath
import Development.Shake.Command
import Control.Monad
import System.Environment (getArgs)

main :: IO ()
main = shakeArgs shakeOptions{shakeFiles="_build/", shakeVerbosity=Info} $ do
    let csc = "csc"
        buildDir = "_build"
        distDir  = "dist"

    -- モジュール定義
    let modules = [ ("boids",           "modules/boids/boids_main.scm",           "tests/boids_tests.scm")
                  , ("fmm",             "modules/fmm/fmm_main.scm",               "tests/fmm_tests.scm")
                  , ("sssp",            "modules/sssp/sssp_main.scm",             "tests/sssp_tests.scm")
                  , ("kak-decomposition", "",                                     "tests/kak_tests.scm")
                  , ("golay24-tool",    "tools/golay24-tool/golay24_main.scm",    "tests/golay24_tests.scm")
                  ]

    -- CORE 依存関係（内容ハッシュで完璧に追跡）
    let coreFiles = [ "core/machine_constants.scm"
                    , "core/golay_frontier.scm"
                    , "core/cartan_utils.scm"
                    , "core/kak_decomposition.scm" ]

    -- モジュールごとの依存CORE
    let deps "golay24-tool" = take 2 coreFiles
        deps _              = coreFiles

    -- デバッグフラグ
    getDebug <- liftIO $ lookup "DEBUG" `fmap` getEnvironment

    let cflags = case getDebug of
                    Just "1" -> "-O3 -g -debug-level 3"
                    _        -> "-O3 -optimize-leaf-routines"

    -- メインターゲット
    want $ ["help"] ++ words <$> getArgs

    phony "help" $ do
        putNormal $ unlines
          [ "Targets:"
          , "  build MODULE=<name>        - build module"
          , "  test MODULE=<name>         - build + test"
          , "  test-salmonella MODULE=<name>"
          , "  test-all-salmonella"
          , "  clean"
          , "  <module-name>              - shortcut for build+test"
          ]

    -- 個別モジュールショートカット
    forM_ modules $ \(name, _, _) -> phony name $ do
        need ["test"]
        putNormal $ "Finished " ++ name

    -- build ターゲット
    phony "build" $ do
        mod <- getShakeExtra >>= maybe (fail "MODULE= required") pure . lookup "MODULE"
        let src = lookup mod (map (\(a,b,_) -> (a,b)) modules)
        need $ "build" </> mod
        when (src /= Just "") $
            cmd csc cflags [src] "-o" (distDir </> mod ++ "_app")

    -- test ターゲット
    phony "test" $ do
        mod <- getShakeExtra >>= maybe (fail "MODULE= required") pure . lookup "MODULE"
        need ["build"]
        let testFile = lookup mod (map (\(a,_,c) -> (a,c)) modules)
        whenJust testFile $ \tf ->
            cmd csc cflags tf "-o" "/tmp/test_" ++ mod
            cmd "/tmp/test_" ++ mod

    -- 全モジュールテスト（並列爆速）
    phony "test-all-salmonella" $ do
        need $ map (\(m,_,_) -> "test-salmonella" </> m) modules
        putNormal "All modules passed salmonella!"

    -- salmonella 個別
    ("test-salmonella" </> "*.log") %> \out -> do
        let mod = dropDirectory1 $ dropExtension out
        need ["build" </> mod]
        cmd "salmonella" "--log-file=" ++ out "--verbosity=2" mod

    phony "clean" $ do
        removeFilesAfter "." ["_build//**", "dist//**", "/tmp/test_*"]

    -- モジュールビルドの本体（依存完璧追跡）
    ("build" </> "*.stamp") %> \out -> do
        let mod = dropDirectory1 $ dropExtension out
        let deps' = deps mod
        need $ coreFiles ++ deps'
        -- COREファイルをimport可能にするために一旦コンパイル
        forM_ deps' $ \f -> cmd csc cflags "-c -J" f
        putNormal $ "Built " ++ mod

    -- モジュールごとのスタンプルール
    forM_ modules $ \(mod, _, _) ->
        phony ("build" </> mod) $ need ["build" </> mod ++ ".stamp"]

    -- デフォルトで MODULE= を要求するように
    getShakeExtra >>= \extra -> when (extra == Nothing) $
        fail "Use: make build MODULE=boids  (or make boids)"
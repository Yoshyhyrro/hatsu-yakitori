{- shake/Rules/Wasm.hs -}
{-# LANGUAGE OverloadedStrings #-}

module Rules.Wasm
  ( buildWasm
  ) where

import Development.Shake
import Development.Shake.FilePath
import Control.Monad.IO.Class (liftIO)
import Data.List (isSuffixOf, isPrefixOf)
import qualified System.Directory as Dir
import qualified System.Process as Proc

import Pipeline (Module(..), BuildConfig(..))
import SourceIO (readSourceTextLossy)
import Rules.StandardToplevel (extractDeclareUses, extractModuleDecl)

-- ============================================================
-- Extract Uses (Similar to Compile.hs)
-- ============================================================

-- | Check if file content contains a main procedure definition
hasMainProcedure :: String -> Bool
hasMainProcedure content =
  "(define (main" `isInfixOf` content
  || "(define main" `isInfixOf` content
  where isInfixOf = go
        go sub full | sub `isPrefixOf` full = True
        go sub (_:xs) = go sub xs
        go _ [] = False

-- | Determine if a file is the main entry point
isMainFile :: FilePath -> Bool
isMainFile src = 
  let baseName = takeBaseName (dropExtension src)
  in baseName `elem` ["witt-validator-main", "main", "golay24_main"]
     || "-main" `isSuffixOf` baseName

-- ============================================================
-- Action to build WebAssembly
-- ============================================================

buildWasm :: Module -> BuildConfig -> Action ()
buildWasm modDef cfg = do
  let baseName = modName modDef
      buildDir = bcBuildDir cfg </> "wasm"
      
      mainSrc = modSrc modDef
      deps = modDeps modDef
      
      cFile = buildDir </> baseName <.> "c"
      jsFile = buildDir </> baseName <.> "js"

  -- Create build dir
  liftIO $ Dir.createDirectoryIfMissing True buildDir

  -- 1. SCeme to C
  need (mainSrc : deps)
  
  content <- liftIO $ readSourceTextLossy mainSrc
  let usesDeps = extractDeclareUses content
      usesFlags = concatMap (\d -> ["-uses", d]) usesDeps
      isMain = isMainFile mainSrc || hasMainProcedure content
  
  let modOrUnitFlags = 
        if isMain 
          then []
          else case extractModuleDecl content of
                 Just mName -> ["-unit", mName]
                 Nothing -> ["-unit", baseName]

  putInfo $ "[WASM: csc] Translating to C: " ++ mainSrc
  cmd_ ("csc" :: String) (["-t", mainSrc, "-o", cFile] ++ modOrUnitFlags ++ usesFlags)
  
  -- 2. C to WASM
  cflagsOutput <- liftIO $ Proc.readProcess "csc" ["-cflags"] ""
  let cflags = words cflagsOutput
  
  putInfo $ "[WASM: emcc] Compiling WebAssembly: " ++ cFile
  -- By outputting .js, emcc usually generates the corresponding .wasm as well
  -- Using cflags is required to resolve includes like chicken.h
  cmd_ ("emcc" :: String) (cflags ++ [cFile, "-s", "WASM=1", "-o", jsFile])

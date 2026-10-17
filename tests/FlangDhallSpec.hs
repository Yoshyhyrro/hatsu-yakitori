{-# LANGUAGE OverloadedStrings #-}
module FlangDhallSpec (main, spec) where

import Test.Hspec
import Rules.Proof.FlangDhall (parseFlangGaps, emitGapsAsDiagIO, formatFlangDiagSummary)
import Diag (Diag(..), DiagCode(..), diagCode)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "FlangDhall" $ do
  it "parseFlangGaps reads the mock dhall file" $ do
    gaps <- parseFlangGaps "shake/mock_test/mlir/flang.dhall"
    gaps `shouldSatisfy` (not . null)

  it "emitGapsAsDiagIO emits diagnostics and preserves declared dhall diagCode values" $ do
    diags <- emitGapsAsDiagIO "shake/mock_test/mlir/flang.dhall"
    diags `shouldSatisfy` (not . null)
    let codes = map diagCode diags
    codes `shouldContain` HYK008W
    codes `shouldContain` HYK007E
    codes `shouldContain` HYK006W
    codes `shouldContain` HYK011E

  it "formatFlangDiagSummary includes emitted HYK codes for stdout capture" $ do
    diags <- emitGapsAsDiagIO "shake/mock_test/mlir/flang.dhall"
    let summary = formatFlangDiagSummary diags
    summary `shouldContain` "flang-dhall-emit: emitted"
    summary `shouldContain` "HYK"

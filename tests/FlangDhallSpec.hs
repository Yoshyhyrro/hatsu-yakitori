module FlangDhallSpec (main, spec) where

import Test.Hspec
import Rules.Proof.FlangDhall (parseFlangGaps, emitGapsAsDiagIO)
import Diag (Diag(..), DiagCode(..), diagCode)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "FlangDhall" $ do
  it "parseFlangGaps reads the mock dhall file" $ do
    gaps <- parseFlangGaps "shake/mock_test/mlir/flang.dhall"
    gaps `shouldSatisfy` (not . null)

  it "emitGapsAsDiagIO emits HYK011 series Diags" $ do
    diags <- emitGapsAsDiagIO "shake/mock_test/mlir/flang.dhall"
    diags `shouldSatisfy` (not . null)
    let codes = map diagCode diags
    let allInHYK011 = all (\c -> c `elem` [HYK011E, HYK011W, HYK011N, HYK011I]) codes
    allInHYK011 `shouldBe` True

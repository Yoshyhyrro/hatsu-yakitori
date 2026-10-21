{- shake/Rules/Proof/FlangDhall.hs -}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Rules.Proof.FlangDhall
  ( emitGapsAsDiagIO
  , formatFlangDiagSummary
  , parseFlangGaps
  ) where

import Data.List (intercalate)
import GHC.Generics (Generic)
import qualified Dhall
import Data.Text (Text)
import qualified Data.Text as T
import Diag hiding (diagCode)
import qualified Diag as D
-- Dhall-side types
data SeverityD = Error | Warning | Note | Info
  deriving (Show, Generic)
instance Dhall.FromDhall SeverityD

data GapCategory = DependencyResolution | PipelineAsymmetry | PathCollision | Preprocessing
  deriving (Show, Generic)
instance Dhall.FromDhall GapCategory

data StatusD = Open | InProgress | Blocked | Resolved
  deriving (Show, Generic)
instance Dhall.FromDhall StatusD

data Remedy = Remedy
  { immediate :: Text
  , proper :: Maybe Text
  } deriving (Show, Generic)
instance Dhall.FromDhall Remedy

data Gap = Gap
  { category :: GapCategory
  , code :: Text
  , diagCode :: Maybe Text
  , severity :: SeverityD
  , status :: StatusD
  , blockedBy :: Maybe Text
  , affectedModules :: [Text]
  , title :: Text
  , issueDescription :: Text
  , technicalImpact :: Text
  , remedy :: Remedy
  } deriving (Show, Generic)
instance Dhall.FromDhall Gap

data FlangRegistry = FlangRegistry
  { gaps :: [Gap]
  } deriving (Show, Generic)
instance Dhall.FromDhall FlangRegistry

-- | Parse the Dhall file and return the list of gaps.
parseFlangGaps :: FilePath -> IO [Gap]
parseFlangGaps fp =
  let dhallImport = case fp of
        '.' : _ -> fp
        '/' : _ -> fp
        _       -> "./" ++ fp
  in fmap gaps (Dhall.input Dhall.auto (T.pack dhallImport))

formatFlangDiagSummary :: [Diag] -> String
formatFlangDiagSummary diags =
  let codes = map (show . D.diagCode) diags
      codeSummary = case codes of
        [] -> "none"
        _  -> intercalate ", " codes
  in "flang-dhall-emit: emitted "
      ++ show (length diags)
      ++ " diag(s); codes: "
      ++ codeSummary

-- | Convert Gap -> Diag and emit them via Diag.emit. Returns the emitted Diag list.
emitGapsAsDiagIO :: FilePath -> IO [Diag]
emitGapsAsDiagIO fp = do
  gaps <- parseFlangGaps fp
  let toDiag g =
        let sev = case severity g of
                    Error   -> SevError
                    Warning -> SevWarning
                    Note    -> SevNote
                    Info    -> SevInfo
            code' = case diagCode g of
                      Just "HYK006W" -> HYK006W
                      Just "HYK007E" -> HYK007E
                      Just "HYK008W" -> HYK008W
                      Just "HYK009N" -> HYK009N
                      Just "HYK010I" -> HYK010I
                      Just "HYK011E" -> HYK011E
                      Just "HYK011W" -> HYK011W
                      Just "HYK011N" -> HYK011N
                      Just "HYK011I" -> HYK011I
                      _ -> case severity g of
                             Error   -> HYK011E
                             Warning -> HYK011W
                             Note    -> HYK011N
                             Info    -> HYK011I
            message = T.unpack (title g) ++ ": " ++ T.unpack (issueDescription g)
            notes = [ "flang-dhall: " ++ T.unpack (code g)
                    , "status: " ++ show (status g)
                    , "blockedBy: " ++ maybe "none" T.unpack (blockedBy g)
                    , "affectedModules: " ++ intercalate ", " (map T.unpack (affectedModules g))
                    , "impact: " ++ T.unpack (technicalImpact g)
                    , "remedy.immediate: " ++ T.unpack (immediate (remedy g))
                    ] ++ maybe []
                        (\r -> ["remedy.proper: " ++ T.unpack r])
                        (proper (remedy g))
        in Diag sev code' message notes
  let diags = map toDiag gaps
  mapM_ emit diags
  return diags

{- shake/Rules/Proof/FlangDhall.hs -}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Rules.Proof.FlangDhall
  ( emitGapsAsDiagIO
  , parseFlangGaps
  ) where

import GHC.Generics (Generic)
import qualified Dhall
import Data.Text (Text)
import qualified Data.Text as T
import Diag

-- Dhall-side types
data SeverityD = Error | Warning | Note | Info
  deriving (Show, Generic)
instance Dhall.FromDhall SeverityD

data GapCategory = DependencyResolution | PipelineAsymmetry | PathCollision | Preprocessing
  deriving (Show, Generic)
instance Dhall.FromDhall GapCategory

data Gap = Gap
  { category :: GapCategory
  , code :: Text
  , severity :: SeverityD
  , title :: Text
  , issueDescription :: Text
  , technicalImpact :: Text
  , proposedRemedy :: Text
  } deriving (Show, Generic)
instance Dhall.FromDhall Gap

-- | Parse the Dhall file and return the list of gaps.
parseFlangGaps :: FilePath -> IO [Gap]
parseFlangGaps fp =
  let dhallImport = case fp of
        '.' : _ -> fp
        '/' : _ -> fp
        _       -> "./" ++ fp
  in Dhall.input Dhall.auto (T.pack dhallImport)

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
            code' = case severity g of
                      Error   -> HYK011E
                      Warning -> HYK011W
                      Note    -> HYK011N
                      Info    -> HYK011I
            message = T.unpack (title g) ++ ": " ++ T.unpack (issueDescription g)
            notes = [ "flang-dhall: " ++ T.unpack (code g)
                    , "impact: " ++ T.unpack (technicalImpact g)
                    , "remedy: " ++ T.unpack (proposedRemedy g)
                    ]
        in Diag sev code' message notes
  let diags = map toDiag gaps
  mapM_ emit diags
  return diags

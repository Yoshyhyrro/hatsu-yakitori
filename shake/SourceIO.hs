module SourceIO
  ( readSourceTextLossy
  ) where

import qualified Data.ByteString.Char8 as B8

-- | Read source text without depending on the current locale decoder.
-- This is sufficient for our build-time scanners because they only inspect
-- ASCII Scheme syntax such as (module ...), (import ...), and (declare ...).
readSourceTextLossy :: FilePath -> IO String
readSourceTextLossy path = B8.unpack <$> B8.readFile path
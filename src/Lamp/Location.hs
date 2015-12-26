{-# LANGUAGE OverloadedStrings #-}

-- |
-- Circular (knot-stable) data structure that aids in representation of
-- location maps.

module Lamp.Location ( Location (..) ) where

import qualified Data.Text as T
import           Data.Text ( unpack, Text() )
--import           Prelude hiding ( show, showList, showPrec )

data Location = Location { label :: Text
                         , exits :: [Location] }

instance Show (Location) where
  show x = unpack $ T.concat [ label x
                             , " |> "
                             , T.intercalate "; " $ map label $ exits x ]

{-# LANGUAGE OverloadedStrings #-}

-- |
-- 
--       Mine ---- Field
--         \         ^
--          \       /
--       Underground River
--

module Lamp.Location.Map where

import Lamp.Location ( Location (..) )

mine :: Location
mine = Location { label = "Mysterious mine"
                , exits = [ field
                          , undergroundRiver ] }

field :: Location
field = Location { label = "Sunlit field"
                 , exits = [ mine ] }

undergroundRiver :: Location
undergroundRiver = Location { label = "Fast stream under the ground"
                             , exits = [ field
                                       , mine ] }

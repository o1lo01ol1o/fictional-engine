module Main where

import Common.Route (fullRouteEncoder)
import Frontend (frontend)
import Obelisk.Frontend (runFrontend)
import Obelisk.Route (checkEncoder)
import Reflex.Dom (run)

main :: IO ()
main = do
  let Right validFullEncoder = checkEncoder fullRouteEncoder
  run $ runFrontend validFullEncoder frontend
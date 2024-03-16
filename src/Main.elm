port module Main exposing (main)

import Json.Encode
import Web


main : Web.Program State
main =
    Web.program
        { initialState = App.app.initialState
        , interface = App.app.interface
        , ports = { fromJs = fromJs, toJs = toJs }
        }


port toJs : Json.Encode.Value -> Cmd event_


port fromJs : (Json.Encode.Value -> event) -> Sub event

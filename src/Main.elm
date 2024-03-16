port module Main exposing (main)

import Web
import Web.Dom


type alias State =
    ()


main : Web.Program State
main =
    Web.program
        { initialState = ()
        , interface = \() -> Web.Dom.text "hello" |> Web.Dom.render
        , ports = { fromJs = fromJs, toJs = toJs }
        }


port toJs : Json.Encode.Value -> Cmd event_


port fromJs : (Json.Encode.Value -> event) -> Sub event

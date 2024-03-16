module App exposing (app)

import Web.Dom

app =
    { initialState = ()
    , interface =
        \() -> Web.Dom.text "hello" |> Web.Dom.render
    }

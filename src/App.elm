module App exposing (app)

{-| paste in example code and fiddle around
-}

import Web.Dom

app =
    { initialState = ()
    , interface =
        \() -> Web.Dom.text "hello" |> Web.Dom.render
    }

module Subscriptions exposing (subscriptions)

import Message exposing (Message)
import Model exposing (Model)


subscriptions : Model -> Sub Message
subscriptions model =
    Sub.none

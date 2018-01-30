module View exposing (view)

import Model exposing (Model)
import Message exposing (Message)
import Html exposing (Html, h1, text)
import Html.Attributes exposing (style)


view : Model -> Html Message
view model =
    -- The inline style is being used for example purposes in order to keep this example simple and
    -- avoid loading additional resources. Use a proper stylesheet when building your own app.
    h1 [ style [ ( "display", "flex" ), ( "justify-content", "center" ) ] ]
      [ text "Hello Elm!"]

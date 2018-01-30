module Main exposing (..)

import Html exposing (Html, h1, text)
import Message exposing (..)
import Model exposing (..)
import Update exposing (..)
import View exposing (..)
import Subscriptions exposing (..)


main : Program Never Model Message
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

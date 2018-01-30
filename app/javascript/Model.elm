module Model exposing (Model, init)

import Message exposing (Message)

type alias Model =
    {}


init : ( Model, Cmd Message )
init =
  ( Model, Cmd.none )

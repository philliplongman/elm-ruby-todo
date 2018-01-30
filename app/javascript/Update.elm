module Update exposing (getTasks, update)

import Http
import Json.Decode exposing (Decoder, field, list, string)
import Json.Decode.Pipeline exposing (decode, required, optional)
import Message exposing (..)
import Model exposing (Model, Task)


update : Message -> Model -> ( Model, Cmd Message )
update message model =
  case message of
    PageLoad (Ok tasks) ->
      ( { model | tasks = tasks }, Cmd.none )

    PageLoad (Err _) ->
      ( model, Cmd.none )


getTasks : Cmd Message
getTasks =
  let
    request =
      Http.get "/api/tasks" decodeTasks

  in
    Http.send PageLoad request


decodeTasks : Decoder ( List Task )
decodeTasks =
  field "tasks" ( list decodeTask )


decodeTask : Decoder Task
decodeTask =
  decode Task
    |> required "body" string

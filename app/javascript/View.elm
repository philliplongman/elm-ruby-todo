module View exposing (view)

import Model exposing (Model, Task)
import Html exposing (Html, li, ul, text)
import Html.Attributes exposing (class)


view : Model -> Html msg
view { tasks } =
  ul [ class "tasks" ] ( List.map viewTask tasks )


viewTask : Task -> Html msg
viewTask task =
  li [ class "task" ] [ text task.body ]

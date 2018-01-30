module Model exposing (Model, Task)


type alias Model =
  { tasks : List Task
  }


type alias Task =
  { body : String
  }

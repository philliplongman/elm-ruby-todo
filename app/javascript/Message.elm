module Message exposing (..)

import Http
import Model exposing (Task)


type Message
  = PageLoad ( Result Http.Error ( List Task ) )

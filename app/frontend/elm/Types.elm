module Types exposing (..)


type alias Bug =
    { name : String
    , description : String
    }


type alias Model =
    { bugs : List Bug
    }


type Msg
    = OpenModal

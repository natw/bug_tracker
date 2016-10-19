module Types exposing (..)


type alias Bug =
    { name : String
    , description : String
    }


type alias Model =
    { bugs : List Bug
    , showNewBugModal : Bool
    }


type Msg
    = OpenNewBugModal
    | CloseNewBugModal

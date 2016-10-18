module Main exposing (..)

import Debug exposing (log)
import Html.App as App
import Views
import Types exposing (..)


main =
    App.program
        { init = init
        , view = Views.view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    Model [] ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OpenModal ->
            let
                _ =
                    log "OpenModal" 0
            in
                model ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

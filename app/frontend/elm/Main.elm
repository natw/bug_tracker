port module Main exposing (..)

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
    let
        model =
            { bugs = []
            , showNewBugModal = False
            }
    in
        model ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OpenNewBugModal ->
            model ! [ openModal "#newBugModal" ]

        CloseNewBugModal ->
            model ! [ closeModal "#newBugModal" ]


port openModal : String -> Cmd msg


port closeModal : String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

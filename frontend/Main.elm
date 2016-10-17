module Main exposing (..)

import Html.App as App
import Html exposing (..)
import Html.Attributes exposing (..)


main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    {}


type Msg
    = Whatever


init : ( Model, Cmd Msg )
init =
    Model ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Whatever ->
            model ! []


view : Model -> Html Msg
view model =
    div [] [ text "hello" ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

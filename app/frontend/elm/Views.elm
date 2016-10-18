module Views exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ navbar model
        , main_container model
        ]


navbar : Model -> Html Msg
navbar model =
    nav [ class "navbar navbar-inverse navbar-fixed-top" ]
        [ div [ class "container" ]
            [ div [ class "navbar-header" ] []
            , div [ class "collapse navbar-collapse" ] []
            ]
        ]


main_container : Model -> Html Msg
main_container model =
    div [ class "container" ]
        [ div [] [ button [ onClick OpenModal ] [ text "new bug" ] ]
        , div [] (bugs_list model)
        ]


bugs_list : Model -> List (Html Msg)
bugs_list model =
    [ div [ class "row" ]
        [ div [ class "col-sm-12" ]
            [ text "such elm, wow" ]
        ]
    ]

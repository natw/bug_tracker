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
        [ div [] [ button [ type' "button", class "btn btn-primary", onClick OpenNewBugModal ] [ text "new bug" ] ]
        , bugs_list model
        , newBugModal model
        ]


bugs_list : Model -> Html Msg
bugs_list model =
    div []
        [ div [ class "row" ]
            [ div [ class "col-sm-12" ]
                [ text "such elm, wow" ]
            ]
        ]


newBugModal : Model -> Html Msg
newBugModal model =
    div [ id "newBugModal", class "modal fade", tabindex -1, attribute "role" "dialog" ]
        [ div [ class "modal-dialog", attribute "role" "document" ]
            [ div [ class "modal-content" ]
                [ div [ class "modal-header" ]
                    [ button [ type' "button", class "close", attribute "data-dismiss" "modal" ]
                        [ text "×"
                        ]
                    , h4 [ class "modal-title" ] [ text "modal title" ]
                    ]
                , div [ class "modal-body" ]
                    [ p [] [ text "the body of the modal" ]
                    , button [ onClick CloseNewBugModal ] [ text "hey" ]
                    ]
                , div [ class "modal-footer" ]
                    [ button [ type' "button", class "btn btn-default", attribute "data-dismiss" "modal" ] [ text "Close" ]
                    , button [ type' "button", class "btn btn-primary" ] [ text "Save changes" ]
                    ]
                ]
            ]
        ]

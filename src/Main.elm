module Main exposing (..)

import Html exposing (Html, div, h1, img, input, p, text)
import Html.Attributes exposing (class, placeholder, src)
import Html.Events exposing (onClick, onInput)



---- MODEL ----


type alias Model =
    { mainSearchInput : String
    }


init : ( Model, Cmd Msg )
init =
    ( { mainSearchInput = "" }, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp
    | OnInputMainSearch String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        OnInputMainSearch input ->
            ( { model | mainSearchInput = input }, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ h1 [ class "main-title" ] [ text "Kymopedia" ]
        , div [ class "search-bar-container" ]
            [ input [ class "main-search-bar", placeholder "Search...", onInput OnInputMainSearch ] []
            , img [ src "/search-icon.svg" ] []
            ]
        , p [] [ text "Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)" ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }

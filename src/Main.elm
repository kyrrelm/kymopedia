module Main exposing (..)

import Html exposing (Html, a, div, h1, h2, h3, iframe, img, input, p, text)
import Html.Attributes exposing (class, height, href, placeholder, src, width)
import Html.Events exposing (onClick, onInput)
import Http
import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)
import List
import Regex
import RemoteData exposing (WebData)



---- MODEL ----


type alias Category =
    { name : String
    , subcategories : List Subcategory
    }


type alias Subcategory =
    { name : String
    , subsubcategories : List Subsubcategory
    }


type alias Subsubcategory =
    { name : String
    , entries : List Entry
    }


type alias Entry =
    { title : String
    , description : String
    , author : String
    , link : String
    , thumbnail : Maybe String
    }


type alias Model =
    { mainSearchInput : String
    , content : WebData (List Category)
    }


init : ( Model, Cmd Msg )
init =
    ( { mainSearchInput = ""
      , content = RemoteData.Loading
      }
    , fetchContentCmd "http://localhost:4000/api"
    )



---- UPDATE ----


type Msg
    = NoOp
    | OnInputMainSearch String
    | OnFetchContent (WebData (List Category))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        OnInputMainSearch input ->
            ( { model | mainSearchInput = input }, Cmd.none )

        OnFetchContent response ->
            ( { model | content = response }, Cmd.none )



---- COMMANDS ----


fetchContentCmd : String -> Cmd Msg
fetchContentCmd url =
    fetchContentRequest url
        |> RemoteData.sendRequest
        |> Cmd.map OnFetchContent


fetchContentRequest : String -> Http.Request (List Category)
fetchContentRequest url =
    Http.request
        { body = Http.emptyBody
        , expect = Http.expectJson contentDecoder
        , method = "GET"
        , headers = []
        , timeout = Nothing
        , url = url
        , withCredentials = False
        }


contentDecoder : Decode.Decoder (List Category)
contentDecoder =
    Decode.list categoryDecoder


categoryDecoder : Decode.Decoder Category
categoryDecoder =
    decode
        Category
        |> required "category" Decode.string
        |> required "subcategories" (Decode.list subcategoryDecoder)


subcategoryDecoder : Decode.Decoder Subcategory
subcategoryDecoder =
    decode
        Subcategory
        |> required "subcategory" Decode.string
        |> required "subsubcategories" (Decode.list subsubcategoryDecoder)


subsubcategoryDecoder : Decode.Decoder Subsubcategory
subsubcategoryDecoder =
    decode
        Subsubcategory
        |> required "subsubcategory" Decode.string
        |> required "entries" (Decode.list entryDecoder)


entryDecoder : Decode.Decoder Entry
entryDecoder =
    decode
        Entry
        |> required "title" Decode.string
        |> required "description" Decode.string
        |> required "author" Decode.string
        |> required "link" Decode.string
        |> required "thumbnail" (Decode.nullable Decode.string)



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ h1 [ class "main-title" ] [ text "Kymopedia" ]
        , div [ class "search-bar-container" ]
            [ input [ class "main-search-bar", placeholder "Search...", onInput OnInputMainSearch ] []
            , img [ src "/search-icon.svg" ] []
            ]
        , div [ class "categories" ] (viewCategories model)
        , p [] [ text "Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)Content will arrive here shortly. (Or at least I intend it to, but I have a tendency to start projects that I don't finish, so who knows)" ]
        ]


viewCategories : Model -> List (Html Msg)
viewCategories model =
    case model.content of
        RemoteData.Success content ->
            List.map viewCategory content

        RemoteData.Failure e ->
            [ text <| toString <| e ]

        _ ->
            [ text "Hold on a sec, fetching data..." ]


viewCategory : Category -> Html Msg
viewCategory category =
    let
        subcategoriesWithCategoryName =
            List.map (\subcategory -> ( category.name, subcategory )) category.subcategories
    in
    div
        [ class "category" ]
        [ h1 [ class "category-name" ] [ text category.name ]
        , div [ class "subcategories" ] (List.map viewSubcategory subcategoriesWithCategoryName)
        ]


viewSubcategory : ( String, Subcategory ) -> Html Msg
viewSubcategory ( categoryName, subcategory ) =
    let
        maybeViewTitle =
            case categoryName == subcategory.name of
                True ->
                    text ""

                False ->
                    h2 [ class "subcategory-name" ] [ text subcategory.name ]

        subsubcategoriesWithSubcategoryName =
            List.map (\subsubcategory -> ( subcategory.name, subsubcategory )) subcategory.subsubcategories
    in
    div
        [ class "subcategory" ]
        [ maybeViewTitle
        , div [ class "subsubcategories" ] (List.map viewSubsubcategory subsubcategoriesWithSubcategoryName)
        ]


viewSubsubcategory : ( String, Subsubcategory ) -> Html Msg
viewSubsubcategory ( subcategoryName, subsubcategory ) =
    let
        maybeViewTitle =
            case subcategoryName == subsubcategory.name of
                True ->
                    text ""

                False ->
                    h3 [ class "subsubcategory-name" ] [ text subsubcategory.name ]
    in
    div
        [ class "subsubcategory" ]
        [ maybeViewTitle
        , div [ class "subsubcategory-content" ] (List.map frame subsubcategory.entries)
        ]


frame : Entry -> Html Msg
frame entry =
    let
        isYoutubeLink =
            Regex.contains (Regex.regex (Regex.escape "www.youtube.com/watch?v=")) entry.link

        makeYoutubeThumbnailLink hash =
            "https://img.youtube.com/vi/" ++ hash ++ "/0.jpg"

        imageLink =
            case isYoutubeLink of
                True ->
                    String.split "v=" entry.link
                        |> List.reverse
                        |> List.head
                        |> Maybe.withDefault ""
                        |> makeYoutubeThumbnailLink

                False ->
                    case entry.thumbnail of
                        Just thumbnail ->
                            thumbnail

                        Nothing ->
                            "/default_thumbnail.jpg"
    in
    a [ class "frame", href entry.link ]
        [ div [ class "frame-img" ]
            [ img [ src imageLink ] [] ]
        , h3 [ class "title" ] [ text entry.title ]
        , p [ class "description" ] [ text entry.description ]
        , p [ class "author" ] [ text ("- " ++ entry.author) ]
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

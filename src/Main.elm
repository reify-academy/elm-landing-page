module Main exposing (main)

import Browser exposing (sandbox)
import CMS.Interface
import CMS.Object
import CMS.Object.Page as Page
import CMS.Query as Query
import Element exposing (..)
import Github.Object
import Github.Object.User as User
import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet, with)
import RemoteData exposing (RemoteData)


main =
    sandbox { init = 0, update = update, view = view }



-- GITHUB STUFF


type alias User =
    { name : String }


type alias Response =
    { user : Maybe User }



-- END GITHU
-- type alias Response =
--     { page : Maybe Page }


type alias Model =
    RemoteData (Graphql.Http.Error Response) Response


init : ( Model, Cmd Msg )
init =
    ( RemoteData.Loading, makeRequest )


type Msg
    = GotResponse Model


update msg model =
    model


type alias Page =
    { title : Maybe String
    }



-- page : SelectionSet Page CMS.Object.Page
-- page =
--     Query.page.selection
--         |> with Query.page pageSelection
-- query : SelectionSet Response RootQuery
-- query =
--     Query.pages identity page


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest
            "<URL>"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)


view model =
    layout [ padding 10 ] <|
        row
            []
            [ column []
                [ el [] <| text "Hello World"
                , el [] <| text "Some Graphql will sit here"
                ]
            , column []
                [ el [] <| text "Another column"
                ]
            ]

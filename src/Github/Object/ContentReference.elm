-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ContentReference exposing (databaseId, id, reference)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet Int Github.Object.ContentReference
databaseId =
    Object.selectionForField "Int" "databaseId" [] Decode.int


id : SelectionSet Github.Scalar.Id Github.Object.ContentReference
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The reference of the content reference.
-}
reference : SelectionSet String Github.Object.ContentReference
reference =
    Object.selectionForField "String" "reference" [] Decode.string

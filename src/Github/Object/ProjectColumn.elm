-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ProjectColumn exposing (CardsOptionalArguments, cards, createdAt, databaseId, id, name, project, purpose, resourcePath, updatedAt, url)

import Github.Enum.ProjectCardArchivedState
import Github.Enum.ProjectColumnPurpose
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


type alias CardsOptionalArguments =
    { archivedStates : OptionalArgument (List (Maybe Github.Enum.ProjectCardArchivedState.ProjectCardArchivedState))
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| List of cards in the column

  - archivedStates - A list of archived states to filter the cards by
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
cards : (CardsOptionalArguments -> CardsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectCardConnection -> SelectionSet decodesTo Github.Object.ProjectColumn
cards fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { archivedStates = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "archivedStates" filledInOptionals.archivedStates (Encode.enum Github.Enum.ProjectCardArchivedState.toString |> Encode.maybe |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "cards" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.ProjectColumn
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.ProjectColumn
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.ProjectColumn
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The project column's name.
-}
name : SelectionSet String Github.Object.ProjectColumn
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The project that contains this column.
-}
project : SelectionSet decodesTo Github.Object.Project -> SelectionSet decodesTo Github.Object.ProjectColumn
project object_ =
    Object.selectionForCompositeField "project" [] object_ identity


{-| The semantic purpose of the column
-}
purpose : SelectionSet (Maybe Github.Enum.ProjectColumnPurpose.ProjectColumnPurpose) Github.Object.ProjectColumn
purpose =
    Object.selectionForField "(Maybe Enum.ProjectColumnPurpose.ProjectColumnPurpose)" "purpose" [] (Github.Enum.ProjectColumnPurpose.decoder |> Decode.nullable)


{-| The HTTP path for this project column
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.ProjectColumn
resourcePath =
    Object.selectionForField "Scalar.Uri" "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.ProjectColumn
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this project column
-}
url : SelectionSet Github.Scalar.Uri Github.Object.ProjectColumn
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Gist exposing (CommentsOptionalArguments, StargazersOptionalArguments, comments, createdAt, description, id, isPublic, name, owner, pushedAt, stargazers, updatedAt, viewerHasStarred)

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


type alias CommentsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of comments associated with the gist

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.GistCommentConnection -> SelectionSet decodesTo Github.Object.Gist
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.Gist
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The gist description.
-}
description : SelectionSet (Maybe String) Github.Object.Gist
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.Gist
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Whether the gist is public or not.
-}
isPublic : SelectionSet Bool Github.Object.Gist
isPublic =
    Object.selectionForField "Bool" "isPublic" [] Decode.bool


{-| The gist name.
-}
name : SelectionSet String Github.Object.Gist
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The gist owner.
-}
owner : SelectionSet decodesTo Github.Interface.RepositoryOwner -> SelectionSet (Maybe decodesTo) Github.Object.Gist
owner object_ =
    Object.selectionForCompositeField "owner" [] object_ (identity >> Decode.nullable)


{-| Identifies when the gist was last pushed to.
-}
pushedAt : SelectionSet (Maybe Github.Scalar.DateTime) Github.Object.Gist
pushedAt =
    Object.selectionForField "(Maybe Scalar.DateTime)" "pushedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


type alias StargazersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument Github.InputObject.StarOrder
    }


{-| A list of users who have starred this starrable.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Order for connection

-}
stargazers : (StargazersOptionalArguments -> StargazersOptionalArguments) -> SelectionSet decodesTo Github.Object.StargazerConnection -> SelectionSet decodesTo Github.Object.Gist
stargazers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeStarOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "stargazers" optionalArgs object_ identity


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.Gist
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Returns a boolean indicating whether the viewing user has starred this starrable.
-}
viewerHasStarred : SelectionSet Bool Github.Object.Gist
viewerHasStarred =
    Object.selectionForField "Bool" "viewerHasStarred" [] Decode.bool

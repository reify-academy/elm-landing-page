-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.MoveProjectColumnPayload exposing (clientMutationId, columnEdge)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Github.Object.MoveProjectColumnPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The new edge of the moved column.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `columnEdge` will change from `ProjectColumnEdge!` to `ProjectColumnEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
columnEdge : SelectionSet decodesTo Github.Object.ProjectColumnEdge -> SelectionSet decodesTo Github.Object.MoveProjectColumnPayload
columnEdge object_ =
    Object.selectionForCompositeField "columnEdge" [] object_ identity
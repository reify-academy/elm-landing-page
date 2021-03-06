-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.UpdateProjectColumnPayload exposing (clientMutationId, projectColumn)

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
clientMutationId : SelectionSet (Maybe String) Github.Object.UpdateProjectColumnPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The updated project column.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `projectColumn` will change from `ProjectColumn!` to `ProjectColumn`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
projectColumn : SelectionSet decodesTo Github.Object.ProjectColumn -> SelectionSet decodesTo Github.Object.UpdateProjectColumnPayload
projectColumn object_ =
    Object.selectionForCompositeField "projectColumn" [] object_ identity

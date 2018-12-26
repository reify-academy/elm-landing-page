-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RemoveReactionPayload exposing (clientMutationId, reaction, subject)

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
clientMutationId : SelectionSet (Maybe String) Github.Object.RemoveReactionPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The reaction object.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `reaction` will change from `Reaction!` to `Reaction`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
reaction : SelectionSet decodesTo Github.Object.Reaction -> SelectionSet decodesTo Github.Object.RemoveReactionPayload
reaction object_ =
    Object.selectionForCompositeField "reaction" [] object_ identity


{-| The reactable subject.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `subject` will change from `Reactable!` to `Reactable`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
subject : SelectionSet decodesTo Github.Interface.Reactable -> SelectionSet decodesTo Github.Object.RemoveReactionPayload
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity

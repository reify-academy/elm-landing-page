-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RequestReviewsPayload exposing (clientMutationId, pullRequest, requestedReviewersEdge)

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
clientMutationId : SelectionSet (Maybe String) Github.Object.RequestReviewsPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The pull request that is getting requests.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `pullRequest` will change from `PullRequest!` to `PullRequest`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> SelectionSet decodesTo Github.Object.RequestReviewsPayload
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| The edge from the pull request to the requested reviewers.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `requestedReviewersEdge` will change from `UserEdge!` to `UserEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
requestedReviewersEdge : SelectionSet decodesTo Github.Object.UserEdge -> SelectionSet decodesTo Github.Object.RequestReviewsPayload
requestedReviewersEdge object_ =
    Object.selectionForCompositeField "requestedReviewersEdge" [] object_ identity

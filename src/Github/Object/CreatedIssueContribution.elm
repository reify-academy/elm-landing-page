-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CreatedIssueContribution exposing (isRestricted, issue, occurredAt, resourcePath, url, user)

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


{-| Whether this contribution is associated with a record you do not have access to. For
example, your own 'first issue' contribution may have been made on a repository you can no
longer access.
-}
isRestricted : SelectionSet Bool Github.Object.CreatedIssueContribution
isRestricted =
    Object.selectionForField "Bool" "isRestricted" [] Decode.bool


{-| The issue that was opened.
-}
issue : SelectionSet decodesTo Github.Object.Issue -> SelectionSet decodesTo Github.Object.CreatedIssueContribution
issue object_ =
    Object.selectionForCompositeField "issue" [] object_ identity


{-| When this contribution was made.
-}
occurredAt : SelectionSet Github.Scalar.DateTime Github.Object.CreatedIssueContribution
occurredAt =
    Object.selectionForField "Scalar.DateTime" "occurredAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP path for this contribution.
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.CreatedIssueContribution
resourcePath =
    Object.selectionForField "Scalar.Uri" "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this contribution.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.CreatedIssueContribution
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The user who made this contribution.
-}
user : SelectionSet decodesTo Github.Object.User -> SelectionSet decodesTo Github.Object.CreatedIssueContribution
user object_ =
    Object.selectionForCompositeField "user" [] object_ identity

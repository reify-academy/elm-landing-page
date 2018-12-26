-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.Reactable exposing (Fragments, ReactionsOptionalArguments, databaseId, fragments, id, maybeFragments, reactionGroups, reactions, viewerCanReact)

import Github.Enum.ReactionContent
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onCommitComment : SelectionSet decodesTo Github.Object.CommitComment
    , onIssue : SelectionSet decodesTo Github.Object.Issue
    , onIssueComment : SelectionSet decodesTo Github.Object.IssueComment
    , onPullRequest : SelectionSet decodesTo Github.Object.PullRequest
    , onPullRequestReviewComment : SelectionSet decodesTo Github.Object.PullRequestReviewComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.Reactable
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "CommitComment" selections.onCommitComment
        , Object.buildFragment "Issue" selections.onIssue
        , Object.buildFragment "IssueComment" selections.onIssueComment
        , Object.buildFragment "PullRequest" selections.onPullRequest
        , Object.buildFragment "PullRequestReviewComment" selections.onPullRequestReviewComment
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onCommitComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Interface.Reactable
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Interface.Reactable
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo Github.Object.ReactionGroup -> SelectionSet (Maybe (List decodesTo)) Github.Interface.Reactable
reactionGroups object_ =
    Object.selectionForCompositeField "reactionGroups" [] object_ (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , content : OptionalArgument Github.Enum.ReactionContent.ReactionContent
    , orderBy : OptionalArgument Github.InputObject.ReactionOrder
    }


{-| A list of Reactions left on the Issue.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments) -> SelectionSet decodesTo Github.Object.ReactionConnection -> SelectionSet decodesTo Github.Interface.Reactable
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeReactionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reactions" optionalArgs object_ identity


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool Github.Interface.Reactable
viewerCanReact =
    Object.selectionForField "Bool" "viewerCanReact" [] Decode.bool

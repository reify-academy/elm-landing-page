-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Union.PullRequestTimelineItems exposing (Fragments, fragments, maybeFragments)

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
    { onPullRequestCommit : SelectionSet decodesTo Github.Object.PullRequestCommit
    , onPullRequestReview : SelectionSet decodesTo Github.Object.PullRequestReview
    , onPullRequestReviewThread : SelectionSet decodesTo Github.Object.PullRequestReviewThread
    , onBaseRefChangedEvent : SelectionSet decodesTo Github.Object.BaseRefChangedEvent
    , onBaseRefForcePushedEvent : SelectionSet decodesTo Github.Object.BaseRefForcePushedEvent
    , onDeployedEvent : SelectionSet decodesTo Github.Object.DeployedEvent
    , onDeploymentEnvironmentChangedEvent : SelectionSet decodesTo Github.Object.DeploymentEnvironmentChangedEvent
    , onHeadRefDeletedEvent : SelectionSet decodesTo Github.Object.HeadRefDeletedEvent
    , onHeadRefForcePushedEvent : SelectionSet decodesTo Github.Object.HeadRefForcePushedEvent
    , onHeadRefRestoredEvent : SelectionSet decodesTo Github.Object.HeadRefRestoredEvent
    , onMergedEvent : SelectionSet decodesTo Github.Object.MergedEvent
    , onReviewDismissedEvent : SelectionSet decodesTo Github.Object.ReviewDismissedEvent
    , onReviewRequestedEvent : SelectionSet decodesTo Github.Object.ReviewRequestedEvent
    , onReviewRequestRemovedEvent : SelectionSet decodesTo Github.Object.ReviewRequestRemovedEvent
    , onIssueComment : SelectionSet decodesTo Github.Object.IssueComment
    , onCrossReferencedEvent : SelectionSet decodesTo Github.Object.CrossReferencedEvent
    , onAddedToProjectEvent : SelectionSet decodesTo Github.Object.AddedToProjectEvent
    , onAssignedEvent : SelectionSet decodesTo Github.Object.AssignedEvent
    , onClosedEvent : SelectionSet decodesTo Github.Object.ClosedEvent
    , onCommentDeletedEvent : SelectionSet decodesTo Github.Object.CommentDeletedEvent
    , onConvertedNoteToIssueEvent : SelectionSet decodesTo Github.Object.ConvertedNoteToIssueEvent
    , onDemilestonedEvent : SelectionSet decodesTo Github.Object.DemilestonedEvent
    , onLabeledEvent : SelectionSet decodesTo Github.Object.LabeledEvent
    , onLockedEvent : SelectionSet decodesTo Github.Object.LockedEvent
    , onMentionedEvent : SelectionSet decodesTo Github.Object.MentionedEvent
    , onMilestonedEvent : SelectionSet decodesTo Github.Object.MilestonedEvent
    , onMovedColumnsInProjectEvent : SelectionSet decodesTo Github.Object.MovedColumnsInProjectEvent
    , onPinnedEvent : SelectionSet decodesTo Github.Object.PinnedEvent
    , onReferencedEvent : SelectionSet decodesTo Github.Object.ReferencedEvent
    , onRemovedFromProjectEvent : SelectionSet decodesTo Github.Object.RemovedFromProjectEvent
    , onRenamedTitleEvent : SelectionSet decodesTo Github.Object.RenamedTitleEvent
    , onReopenedEvent : SelectionSet decodesTo Github.Object.ReopenedEvent
    , onSubscribedEvent : SelectionSet decodesTo Github.Object.SubscribedEvent
    , onTransferredEvent : SelectionSet decodesTo Github.Object.TransferredEvent
    , onUnassignedEvent : SelectionSet decodesTo Github.Object.UnassignedEvent
    , onUnlabeledEvent : SelectionSet decodesTo Github.Object.UnlabeledEvent
    , onUnlockedEvent : SelectionSet decodesTo Github.Object.UnlockedEvent
    , onUnpinnedEvent : SelectionSet decodesTo Github.Object.UnpinnedEvent
    , onUnsubscribedEvent : SelectionSet decodesTo Github.Object.UnsubscribedEvent
    }


{-| Build up a selection for this Union by passing in a Fragments record.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Union.PullRequestTimelineItems
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "PullRequestCommit" selections.onPullRequestCommit
        , Object.buildFragment "PullRequestReview" selections.onPullRequestReview
        , Object.buildFragment "PullRequestReviewThread" selections.onPullRequestReviewThread
        , Object.buildFragment "BaseRefChangedEvent" selections.onBaseRefChangedEvent
        , Object.buildFragment "BaseRefForcePushedEvent" selections.onBaseRefForcePushedEvent
        , Object.buildFragment "DeployedEvent" selections.onDeployedEvent
        , Object.buildFragment "DeploymentEnvironmentChangedEvent" selections.onDeploymentEnvironmentChangedEvent
        , Object.buildFragment "HeadRefDeletedEvent" selections.onHeadRefDeletedEvent
        , Object.buildFragment "HeadRefForcePushedEvent" selections.onHeadRefForcePushedEvent
        , Object.buildFragment "HeadRefRestoredEvent" selections.onHeadRefRestoredEvent
        , Object.buildFragment "MergedEvent" selections.onMergedEvent
        , Object.buildFragment "ReviewDismissedEvent" selections.onReviewDismissedEvent
        , Object.buildFragment "ReviewRequestedEvent" selections.onReviewRequestedEvent
        , Object.buildFragment "ReviewRequestRemovedEvent" selections.onReviewRequestRemovedEvent
        , Object.buildFragment "IssueComment" selections.onIssueComment
        , Object.buildFragment "CrossReferencedEvent" selections.onCrossReferencedEvent
        , Object.buildFragment "AddedToProjectEvent" selections.onAddedToProjectEvent
        , Object.buildFragment "AssignedEvent" selections.onAssignedEvent
        , Object.buildFragment "ClosedEvent" selections.onClosedEvent
        , Object.buildFragment "CommentDeletedEvent" selections.onCommentDeletedEvent
        , Object.buildFragment "ConvertedNoteToIssueEvent" selections.onConvertedNoteToIssueEvent
        , Object.buildFragment "DemilestonedEvent" selections.onDemilestonedEvent
        , Object.buildFragment "LabeledEvent" selections.onLabeledEvent
        , Object.buildFragment "LockedEvent" selections.onLockedEvent
        , Object.buildFragment "MentionedEvent" selections.onMentionedEvent
        , Object.buildFragment "MilestonedEvent" selections.onMilestonedEvent
        , Object.buildFragment "MovedColumnsInProjectEvent" selections.onMovedColumnsInProjectEvent
        , Object.buildFragment "PinnedEvent" selections.onPinnedEvent
        , Object.buildFragment "ReferencedEvent" selections.onReferencedEvent
        , Object.buildFragment "RemovedFromProjectEvent" selections.onRemovedFromProjectEvent
        , Object.buildFragment "RenamedTitleEvent" selections.onRenamedTitleEvent
        , Object.buildFragment "ReopenedEvent" selections.onReopenedEvent
        , Object.buildFragment "SubscribedEvent" selections.onSubscribedEvent
        , Object.buildFragment "TransferredEvent" selections.onTransferredEvent
        , Object.buildFragment "UnassignedEvent" selections.onUnassignedEvent
        , Object.buildFragment "UnlabeledEvent" selections.onUnlabeledEvent
        , Object.buildFragment "UnlockedEvent" selections.onUnlockedEvent
        , Object.buildFragment "UnpinnedEvent" selections.onUnpinnedEvent
        , Object.buildFragment "UnsubscribedEvent" selections.onUnsubscribedEvent
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onPullRequestCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReview = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReviewThread = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onBaseRefChangedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onBaseRefForcePushedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDeployedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDeploymentEnvironmentChangedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onHeadRefDeletedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onHeadRefForcePushedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onHeadRefRestoredEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMergedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewDismissedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewRequestedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewRequestRemovedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCrossReferencedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onAddedToProjectEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onAssignedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onClosedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommentDeletedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onConvertedNoteToIssueEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDemilestonedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onLabeledEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onLockedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMentionedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMilestonedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMovedColumnsInProjectEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPinnedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReferencedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRemovedFromProjectEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRenamedTitleEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReopenedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onSubscribedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTransferredEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnassignedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnlabeledEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnlockedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnpinnedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnsubscribedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }

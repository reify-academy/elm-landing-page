-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ProtectedBranch exposing (PushAllowancesOptionalArguments, ReviewDismissalAllowancesOptionalArguments, creator, hasDismissableStaleReviews, hasRequiredReviews, hasRequiredStatusChecks, hasRestrictedPushes, hasRestrictedReviewDismissals, hasStrictRequiredStatusChecks, id, isAdminEnforced, name, pushAllowances, repository, requiredStatusCheckContexts, reviewDismissalAllowances)

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


{-| The actor who created this protected branch.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ProtectedBranch
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ (identity >> Decode.nullable)


{-| Will new commits pushed to this branch dismiss pull request review approvals.
-}
hasDismissableStaleReviews : SelectionSet Bool Github.Object.ProtectedBranch
hasDismissableStaleReviews =
    Object.selectionForField "Bool" "hasDismissableStaleReviews" [] Decode.bool


{-| Are reviews required to update this branch.
-}
hasRequiredReviews : SelectionSet Bool Github.Object.ProtectedBranch
hasRequiredReviews =
    Object.selectionForField "Bool" "hasRequiredReviews" [] Decode.bool


{-| Are status checks required to update this branch.
-}
hasRequiredStatusChecks : SelectionSet Bool Github.Object.ProtectedBranch
hasRequiredStatusChecks =
    Object.selectionForField "Bool" "hasRequiredStatusChecks" [] Decode.bool


{-| Is pushing to this branch restricted.
-}
hasRestrictedPushes : SelectionSet Bool Github.Object.ProtectedBranch
hasRestrictedPushes =
    Object.selectionForField "Bool" "hasRestrictedPushes" [] Decode.bool


{-| Is dismissal of pull request reviews restricted.
-}
hasRestrictedReviewDismissals : SelectionSet Bool Github.Object.ProtectedBranch
hasRestrictedReviewDismissals =
    Object.selectionForField "Bool" "hasRestrictedReviewDismissals" [] Decode.bool


{-| Are branches required to be up to date before merging.
-}
hasStrictRequiredStatusChecks : SelectionSet Bool Github.Object.ProtectedBranch
hasStrictRequiredStatusChecks =
    Object.selectionForField "Bool" "hasStrictRequiredStatusChecks" [] Decode.bool


id : SelectionSet Github.Scalar.Id Github.Object.ProtectedBranch
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Can admins overwrite branch protection.
-}
isAdminEnforced : SelectionSet Bool Github.Object.ProtectedBranch
isAdminEnforced =
    Object.selectionForField "Bool" "isAdminEnforced" [] Decode.bool


{-| The name of the protected branch rule.
-}
name : SelectionSet String Github.Object.ProtectedBranch
name =
    Object.selectionForField "String" "name" [] Decode.string


type alias PushAllowancesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list push allowances for this protected branch.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pushAllowances : (PushAllowancesOptionalArguments -> PushAllowancesOptionalArguments) -> SelectionSet decodesTo Github.Object.PushAllowanceConnection -> SelectionSet decodesTo Github.Object.ProtectedBranch
pushAllowances fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pushAllowances" optionalArgs object_ identity


{-| The repository associated with this protected branch.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.ProtectedBranch
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| List of required status check contexts that must pass for commits to be accepted to this branch.
-}
requiredStatusCheckContexts : SelectionSet (Maybe (List (Maybe String))) Github.Object.ProtectedBranch
requiredStatusCheckContexts =
    Object.selectionForField "(Maybe (List (Maybe String)))" "requiredStatusCheckContexts" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


type alias ReviewDismissalAllowancesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list review dismissal allowances for this protected branch.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
reviewDismissalAllowances : (ReviewDismissalAllowancesOptionalArguments -> ReviewDismissalAllowancesOptionalArguments) -> SelectionSet decodesTo Github.Object.ReviewDismissalAllowanceConnection -> SelectionSet decodesTo Github.Object.ProtectedBranch
reviewDismissalAllowances fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviewDismissalAllowances" optionalArgs object_ identity
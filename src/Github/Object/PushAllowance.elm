-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.PushAllowance exposing (actor, branchProtectionRule, id, protectedBranch)

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


{-| The actor that can push.
-}
actor : SelectionSet decodesTo Github.Union.PushAllowanceActor -> SelectionSet (Maybe decodesTo) Github.Object.PushAllowance
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the branch protection rule associated with the allowed user or team.
-}
branchProtectionRule : SelectionSet decodesTo Github.Object.BranchProtectionRule -> SelectionSet (Maybe decodesTo) Github.Object.PushAllowance
branchProtectionRule object_ =
    Object.selectionForCompositeField "branchProtectionRule" [] object_ (identity >> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.PushAllowance
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the protected branch associated with the allowed user or team.
-}
protectedBranch : SelectionSet decodesTo Github.Object.ProtectedBranch -> SelectionSet decodesTo Github.Object.PushAllowance
protectedBranch object_ =
    Object.selectionForCompositeField "protectedBranch" [] object_ identity
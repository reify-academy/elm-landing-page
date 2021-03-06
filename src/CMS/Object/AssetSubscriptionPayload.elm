-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Object.AssetSubscriptionPayload exposing (mutation, node, previousValues, updatedFields)

import CMS.Enum.MutationType
import CMS.InputObject
import CMS.Interface
import CMS.Object
import CMS.Scalar
import CMS.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


mutation : SelectionSet CMS.Enum.MutationType.MutationType CMS.Object.AssetSubscriptionPayload
mutation =
    Object.selectionForField "Enum.MutationType.MutationType" "mutation" [] CMS.Enum.MutationType.decoder


node : SelectionSet decodesTo CMS.Object.Asset -> SelectionSet (Maybe decodesTo) CMS.Object.AssetSubscriptionPayload
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)


updatedFields : SelectionSet (Maybe (List String)) CMS.Object.AssetSubscriptionPayload
updatedFields =
    Object.selectionForField "(Maybe (List String))" "updatedFields" [] (Decode.string |> Decode.list |> Decode.nullable)


previousValues : SelectionSet decodesTo CMS.Object.AssetPreviousValues -> SelectionSet (Maybe decodesTo) CMS.Object.AssetSubscriptionPayload
previousValues object_ =
    Object.selectionForCompositeField "previousValues" [] object_ (identity >> Decode.nullable)

-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Object.PageSubscriptionPayload exposing (mutation, node, previousValues, updatedFields)

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


mutation : SelectionSet CMS.Enum.MutationType.MutationType CMS.Object.PageSubscriptionPayload
mutation =
    Object.selectionForField "Enum.MutationType.MutationType" "mutation" [] CMS.Enum.MutationType.decoder


node : SelectionSet decodesTo CMS.Object.Page -> SelectionSet (Maybe decodesTo) CMS.Object.PageSubscriptionPayload
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)


updatedFields : SelectionSet (Maybe (List String)) CMS.Object.PageSubscriptionPayload
updatedFields =
    Object.selectionForField "(Maybe (List String))" "updatedFields" [] (Decode.string |> Decode.list |> Decode.nullable)


previousValues : SelectionSet decodesTo CMS.Object.PagePreviousValues -> SelectionSet (Maybe decodesTo) CMS.Object.PageSubscriptionPayload
previousValues object_ =
    Object.selectionForCompositeField "previousValues" [] object_ (identity >> Decode.nullable)

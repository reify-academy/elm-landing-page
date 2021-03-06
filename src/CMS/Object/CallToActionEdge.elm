-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Object.CallToActionEdge exposing (cursor, node)

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


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo CMS.Object.CallToAction -> SelectionSet decodesTo CMS.Object.CallToActionEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ identity


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String CMS.Object.CallToActionEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string

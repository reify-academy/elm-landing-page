-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Object.ExplanationBlockConnection exposing (aggregate, edges, pageInfo)

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


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo CMS.Object.PageInfo -> SelectionSet decodesTo CMS.Object.ExplanationBlockConnection
pageInfo object_ =
    Object.selectionForCompositeField "pageInfo" [] object_ identity


{-| A list of edges.
-}
edges : SelectionSet decodesTo CMS.Object.ExplanationBlockEdge -> SelectionSet (List (Maybe decodesTo)) CMS.Object.ExplanationBlockConnection
edges object_ =
    Object.selectionForCompositeField "edges" [] object_ (identity >> Decode.nullable >> Decode.list)


aggregate : SelectionSet decodesTo CMS.Object.AggregateExplanationBlock -> SelectionSet decodesTo CMS.Object.ExplanationBlockConnection
aggregate object_ =
    Object.selectionForCompositeField "aggregate" [] object_ identity

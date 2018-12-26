-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Object.LocationPreviousValues exposing (createdAt, id, updatedAt)

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


id : SelectionSet CMS.Scalar.Id CMS.Object.LocationPreviousValues
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map CMS.Scalar.Id)


createdAt : SelectionSet CMS.Scalar.DateTime CMS.Object.LocationPreviousValues
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map CMS.Scalar.DateTime)


updatedAt : SelectionSet CMS.Scalar.DateTime CMS.Object.LocationPreviousValues
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map CMS.Scalar.DateTime)

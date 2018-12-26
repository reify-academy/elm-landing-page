-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Object.Asset exposing (ImagePageOptionalArguments, UrlOptionalArguments, createdAt, fileName, handle, height, id, imagePage, mimeType, size, status, updatedAt, url, width)

import CMS.Enum.PageOrderByInput
import CMS.Enum.Status
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


status : SelectionSet CMS.Enum.Status.Status CMS.Object.Asset
status =
    Object.selectionForField "Enum.Status.Status" "status" [] CMS.Enum.Status.decoder


id : SelectionSet CMS.Scalar.Id CMS.Object.Asset
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map CMS.Scalar.Id)


createdAt : SelectionSet CMS.Scalar.DateTime CMS.Object.Asset
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map CMS.Scalar.DateTime)


updatedAt : SelectionSet CMS.Scalar.DateTime CMS.Object.Asset
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map CMS.Scalar.DateTime)


handle : SelectionSet String CMS.Object.Asset
handle =
    Object.selectionForField "String" "handle" [] Decode.string


fileName : SelectionSet String CMS.Object.Asset
fileName =
    Object.selectionForField "String" "fileName" [] Decode.string


height : SelectionSet (Maybe Float) CMS.Object.Asset
height =
    Object.selectionForField "(Maybe Float)" "height" [] (Decode.float |> Decode.nullable)


mimeType : SelectionSet (Maybe String) CMS.Object.Asset
mimeType =
    Object.selectionForField "(Maybe String)" "mimeType" [] (Decode.string |> Decode.nullable)


size : SelectionSet (Maybe Float) CMS.Object.Asset
size =
    Object.selectionForField "(Maybe Float)" "size" [] (Decode.float |> Decode.nullable)


width : SelectionSet (Maybe Float) CMS.Object.Asset
width =
    Object.selectionForField "(Maybe Float)" "width" [] (Decode.float |> Decode.nullable)


type alias ImagePageOptionalArguments =
    { where_ : OptionalArgument CMS.InputObject.PageWhereInput
    , orderBy : OptionalArgument CMS.Enum.PageOrderByInput.PageOrderByInput
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-|

  - where\_ -

-}
imagePage : (ImagePageOptionalArguments -> ImagePageOptionalArguments) -> SelectionSet decodesTo CMS.Object.Page -> SelectionSet (Maybe (List decodesTo)) CMS.Object.Asset
imagePage fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { where_ = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "where" filledInOptionals.where_ CMS.InputObject.encodePageWhereInput, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum CMS.Enum.PageOrderByInput.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "imagePage" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


type alias UrlOptionalArguments =
    { transformation : OptionalArgument CMS.InputObject.AssetTransformationInput }


{-| Get the url for the asset with provided transformations applied.
-}
url : (UrlOptionalArguments -> UrlOptionalArguments) -> SelectionSet String CMS.Object.Asset
url fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { transformation = Absent }

        optionalArgs =
            [ Argument.optional "transformation" filledInOptionals.transformation CMS.InputObject.encodeAssetTransformationInput ]
                |> List.filterMap identity
    in
    Object.selectionForField "String" "url" optionalArgs Decode.string

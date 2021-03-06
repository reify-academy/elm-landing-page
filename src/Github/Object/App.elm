-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.App exposing (LogoUrlOptionalArguments, createdAt, databaseId, description, id, logoBackgroundColor, logoUrl, name, slug, updatedAt, url)

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


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.App
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.App
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The description of the app.
-}
description : SelectionSet (Maybe String) Github.Object.App
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.App
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The hex color code, without the leading '#', for the logo background.
-}
logoBackgroundColor : SelectionSet String Github.Object.App
logoBackgroundColor =
    Object.selectionForField "String" "logoBackgroundColor" [] Decode.string


type alias LogoUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the app's logo.

  - size - The size of the resulting image.

-}
logoUrl : (LogoUrlOptionalArguments -> LogoUrlOptionalArguments) -> SelectionSet Github.Scalar.Uri Github.Object.App
logoUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "Scalar.Uri" "logoUrl" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The name of the app.
-}
name : SelectionSet String Github.Object.App
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| A slug based on the name of the app for use in URLs.
-}
slug : SelectionSet String Github.Object.App
slug =
    Object.selectionForField "String" "slug" [] Decode.string


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.App
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The URL to the app's homepage.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.App
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)

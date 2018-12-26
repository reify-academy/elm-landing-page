-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Enum.Locale exposing (Locale(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


type Locale
    = En


list : List Locale
list =
    [ En ]


decoder : Decoder Locale
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "EN" ->
                        Decode.succeed En

                    _ ->
                        Decode.fail ("Invalid Locale type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Locale -> String
toString enum =
    case enum of
        En ->
            "EN"

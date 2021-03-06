-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module CMS.Enum.ExplanationTypes exposing (ExplanationTypes(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


type ExplanationTypes
    = Differences
    | Stages


list : List ExplanationTypes
list =
    [ Differences, Stages ]


decoder : Decoder ExplanationTypes
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "Differences" ->
                        Decode.succeed Differences

                    "Stages" ->
                        Decode.succeed Stages

                    _ ->
                        Decode.fail ("Invalid ExplanationTypes type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ExplanationTypes -> String
toString enum =
    case enum of
        Differences ->
            "Differences"

        Stages ->
            "Stages"

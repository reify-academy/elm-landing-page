-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.PullRequestOrderField exposing (PullRequestOrderField(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which pull\_requests connections can be ordered.

  - CreatedAt - Order pull\_requests by creation time
  - UpdatedAt - Order pull\_requests by update time

-}
type PullRequestOrderField
    = CreatedAt
    | UpdatedAt


list : List PullRequestOrderField
list =
    [ CreatedAt, UpdatedAt ]


decoder : Decoder PullRequestOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    _ ->
                        Decode.fail ("Invalid PullRequestOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"

        UpdatedAt ->
            "UPDATED_AT"

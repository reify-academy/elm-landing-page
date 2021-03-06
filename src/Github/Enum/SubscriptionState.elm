-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.SubscriptionState exposing (SubscriptionState(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a subscription.

  - Unsubscribed - The User is only notified when participating or @mentioned.
  - Subscribed - The User is notified of all conversations.
  - Ignored - The User is never notified.

-}
type SubscriptionState
    = Unsubscribed
    | Subscribed
    | Ignored


list : List SubscriptionState
list =
    [ Unsubscribed, Subscribed, Ignored ]


decoder : Decoder SubscriptionState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "UNSUBSCRIBED" ->
                        Decode.succeed Unsubscribed

                    "SUBSCRIBED" ->
                        Decode.succeed Subscribed

                    "IGNORED" ->
                        Decode.succeed Ignored

                    _ ->
                        Decode.fail ("Invalid SubscriptionState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : SubscriptionState -> String
toString enum =
    case enum of
        Unsubscribed ->
            "UNSUBSCRIBED"

        Subscribed ->
            "SUBSCRIBED"

        Ignored ->
            "IGNORED"

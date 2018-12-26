-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.RepositoryOwner exposing (AvatarUrlOptionalArguments, Fragments, PinnedRepositoriesOptionalArguments, RepositoriesOptionalArguments, RepositoryRequiredArguments, avatarUrl, fragments, id, login, maybeFragments, pinnedRepositories, repositories, repository, resourcePath, url)

import Github.Enum.RepositoryAffiliation
import Github.Enum.RepositoryPrivacy
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onOrganization : SelectionSet decodesTo Github.Object.Organization
    , onUser : SelectionSet decodesTo Github.Object.User
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.RepositoryOwner
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Organization" selections.onOrganization
        , Object.buildFragment "User" selections.onUser
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the owner's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet Github.Scalar.Uri Github.Interface.RepositoryOwner
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "Scalar.Uri" "avatarUrl" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : SelectionSet Github.Scalar.Id Github.Interface.RepositoryOwner
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The username used to login.
-}
login : SelectionSet String Github.Interface.RepositoryOwner
login =
    Object.selectionForField "String" "login" [] Decode.string


type alias PinnedRepositoriesOptionalArguments =
    { privacy : OptionalArgument Github.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument Github.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of repositories this user has pinned to their profile

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> SelectionSet decodesTo Github.Interface.RepositoryOwner
pinnedRepositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pinnedRepositories" optionalArgs object_ identity


type alias RepositoriesOptionalArguments =
    { privacy : OptionalArgument Github.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument Github.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , isFork : OptionalArgument Bool
    }


{-| A list of repositories that the user owns.

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> SelectionSet decodesTo Github.Interface.RepositoryOwner
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent, isFork = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "isFork" filledInOptionals.isFork Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs object_ identity


type alias RepositoryRequiredArguments =
    { name : String }


{-| Find Repository.

  - name - Name of Repository to find.

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo Github.Object.Repository -> SelectionSet (Maybe decodesTo) Github.Interface.RepositoryOwner
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


{-| The HTTP URL for the owner.
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Interface.RepositoryOwner
resourcePath =
    Object.selectionForField "Scalar.Uri" "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for the owner.
-}
url : SelectionSet Github.Scalar.Uri Github.Interface.RepositoryOwner
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)

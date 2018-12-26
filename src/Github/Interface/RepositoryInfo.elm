-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.RepositoryInfo exposing (Fragments, ShortDescriptionHTMLOptionalArguments, createdAt, description, descriptionHTML, forkCount, fragments, hasIssuesEnabled, hasWikiEnabled, homepageUrl, isArchived, isFork, isLocked, isMirror, isPrivate, licenseInfo, lockReason, maybeFragments, mirrorUrl, name, nameWithOwner, owner, pushedAt, resourcePath, shortDescriptionHTML, updatedAt, url)

import Github.Enum.RepositoryLockReason
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
    { onRepository : SelectionSet decodesTo Github.Object.Repository
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.RepositoryInfo
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Repository" selections.onRepository
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Interface.RepositoryInfo
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The description of the repository.
-}
description : SelectionSet (Maybe String) Github.Interface.RepositoryInfo
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The description of the repository rendered to HTML.
-}
descriptionHTML : SelectionSet Github.Scalar.Html Github.Interface.RepositoryInfo
descriptionHTML =
    Object.selectionForField "Scalar.Html" "descriptionHTML" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| Returns how many forks there are of this repository in the whole network.
-}
forkCount : SelectionSet Int Github.Interface.RepositoryInfo
forkCount =
    Object.selectionForField "Int" "forkCount" [] Decode.int


{-| Indicates if the repository has issues feature enabled.
-}
hasIssuesEnabled : SelectionSet Bool Github.Interface.RepositoryInfo
hasIssuesEnabled =
    Object.selectionForField "Bool" "hasIssuesEnabled" [] Decode.bool


{-| Indicates if the repository has wiki feature enabled.
-}
hasWikiEnabled : SelectionSet Bool Github.Interface.RepositoryInfo
hasWikiEnabled =
    Object.selectionForField "Bool" "hasWikiEnabled" [] Decode.bool


{-| The repository's URL.
-}
homepageUrl : SelectionSet (Maybe Github.Scalar.Uri) Github.Interface.RepositoryInfo
homepageUrl =
    Object.selectionForField "(Maybe Scalar.Uri)" "homepageUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| Indicates if the repository is unmaintained.
-}
isArchived : SelectionSet Bool Github.Interface.RepositoryInfo
isArchived =
    Object.selectionForField "Bool" "isArchived" [] Decode.bool


{-| Identifies if the repository is a fork.
-}
isFork : SelectionSet Bool Github.Interface.RepositoryInfo
isFork =
    Object.selectionForField "Bool" "isFork" [] Decode.bool


{-| Indicates if the repository has been locked or not.
-}
isLocked : SelectionSet Bool Github.Interface.RepositoryInfo
isLocked =
    Object.selectionForField "Bool" "isLocked" [] Decode.bool


{-| Identifies if the repository is a mirror.
-}
isMirror : SelectionSet Bool Github.Interface.RepositoryInfo
isMirror =
    Object.selectionForField "Bool" "isMirror" [] Decode.bool


{-| Identifies if the repository is private.
-}
isPrivate : SelectionSet Bool Github.Interface.RepositoryInfo
isPrivate =
    Object.selectionForField "Bool" "isPrivate" [] Decode.bool


{-| The license associated with the repository
-}
licenseInfo : SelectionSet decodesTo Github.Object.License -> SelectionSet (Maybe decodesTo) Github.Interface.RepositoryInfo
licenseInfo object_ =
    Object.selectionForCompositeField "licenseInfo" [] object_ (identity >> Decode.nullable)


{-| The reason the repository has been locked.
-}
lockReason : SelectionSet (Maybe Github.Enum.RepositoryLockReason.RepositoryLockReason) Github.Interface.RepositoryInfo
lockReason =
    Object.selectionForField "(Maybe Enum.RepositoryLockReason.RepositoryLockReason)" "lockReason" [] (Github.Enum.RepositoryLockReason.decoder |> Decode.nullable)


{-| The repository's original mirror URL.
-}
mirrorUrl : SelectionSet (Maybe Github.Scalar.Uri) Github.Interface.RepositoryInfo
mirrorUrl =
    Object.selectionForField "(Maybe Scalar.Uri)" "mirrorUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| The name of the repository.
-}
name : SelectionSet String Github.Interface.RepositoryInfo
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The repository's name with owner.
-}
nameWithOwner : SelectionSet String Github.Interface.RepositoryInfo
nameWithOwner =
    Object.selectionForField "String" "nameWithOwner" [] Decode.string


{-| The User owner of the repository.
-}
owner : SelectionSet decodesTo Github.Interface.RepositoryOwner -> SelectionSet decodesTo Github.Interface.RepositoryInfo
owner object_ =
    Object.selectionForCompositeField "owner" [] object_ identity


{-| Identifies when the repository was last pushed to.
-}
pushedAt : SelectionSet (Maybe Github.Scalar.DateTime) Github.Interface.RepositoryInfo
pushedAt =
    Object.selectionForField "(Maybe Scalar.DateTime)" "pushedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| The HTTP path for this repository
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Interface.RepositoryInfo
resourcePath =
    Object.selectionForField "Scalar.Uri" "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


type alias ShortDescriptionHTMLOptionalArguments =
    { limit : OptionalArgument Int }


{-| A description of the repository, rendered to HTML without any links in it.

  - limit - How many characters to return.

-}
shortDescriptionHTML : (ShortDescriptionHTMLOptionalArguments -> ShortDescriptionHTMLOptionalArguments) -> SelectionSet Github.Scalar.Html Github.Interface.RepositoryInfo
shortDescriptionHTML fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { limit = Absent }

        optionalArgs =
            [ Argument.optional "limit" filledInOptionals.limit Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "Scalar.Html" "shortDescriptionHTML" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Interface.RepositoryInfo
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this repository
-}
url : SelectionSet Github.Scalar.Uri Github.Interface.RepositoryInfo
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
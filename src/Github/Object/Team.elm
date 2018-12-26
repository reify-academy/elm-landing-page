-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Team exposing (AncestorsOptionalArguments, AvatarUrlOptionalArguments, ChildTeamsOptionalArguments, InvitationsOptionalArguments, MembersOptionalArguments, RepositoriesOptionalArguments, ancestors, avatarUrl, childTeams, combinedSlug, createdAt, description, editTeamResourcePath, editTeamUrl, id, invitations, members, membersResourcePath, membersUrl, name, newTeamResourcePath, newTeamUrl, organization, parentTeam, privacy, repositories, repositoriesResourcePath, repositoriesUrl, resourcePath, slug, teamsResourcePath, teamsUrl, updatedAt, url, viewerCanAdminister, viewerCanSubscribe, viewerSubscription)

import Github.Enum.SubscriptionState
import Github.Enum.TeamMemberRole
import Github.Enum.TeamMembershipType
import Github.Enum.TeamPrivacy
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


type alias AncestorsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of teams that are ancestors of this team.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
ancestors : (AncestorsOptionalArguments -> AncestorsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> SelectionSet decodesTo Github.Object.Team
ancestors fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "ancestors" optionalArgs object_ identity


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the team's avatar.

  - size - The size in pixels of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet (Maybe Github.Scalar.Uri) Github.Object.Team
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "(Maybe Scalar.Uri)" "avatarUrl" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


type alias ChildTeamsOptionalArguments =
    { orderBy : OptionalArgument Github.InputObject.TeamOrder
    , userLogins : OptionalArgument (List String)
    , immediateOnly : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| List of child teams belonging to this team

  - orderBy - Order for connection
  - userLogins - User logins to filter by
  - immediateOnly - Whether to list immediate child teams or all descendant child teams.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
childTeams : (ChildTeamsOptionalArguments -> ChildTeamsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> SelectionSet decodesTo Github.Object.Team
childTeams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, userLogins = Absent, immediateOnly = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamOrder, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "immediateOnly" filledInOptionals.immediateOnly Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "childTeams" optionalArgs object_ identity


{-| The slug corresponding to the organization and team.
-}
combinedSlug : SelectionSet String Github.Object.Team
combinedSlug =
    Object.selectionForField "String" "combinedSlug" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.Team
createdAt =
    Object.selectionForField "Scalar.DateTime" "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The description of the team.
-}
description : SelectionSet (Maybe String) Github.Object.Team
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for editing this team
-}
editTeamResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Team
editTeamResourcePath =
    Object.selectionForField "Scalar.Uri" "editTeamResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for editing this team
-}
editTeamUrl : SelectionSet Github.Scalar.Uri Github.Object.Team
editTeamUrl =
    Object.selectionForField "Scalar.Uri" "editTeamUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : SelectionSet Github.Scalar.Id Github.Object.Team
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


type alias InvitationsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of pending invitations for users to this team

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
invitations : (InvitationsOptionalArguments -> InvitationsOptionalArguments) -> SelectionSet decodesTo Github.Object.OrganizationInvitationConnection -> SelectionSet (Maybe decodesTo) Github.Object.Team
invitations fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "invitations" optionalArgs object_ (identity >> Decode.nullable)


type alias MembersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , query : OptionalArgument String
    , membership : OptionalArgument Github.Enum.TeamMembershipType.TeamMembershipType
    , role : OptionalArgument Github.Enum.TeamMemberRole.TeamMemberRole
    , orderBy : OptionalArgument Github.InputObject.TeamMemberOrder
    }


{-| A list of users who are members of this team.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The search string to look for.
  - membership - Filter by membership type
  - role - Filter by team member role
  - orderBy - Order for the connection.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamMemberConnection -> SelectionSet decodesTo Github.Object.Team
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, query = Absent, membership = Absent, role = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "membership" filledInOptionals.membership (Encode.enum Github.Enum.TeamMembershipType.toString), Argument.optional "role" filledInOptionals.role (Encode.enum Github.Enum.TeamMemberRole.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamMemberOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "members" optionalArgs object_ identity


{-| The HTTP path for the team' members
-}
membersResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Team
membersResourcePath =
    Object.selectionForField "Scalar.Uri" "membersResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for the team' members
-}
membersUrl : SelectionSet Github.Scalar.Uri Github.Object.Team
membersUrl =
    Object.selectionForField "Scalar.Uri" "membersUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The name of the team.
-}
name : SelectionSet String Github.Object.Team
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The HTTP path creating a new team
-}
newTeamResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Team
newTeamResourcePath =
    Object.selectionForField "Scalar.Uri" "newTeamResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL creating a new team
-}
newTeamUrl : SelectionSet Github.Scalar.Uri Github.Object.Team
newTeamUrl =
    Object.selectionForField "Scalar.Uri" "newTeamUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The organization that owns this team.
-}
organization : SelectionSet decodesTo Github.Object.Organization -> SelectionSet decodesTo Github.Object.Team
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ identity


{-| The parent team of the team.
-}
parentTeam : SelectionSet decodesTo Github.Object.Team -> SelectionSet (Maybe decodesTo) Github.Object.Team
parentTeam object_ =
    Object.selectionForCompositeField "parentTeam" [] object_ (identity >> Decode.nullable)


{-| The level of privacy the team has.
-}
privacy : SelectionSet Github.Enum.TeamPrivacy.TeamPrivacy Github.Object.Team
privacy =
    Object.selectionForField "Enum.TeamPrivacy.TeamPrivacy" "privacy" [] Github.Enum.TeamPrivacy.decoder


type alias RepositoriesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , query : OptionalArgument String
    , orderBy : OptionalArgument Github.InputObject.TeamRepositoryOrder
    }


{-| A list of repositories this team has access to.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The search string to look for.
  - orderBy - Order for the connection.

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamRepositoryConnection -> SelectionSet decodesTo Github.Object.Team
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, query = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamRepositoryOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs object_ identity


{-| The HTTP path for this team's repositories
-}
repositoriesResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Team
repositoriesResourcePath =
    Object.selectionForField "Scalar.Uri" "repositoriesResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this team's repositories
-}
repositoriesUrl : SelectionSet Github.Scalar.Uri Github.Object.Team
repositoriesUrl =
    Object.selectionForField "Scalar.Uri" "repositoriesUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP path for this team
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.Team
resourcePath =
    Object.selectionForField "Scalar.Uri" "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The slug corresponding to the team.
-}
slug : SelectionSet String Github.Object.Team
slug =
    Object.selectionForField "String" "slug" [] Decode.string


{-| The HTTP path for this team's teams
-}
teamsResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Team
teamsResourcePath =
    Object.selectionForField "Scalar.Uri" "teamsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this team's teams
-}
teamsUrl : SelectionSet Github.Scalar.Uri Github.Object.Team
teamsUrl =
    Object.selectionForField "Scalar.Uri" "teamsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.Team
updatedAt =
    Object.selectionForField "Scalar.DateTime" "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this team
-}
url : SelectionSet Github.Scalar.Uri Github.Object.Team
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Team is adminable by the viewer.
-}
viewerCanAdminister : SelectionSet Bool Github.Object.Team
viewerCanAdminister =
    Object.selectionForField "Bool" "viewerCanAdminister" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool Github.Object.Team
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet (Maybe Github.Enum.SubscriptionState.SubscriptionState) Github.Object.Team
viewerSubscription =
    Object.selectionForField "(Maybe Enum.SubscriptionState.SubscriptionState)" "viewerSubscription" [] (Github.Enum.SubscriptionState.decoder |> Decode.nullable)
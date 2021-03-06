-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Organization exposing (AvatarUrlOptionalArguments, MembersOptionalArguments, MembersWithRoleOptionalArguments, PinnedRepositoriesOptionalArguments, ProjectRequiredArguments, ProjectsOptionalArguments, RepositoriesOptionalArguments, RepositoryRequiredArguments, TeamRequiredArguments, TeamsOptionalArguments, avatarUrl, databaseId, description, email, id, isVerified, location, login, members, membersWithRole, name, newTeamResourcePath, newTeamUrl, organizationBillingEmail, pinnedRepositories, project, projects, projectsResourcePath, projectsUrl, repositories, repository, requiresTwoFactorAuthentication, resourcePath, samlIdentityProvider, team, teams, teamsResourcePath, teamsUrl, url, viewerCanAdminister, viewerCanCreateProjects, viewerCanCreateRepositories, viewerCanCreateTeams, viewerIsAMember, websiteUrl)

import Github.Enum.ProjectState
import Github.Enum.RepositoryAffiliation
import Github.Enum.RepositoryPrivacy
import Github.Enum.TeamPrivacy
import Github.Enum.TeamRole
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


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the organization's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet Github.Scalar.Uri Github.Object.Organization
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "Scalar.Uri" "avatarUrl" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.Organization
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The organization's public profile description.
-}
description : SelectionSet (Maybe String) Github.Object.Organization
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The organization's public email.
-}
email : SelectionSet (Maybe String) Github.Object.Organization
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.Organization
id =
    Object.selectionForField "Scalar.Id" "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Whether the organization has verified its profile email and website.
-}
isVerified : SelectionSet Bool Github.Object.Organization
isVerified =
    Object.selectionForField "Bool" "isVerified" [] Decode.bool


{-| The organization's public profile location.
-}
location : SelectionSet (Maybe String) Github.Object.Organization
location =
    Object.selectionForField "(Maybe String)" "location" [] (Decode.string |> Decode.nullable)


{-| The organization's login name.
-}
login : SelectionSet String Github.Object.Organization
login =
    Object.selectionForField "String" "login" [] Decode.string


type alias MembersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who are members of this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo Github.Object.UserConnection -> SelectionSet decodesTo Github.Object.Organization
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "members" optionalArgs object_ identity


type alias MembersWithRoleOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who are members of this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
membersWithRole : (MembersWithRoleOptionalArguments -> MembersWithRoleOptionalArguments) -> SelectionSet decodesTo Github.Object.OrganizationMemberConnection -> SelectionSet decodesTo Github.Object.Organization
membersWithRole fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "membersWithRole" optionalArgs object_ identity


{-| The organization's public profile name.
-}
name : SelectionSet (Maybe String) Github.Object.Organization
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Organization
newTeamResourcePath =
    Object.selectionForField "Scalar.Uri" "newTeamResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL creating a new team
-}
newTeamUrl : SelectionSet Github.Scalar.Uri Github.Object.Organization
newTeamUrl =
    Object.selectionForField "Scalar.Uri" "newTeamUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The billing email for the organization.
-}
organizationBillingEmail : SelectionSet (Maybe String) Github.Object.Organization
organizationBillingEmail =
    Object.selectionForField "(Maybe String)" "organizationBillingEmail" [] (Decode.string |> Decode.nullable)


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
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> SelectionSet decodesTo Github.Object.Organization
pinnedRepositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pinnedRepositories" optionalArgs object_ identity


type alias ProjectRequiredArguments =
    { number : Int }


{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments -> SelectionSet decodesTo Github.Object.Project -> SelectionSet (Maybe decodesTo) Github.Object.Organization
project requiredArgs object_ =
    Object.selectionForCompositeField "project" [ Argument.required "number" requiredArgs.number Encode.int ] object_ (identity >> Decode.nullable)


type alias ProjectsOptionalArguments =
    { orderBy : OptionalArgument Github.InputObject.ProjectOrder
    , search : OptionalArgument String
    , states : OptionalArgument (List Github.Enum.ProjectState.ProjectState)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of projects under the owner.

  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectConnection -> SelectionSet decodesTo Github.Object.Organization
projects fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, search = Absent, states = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeProjectOrder, Argument.optional "search" filledInOptionals.search Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum Github.Enum.ProjectState.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "projects" optionalArgs object_ identity


{-| The HTTP path listing organization's projects
-}
projectsResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Organization
projectsResourcePath =
    Object.selectionForField "Scalar.Uri" "projectsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing organization's projects
-}
projectsUrl : SelectionSet Github.Scalar.Uri Github.Object.Organization
projectsUrl =
    Object.selectionForField "Scalar.Uri" "projectsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


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
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> SelectionSet decodesTo Github.Object.Organization
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
repository : RepositoryRequiredArguments -> SelectionSet decodesTo Github.Object.Repository -> SelectionSet (Maybe decodesTo) Github.Object.Organization
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


{-| When true the organization requires all members, billing managers, and outside collaborators to enable two-factor authentication.
-}
requiresTwoFactorAuthentication : SelectionSet (Maybe Bool) Github.Object.Organization
requiresTwoFactorAuthentication =
    Object.selectionForField "(Maybe Bool)" "requiresTwoFactorAuthentication" [] (Decode.bool |> Decode.nullable)


{-| The HTTP path for this organization.
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.Organization
resourcePath =
    Object.selectionForField "Scalar.Uri" "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The Organization's SAML Identity Providers
-}
samlIdentityProvider : SelectionSet decodesTo Github.Object.OrganizationIdentityProvider -> SelectionSet (Maybe decodesTo) Github.Object.Organization
samlIdentityProvider object_ =
    Object.selectionForCompositeField "samlIdentityProvider" [] object_ (identity >> Decode.nullable)


type alias TeamRequiredArguments =
    { slug : String }


{-| Find an organization's team by its slug.

  - slug - The name or slug of the team to find.

-}
team : TeamRequiredArguments -> SelectionSet decodesTo Github.Object.Team -> SelectionSet (Maybe decodesTo) Github.Object.Organization
team requiredArgs object_ =
    Object.selectionForCompositeField "team" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias TeamsOptionalArguments =
    { privacy : OptionalArgument Github.Enum.TeamPrivacy.TeamPrivacy
    , role : OptionalArgument Github.Enum.TeamRole.TeamRole
    , query : OptionalArgument String
    , userLogins : OptionalArgument (List String)
    , orderBy : OptionalArgument Github.InputObject.TeamOrder
    , ldapMapped : OptionalArgument Bool
    , rootTeamsOnly : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of teams in this organization.

  - privacy - If non-null, filters teams according to privacy
  - role - If non-null, filters teams according to whether the viewer is an admin or member on team
  - query - If non-null, filters teams with query on team name and team slug
  - userLogins - User logins to filter by
  - orderBy - Ordering options for teams returned from the connection
  - ldapMapped - If true, filters teams that are mapped to an LDAP Group (Enterprise only)
  - rootTeamsOnly - If true, restrict to only root teams
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
teams : (TeamsOptionalArguments -> TeamsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> SelectionSet decodesTo Github.Object.Organization
teams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, role = Absent, query = Absent, userLogins = Absent, orderBy = Absent, ldapMapped = Absent, rootTeamsOnly = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.TeamPrivacy.toString), Argument.optional "role" filledInOptionals.role (Encode.enum Github.Enum.TeamRole.toString), Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamOrder, Argument.optional "ldapMapped" filledInOptionals.ldapMapped Encode.bool, Argument.optional "rootTeamsOnly" filledInOptionals.rootTeamsOnly Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "teams" optionalArgs object_ identity


{-| The HTTP path listing organization's teams
-}
teamsResourcePath : SelectionSet Github.Scalar.Uri Github.Object.Organization
teamsResourcePath =
    Object.selectionForField "Scalar.Uri" "teamsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing organization's teams
-}
teamsUrl : SelectionSet Github.Scalar.Uri Github.Object.Organization
teamsUrl =
    Object.selectionForField "Scalar.Uri" "teamsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this organization.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.Organization
url =
    Object.selectionForField "Scalar.Uri" "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Organization is adminable by the viewer.
-}
viewerCanAdminister : SelectionSet Bool Github.Object.Organization
viewerCanAdminister =
    Object.selectionForField "Bool" "viewerCanAdminister" [] Decode.bool


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : SelectionSet Bool Github.Object.Organization
viewerCanCreateProjects =
    Object.selectionForField "Bool" "viewerCanCreateProjects" [] Decode.bool


{-| Viewer can create repositories on this organization
-}
viewerCanCreateRepositories : SelectionSet Bool Github.Object.Organization
viewerCanCreateRepositories =
    Object.selectionForField "Bool" "viewerCanCreateRepositories" [] Decode.bool


{-| Viewer can create teams on this organization.
-}
viewerCanCreateTeams : SelectionSet Bool Github.Object.Organization
viewerCanCreateTeams =
    Object.selectionForField "Bool" "viewerCanCreateTeams" [] Decode.bool


{-| Viewer is an active member of this organization.
-}
viewerIsAMember : SelectionSet Bool Github.Object.Organization
viewerIsAMember =
    Object.selectionForField "Bool" "viewerIsAMember" [] Decode.bool


{-| The organization's public profile URL.
-}
websiteUrl : SelectionSet (Maybe Github.Scalar.Uri) Github.Object.Organization
websiteUrl =
    Object.selectionForField "(Maybe Scalar.Uri)" "websiteUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)

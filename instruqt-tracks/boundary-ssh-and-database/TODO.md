# TODO

## TODO: Explain the Architecture

- [Architecture](https://learn.hashicorp.com/img/boundary/boundary-resources.png)
    - Controller
    - Worker
    - Database

## TODO: Explain Using Boundary

### Resources: Description

- Scope: Abstract permission boundary modeled as a container. A scope can contain scopes forming a tree.
- Organization: Top-level container (scope) which owns zero to many projects and zero to many authentication methods. An organization inherits from scope allowing it to own zero to many groups, roles, policies, targets, host catalogs or credential stores.
- Project: Child scope of an organization.
- User: Any entity authorized to access Boundary using authentication credentials specific to one of the configured authentication methods. A user can belong to zero or more groups.
- Group: Collection of users used for access control. A group is owned by one and only one scope.
- Role: Collection of capabilities granted to any principal (user, group, or project) the role is assigned to. A role belongs to one and only one scope, and owns zero or more direct grants.
- Host: Computing element with a network address reachable from Boundary.
- Host catalog: Permission boundary modeled as a container containing scopes forming a tree.
- Host set: Subset of hosts from the set of hosts of the host catalog it belongs to. A host set belongs to one and only one host; therefore, it gets deleted when its host catalog is deleted.
- Target: Networked service a user can connect to and interact with through Boundary. A target can contain zero or more host sets.

### Type: Name (Notes)

- Organization: corp_one	A new organization
- Users: (multiple)	(Creates 9 users (Jim, Jeff, Randy, etc.))
- Group: read-only	(A new group with 3 users)
- Roles: (multiple)	2 new roles (Read-only and admin)
- Auth Method: Corp Password	A new password auth method
- Project: core_infra	A new project within the corp_one organization
- Host catalog:	backend_servers	(A new host catalog with one host set
- Host set:	backend_servers_ssh	A new host set with 2 hosts
- Targets: (multiple)	2 new targets (ssh_server and backend_server)


# TODO: General

- Vault Integration
- Make the above tables in the track somewhere
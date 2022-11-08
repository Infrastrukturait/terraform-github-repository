variable "name" {
  type        = string
  description = "The name of the repository."
}

variable "branches" {
  type = any
  # type = list(object({
  #   name          = string
  #   source_branch = optional(string)
  #   source_sha    = optional(string)
  # }))
  default     = []
  description = "A list of branches to be created in this repository."
}

variable "description" {
  type        = string
  default     = ""
  description = "A description of the repository."
}

variable "homepage_url" {
  type        = string
  default     = null
  description = "The website of the repository."
}

variable "visibility" {
  type        = string
  default     = "private"
  description = <<EOT
Can be `public`, `private` or `internal` ([GH Enterprise](https://github.com/enterprise) only). The visibility parameter overrides the private parameter.
Defaults to `private` if neither private nor visibility are set, default to state of private parameter if it is set.
EOT
}

variable "has_issues" {
  type        = bool
  default     = false
  description = "Set to true to enable the GitHub Issues features on the repository."
}

variable "has_projects" {
  type        = bool
  default     = false
  description = <<EOT
Set to true to enable the GitHub Projects features on the repository.
Per the github documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true.
If you specify true when it has been disabled it will return an error.
EOT
}

variable "has_wiki" {
  type        = bool
  default     = false
  description = "Set to true to enable the GitHub Wiki features on the repository."
}

variable "allow_merge_commit" {
  type        = bool
  default     = true
  description = "Set to false to disable merge commits on the repository."
}

variable "allow_squash_merge" {
  type        = bool
  default     = false
  description = "Set to true to enable squash merges on the repository."
}

variable "allow_rebase_merge" {
  type        = bool
  default     = false
  description = "Set to true to enable rebase merges on the repository."
}

variable "allow_auto_merge" {
  type        = bool
  default     = false
  description = <<EOT
Set to true to allow auto-merging pull requests on the repository.
If enabled for a pull request, the pull request will mergeautomatically when all required reviews are met and status checks have passed.
EOT
}

variable "delete_branch_on_merge" {
  type        = bool
  default     = false
  description = "Whether or not to delete the merged branch after merging a pull request."
}

variable "has_downloads" {
  type        = bool
  default     = false
  description = "Set to true to enable the **deprecated** downloads features on the repository."
}

variable "auto_init" {
  type        = bool
  default     = true
  description = "Wether or not to produce an initial commit in the repository."
}

variable "pages" {
  type = any
  # type = object({
  #   branch = string
  #   path   = string
  #   cname  = string
  # })
  default     = {}
  description = "The repository's GitHub Pages configuration."
}

variable "gitignore_template" {
  type        = string
  default     = null
  description = <<EOT
Use the name of the template without the extension. For example, `Haskell`, `Terraform` or `Python`.
Available templates: [3]
EOT
}

variable "is_template" {
  type        = bool
  default     = false
  description = "Whether or not to tell GitHub that this is a template repository."
}

variable "license_template" {
  description = <<EOT
Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'.
Available licences: [4]
EOT
  type        = string
  default     = null
}

variable "default_branch" {
  type        = string
  default     = null
  description = <<EOT
The name of the default branch of the repository.
NOTE: This can only be set after a repository has already been created, and after acorrect reference has been created for the target branch inside the repository.
This means a user will have to omit this parameter from the initial repositorycreation and create the target branch inside of the repository prior to setting this attribute.
EOT
}

variable "archived" {
  type        = bool
  default     = false
  description = "(Optional) Specifies if the repository should be archived. (Default: false)"
}

variable "topics" {
  type        = list(string)
  default     = []
  description = "The list of topics of the repository."
}

variable "template" {
  type = object({
    owner      = string
    repository = string
  })
  default     = null
  description = "Template repository to use."
}

variable "admin_collaborators" {
  type        = list(string)
  default     = []
  description = "A list of users to add as collaborators granting them admin **full** permission."
}

variable "push_collaborators" {
  type        = list(string)
  default     = []
  description = "A list of users to add as collaborators granting them push **read-write** permission."
}

variable "pull_collaborators" {
  type        = list(string)
  default     = []
  description = "A list of users to add as collaborators granting them pull **read-only** permission."
}

variable "triage_collaborators" {
  type        = list(string)
  default     = []
  description = "A list of users to add as collaborators granting them triage permission."
}

variable "maintain_collaborators" {
  type        = list(string)
  default     = []
  description = "A list of users to add as collaborators granting them maintain permission."
}

variable "admin_team_ids" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `id`) to grant admin **full** permission to."
}

variable "push_team_ids" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `id`) to grant push **read-write** permission to."
}

variable "pull_team_ids" {
  type        = list(string)
  default     = []
  description = "(Optional) A list of teams (by `id`) to grant pull **read-only** permission to."
}

variable "triage_team_ids" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `id`) to grant triage permission to."
}

variable "maintain_team_ids" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `id`) to grant maintain permission to."
}

variable "admin_teams" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `name`/`slug`) to grant admin **full** permission to."
}

variable "push_teams" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `name`/`slug`) to grant push **read-write** permission to."
}

variable "pull_teams" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `name`/`slug`) to grant pull **read-only** permission to."
}

variable "triage_teams" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `name`/`slug`) to grant triage permission to."
}

variable "maintain_teams" {
  type        = list(string)
  default     = []
  description = "A list of teams (by `name`/`slug`) to grant maintain permission to."
}

variable "branch_protections_v3" {
  type        = any
  default     = null
  description = <<EOT
A list of branch protections to apply to the repository.
We can't use a detailed type specification due to a terraform limitation. However, this might be changed in a future Terraform version.
See [8] and [9].
```
type = list(object({
    branch                 = string
    enforce_admins         = bool
    require_signed_commits = bool
    required_status_checks = object({
        strict   = bool
        contexts = list(string)
    })
    required_pull_request_reviews = object({
        dismiss_stale_reviews           = bool
        dismissal_users                 = list(string)
        dismissal_teams                 = list(string)
        require_code_owner_reviews      = bool
        required_approving_review_count = number
    })
    restrictions = object({
        users = list(string)
        teams = list(string)
    })
 }))
```
Example:
```
branch_protections = [
{
    branch                 = "main"
    enforce_admins         = true
    require_signed_commits = true

    required_status_checks = {
        strict   = false
        contexts = ["ci/travis"]
    }

    required_pull_request_reviews = {
        dismiss_stale_reviews           = true
        dismissal_users                 = ["user1", "user2"]
        dismissal_teams                 = ["team-slug-1", "team-slug-2"]
        require_code_owner_reviews      = true
        required_approving_review_count = 1
    }

    restrictions = {
        users = ["user1"]
        teams = ["team-slug-1"]
    }
}
]
```
EOT
}

variable "issue_labels_merge_with_github_labels" {
  type        = bool
  default     = null
  description = "Specify if you want to merge and control githubs default set of issue labels."
}

variable "issue_labels_create" {
  type        = bool
  default     = null
  description = "Specify whether you want to force or suppress the creation of issues labels."
}

variable "issue_labels" {
  type = list(object({
    name        = string
    description = string
    color       = string
  }))
  default     = []
  description = <<-EOT
Configure a GitHub issue label resource.
Example:
```
issue_labels = [
    {
        name        = "WIP"
        description = "Work in Progress..."
        color       = "d6c860"
    },
    {
        name        = "another-label"
        description = "This is a lable created by Terraform..."
        color       = "1dc34f"
    }
]
```
EOT
}

variable "deploy_keys" {
  type        = any
  default     = []
  description = <<EOT
Configure a deploy key ( SSH key ) that grants access to a single GitHub repository.
This key is attached directly to the repositoryinstead of to a personal user account.
EOT
}

variable "deploy_keys_computed" {
  type        = any
  default     = []
  description = <<EOT
Configure a deploy key ( SSH key ) that grants access to a single GitHub repository.
This key is attached directly to the repository instead of to a personal user account.
Example:
````
deploy_keys_computed = [
    {
        title     = "CI User Deploy Key"
        key       = computed.resource
        read_only = true
    }
]
```
EOT
}

variable "projects" {
  type = list(object({
    name = string
    body = string
  }))
  default     = []
  description = <<EOT
Create and manage projects for GitHub repository.
Example:
```
projects = [
    {
        name = "Testproject"
        body = "This is a fancy test project for testing"
    }
]
```
EOT
}

variable "webhooks" {
  type        = any
  default     = []
  description = <<EOT
Configuring webhooks.
For details please check: [5].
We can't use a detailed type specification due to a terraform limitation. However, this might be changed in a future Terraform version.
See [8] and [9]
```
type = list(object({
  name         = string
  active       = bool
  events       = list(string)
  url          = string
  content_type = string
  insecure_ssl = bool
  secret       = string
}))
```
Example:
```
webhooks = [{
    active = false
    events = ["issues"]
    url          = "https://google.de/"
    content_type = "form"
    insecure_ssl = false
}]
```
EOT
}

variable "plaintext_secrets" {
  type        = map(string)
  default     = {}
  description = <<EOT
Configuring actions secrets. For details please check: [6].
Example:
```
plaintext_secrets = {
    "MY_SECRET" = "42"
    "OWN_TOKEN" = "12345"
}
```
EOT
}

variable "encrypted_secrets" {
  type        = map(string)
  default     = {}
  description = <<EOT
Configuring encrypted actions secrets. For details please check: [6].
Example:
```
encrypted_secrets = {
    "MY_ENCRYPTED_SECRET" = "MTIzNDU="
}
```
EOT
}


variable "autolink_references" {
  type = list(object({
    key_prefix          = string
    target_url_template = string
  }))
  default     = []
  description = <<EOT
Configuring autolink references. For details please check: [7]
Example:
```
autolink_references = [
    {
        key_prefix          = "TICKET-"
       target_url_template = "https://hello.there/TICKET?query=<num>"
    }
]
```
EOT
}

variable "vulnerability_alerts" {
  type        = bool
  default     = null
  description = "Set to `false` to disable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level."
}

variable "archive_on_destroy" {
  type        = string
  default     = true
  description = "Set to `false` to not archive the repository instead of deleting on destroy."
}

variable "app_installations" {
  type        = set(string)
  default     = []
  description = "(Optional) A list of GitHub App IDs to be installed in this repository."
}


# terraform-github-repository

[![WeSupportUkraine](https://raw.githubusercontent.com/Infrastrukturait/WeSupportUkraine/main/banner.svg)](https://github.com/Infrastrukturait/WeSupportUkraine)
## About
A [1](Terraform) module for creating a public or private repository on [2](Github).
## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

```text
The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Source: <https://opensource.org/licenses/MIT>
```
See [LICENSE](LICENSE) for full details.
## Authors
- Rafał Masiarek | [website](https://masiarek.pl) | [email](mailto:rafal@masiarek.pl) | [github](https://github.com/rafalmasiarek)
<!-- BEGIN_TF_DOCS -->
## Documentation


### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.20, < 6.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [github_actions_secret.repository_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_app_installation_repository.app_installation_repository](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/app_installation_repository) | resource |
| [github_branch.branch](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_branch_protection_v3.branch_protection](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection_v3) | resource |
| [github_issue_label.label](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_repository.repository](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_autolink_reference.repository_autolink_reference](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_autolink_reference) | resource |
| [github_repository_collaborator.collaborator](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborator) | resource |
| [github_repository_deploy_key.deploy_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_deploy_key) | resource |
| [github_repository_deploy_key.deploy_key_computed](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_deploy_key) | resource |
| [github_repository_project.repository_project](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_project) | resource |
| [github_repository_webhook.repository_webhook](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook) | resource |
| [github_team_repository.team_repository](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team_repository.team_repository_by_slug](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_collaborators"></a> [admin\_collaborators](#input\_admin\_collaborators) | A list of users to add as collaborators granting them admin **full** permission. | `list(string)` | `[]` | no |
| <a name="input_admin_team_ids"></a> [admin\_team\_ids](#input\_admin\_team\_ids) | A list of teams (by `id`) to grant admin **full** permission to. | `list(string)` | `[]` | no |
| <a name="input_admin_teams"></a> [admin\_teams](#input\_admin\_teams) | A list of teams (by `name`/`slug`) to grant admin **full** permission to. | `list(string)` | `[]` | no |
| <a name="input_allow_auto_merge"></a> [allow\_auto\_merge](#input\_allow\_auto\_merge) | Set to true to allow auto-merging pull requests on the repository.<br>If enabled for a pull request, the pull request will mergeautomatically when all required reviews are met and status checks have passed. | `bool` | `false` | no |
| <a name="input_allow_merge_commit"></a> [allow\_merge\_commit](#input\_allow\_merge\_commit) | Set to false to disable merge commits on the repository. | `bool` | `true` | no |
| <a name="input_allow_rebase_merge"></a> [allow\_rebase\_merge](#input\_allow\_rebase\_merge) | Set to true to enable rebase merges on the repository. | `bool` | `false` | no |
| <a name="input_allow_squash_merge"></a> [allow\_squash\_merge](#input\_allow\_squash\_merge) | Set to true to enable squash merges on the repository. | `bool` | `false` | no |
| <a name="input_app_installations"></a> [app\_installations](#input\_app\_installations) | (Optional) A list of GitHub App IDs to be installed in this repository. | `set(string)` | `[]` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to `false` to not archive the repository instead of deleting on destroy. | `string` | `true` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | (Optional) Specifies if the repository should be archived. (Default: false) | `bool` | `false` | no |
| <a name="input_auto_init"></a> [auto\_init](#input\_auto\_init) | Wether or not to produce an initial commit in the repository. | `bool` | `true` | no |
| <a name="input_autolink_references"></a> [autolink\_references](#input\_autolink\_references) | Configuring autolink references. For details please check: [7]<br>Example:<pre>autolink_references = [<br>    {<br>        key_prefix          = "TICKET-"<br>       target_url_template = "https://hello.there/TICKET?query=<num>"<br>    }<br>]</pre> | <pre>list(object({<br>    key_prefix          = string<br>    target_url_template = string<br>  }))</pre> | `[]` | no |
| <a name="input_branch_protections_v3"></a> [branch\_protections\_v3](#input\_branch\_protections\_v3) | A list of branch protections to apply to the repository.<br>We can't use a detailed type specification due to a terraform limitation. However, this might be changed in a future Terraform version.<br>See [8] and [9].<pre>type = list(object({<br>    branch                 = string<br>    enforce_admins         = bool<br>    require_signed_commits = bool<br>    required_status_checks = object({<br>        strict   = bool<br>        contexts = list(string)<br>    })<br>    required_pull_request_reviews = object({<br>        dismiss_stale_reviews           = bool<br>        dismissal_users                 = list(string)<br>        dismissal_teams                 = list(string)<br>        require_code_owner_reviews      = bool<br>        required_approving_review_count = number<br>    })<br>    restrictions = object({<br>        users = list(string)<br>        teams = list(string)<br>    })<br> }))</pre>Example:<pre>branch_protections = [<br>{<br>    branch                 = "main"<br>    enforce_admins         = true<br>    require_signed_commits = true<br><br>    required_status_checks = {<br>        strict   = false<br>        contexts = ["ci/travis"]<br>    }<br><br>    required_pull_request_reviews = {<br>        dismiss_stale_reviews           = true<br>        dismissal_users                 = ["user1", "user2"]<br>        dismissal_teams                 = ["team-slug-1", "team-slug-2"]<br>        require_code_owner_reviews      = true<br>        required_approving_review_count = 1<br>    }<br><br>    restrictions = {<br>        users = ["user1"]<br>        teams = ["team-slug-1"]<br>    }<br>}<br>]</pre> | `any` | `null` | no |
| <a name="input_branches"></a> [branches](#input\_branches) | A list of branches to be created in this repository. | `any` | `[]` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The name of the default branch of the repository.<br>NOTE: This can only be set after a repository has already been created, and after acorrect reference has been created for the target branch inside the repository.<br>This means a user will have to omit this parameter from the initial repositorycreation and create the target branch inside of the repository prior to setting this attribute. | `string` | `null` | no |
| <a name="input_delete_branch_on_merge"></a> [delete\_branch\_on\_merge](#input\_delete\_branch\_on\_merge) | Whether or not to delete the merged branch after merging a pull request. | `bool` | `false` | no |
| <a name="input_deploy_keys"></a> [deploy\_keys](#input\_deploy\_keys) | Configure a deploy key ( SSH key ) that grants access to a single GitHub repository.<br>This key is attached directly to the repositoryinstead of to a personal user account. | `any` | `[]` | no |
| <a name="input_deploy_keys_computed"></a> [deploy\_keys\_computed](#input\_deploy\_keys\_computed) | Configure a deploy key ( SSH key ) that grants access to a single GitHub repository.<br>This key is attached directly to the repository instead of to a personal user account.<br>Example:<pre>`<br>deploy_keys_computed = [<br>    {<br>        title     = "CI User Deploy Key"<br>        key       = computed.resource<br>        read_only = true<br>    }<br>]</pre> | `any` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the repository. | `string` | `""` | no |
| <a name="input_encrypted_secrets"></a> [encrypted\_secrets](#input\_encrypted\_secrets) | Configuring encrypted actions secrets. For details please check: [6].<br>Example:<pre>encrypted_secrets = {<br>    "MY_ENCRYPTED_SECRET" = "MTIzNDU="<br>}</pre> | `map(string)` | `{}` | no |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template) | Use the name of the template without the extension. For example, `Haskell`, `Terraform` or `Python`.<br>Available templates: [3] | `string` | `null` | no |
| <a name="input_has_downloads"></a> [has\_downloads](#input\_has\_downloads) | Set to true to enable the **deprecated** downloads features on the repository. | `bool` | `false` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | Set to true to enable the GitHub Issues features on the repository. | `bool` | `false` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | Set to true to enable the GitHub Projects features on the repository.<br>Per the github documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true.<br>If you specify true when it has been disabled it will return an error. | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | Set to true to enable the GitHub Wiki features on the repository. | `bool` | `false` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | The website of the repository. | `string` | `null` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | Whether or not to tell GitHub that this is a template repository. | `bool` | `false` | no |
| <a name="input_issue_labels"></a> [issue\_labels](#input\_issue\_labels) | Configure a GitHub issue label resource.<br>Example:<pre>issue_labels = [<br>    {<br>        name        = "WIP"<br>        description = "Work in Progress..."<br>        color       = "d6c860"<br>    },<br>    {<br>        name        = "another-label"<br>        description = "This is a lable created by Terraform..."<br>        color       = "1dc34f"<br>    }<br>]</pre> | <pre>list(object({<br>    name        = string<br>    description = string<br>    color       = string<br>  }))</pre> | `[]` | no |
| <a name="input_issue_labels_create"></a> [issue\_labels\_create](#input\_issue\_labels\_create) | Specify whether you want to force or suppress the creation of issues labels. | `bool` | `null` | no |
| <a name="input_issue_labels_merge_with_github_labels"></a> [issue\_labels\_merge\_with\_github\_labels](#input\_issue\_labels\_merge\_with\_github\_labels) | Specify if you want to merge and control githubs default set of issue labels. | `bool` | `null` | no |
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'.<br>Available licences: [4] | `string` | `null` | no |
| <a name="input_maintain_collaborators"></a> [maintain\_collaborators](#input\_maintain\_collaborators) | A list of users to add as collaborators granting them maintain permission. | `list(string)` | `[]` | no |
| <a name="input_maintain_team_ids"></a> [maintain\_team\_ids](#input\_maintain\_team\_ids) | A list of teams (by `id`) to grant maintain permission to. | `list(string)` | `[]` | no |
| <a name="input_maintain_teams"></a> [maintain\_teams](#input\_maintain\_teams) | A list of teams (by `name`/`slug`) to grant maintain permission to. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the repository. | `string` | n/a | yes |
| <a name="input_pages"></a> [pages](#input\_pages) | The repository's GitHub Pages configuration. | `any` | `{}` | no |
| <a name="input_plaintext_secrets"></a> [plaintext\_secrets](#input\_plaintext\_secrets) | Configuring actions secrets. For details please check: [6].<br>Example:<pre>plaintext_secrets = {<br>    "MY_SECRET" = "42"<br>    "OWN_TOKEN" = "12345"<br>}</pre> | `map(string)` | `{}` | no |
| <a name="input_projects"></a> [projects](#input\_projects) | Create and manage projects for GitHub repository.<br>Example:<pre>projects = [<br>    {<br>        name = "Testproject"<br>        body = "This is a fancy test project for testing"<br>    }<br>]</pre> | <pre>list(object({<br>    name = string<br>    body = string<br>  }))</pre> | `[]` | no |
| <a name="input_pull_collaborators"></a> [pull\_collaborators](#input\_pull\_collaborators) | A list of users to add as collaborators granting them pull **read-only** permission. | `list(string)` | `[]` | no |
| <a name="input_pull_team_ids"></a> [pull\_team\_ids](#input\_pull\_team\_ids) | (Optional) A list of teams (by `id`) to grant pull **read-only** permission to. | `list(string)` | `[]` | no |
| <a name="input_pull_teams"></a> [pull\_teams](#input\_pull\_teams) | A list of teams (by `name`/`slug`) to grant pull **read-only** permission to. | `list(string)` | `[]` | no |
| <a name="input_push_collaborators"></a> [push\_collaborators](#input\_push\_collaborators) | A list of users to add as collaborators granting them push **read-write** permission. | `list(string)` | `[]` | no |
| <a name="input_push_team_ids"></a> [push\_team\_ids](#input\_push\_team\_ids) | A list of teams (by `id`) to grant push **read-write** permission to. | `list(string)` | `[]` | no |
| <a name="input_push_teams"></a> [push\_teams](#input\_push\_teams) | A list of teams (by `name`/`slug`) to grant push **read-write** permission to. | `list(string)` | `[]` | no |
| <a name="input_template"></a> [template](#input\_template) | Template repository to use. | <pre>object({<br>    owner      = string<br>    repository = string<br>  })</pre> | `null` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics of the repository. | `list(string)` | `[]` | no |
| <a name="input_triage_collaborators"></a> [triage\_collaborators](#input\_triage\_collaborators) | A list of users to add as collaborators granting them triage permission. | `list(string)` | `[]` | no |
| <a name="input_triage_team_ids"></a> [triage\_team\_ids](#input\_triage\_team\_ids) | A list of teams (by `id`) to grant triage permission to. | `list(string)` | `[]` | no |
| <a name="input_triage_teams"></a> [triage\_teams](#input\_triage\_teams) | A list of teams (by `name`/`slug`) to grant triage permission to. | `list(string)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Can be `public`, `private` or `internal` ([GH Enterprise](https://github.com/enterprise) only). The visibility parameter overrides the private parameter.<br>Defaults to `private` if neither private nor visibility are set, default to state of private parameter if it is set. | `string` | `"private"` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability\_alerts](#input\_vulnerability\_alerts) | Set to `false` to disable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level. | `bool` | `null` | no |
| <a name="input_webhooks"></a> [webhooks](#input\_webhooks) | Configuring webhooks.<br>For details please check: [5].<br>We can't use a detailed type specification due to a terraform limitation. However, this might be changed in a future Terraform version.<br>See [8] and [9]<pre>type = list(object({<br>  name         = string<br>  active       = bool<br>  events       = list(string)<br>  url          = string<br>  content_type = string<br>  insecure_ssl = bool<br>  secret       = string<br>}))</pre>Example:<pre>webhooks = [{<br>    active = false<br>    events = ["issues"]<br>    url          = "https://google.de/"<br>    content_type = "form"<br>    insecure_ssl = false<br>}]</pre> | `any` | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_installations"></a> [app\_installations](#output\_app\_installations) | A map of deploy app installations keyed by installation id. |
| <a name="output_branches"></a> [branches](#output\_branches) | A map of branch objects keyed by branch name. |
| <a name="output_collaborators"></a> [collaborators](#output\_collaborators) | A map of collaborator objects keyed by collaborator.name. |
| <a name="output_deploy_keys"></a> [deploy\_keys](#output\_deploy\_keys) | A map of deploy keys keyed by input id. |
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | A string of the form 'orgname/reponame'. |
| <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url) | URL that can be provided to git clone to clone the repository anonymously via the git protocol. |
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | URL to the repository on the web. |
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | URL that can be provided to git clone to clone the repository via HTTPS. |
| <a name="output_issue_labels"></a> [issue\_labels](#output\_issue\_labels) | A map of issue labels keyed by label input id or name. |
| <a name="output_projects"></a> [projects](#output\_projects) | A map of projects keyed by project input id. |
| <a name="output_repository"></a> [repository](#output\_repository) | All attributes and arguments as returned by the github\_repository resource. |
| <a name="output_secrets"></a> [secrets](#output\_secrets) | List of secrets available. |
| <a name="output_ssh_clone_url"></a> [ssh\_clone\_url](#output\_ssh\_clone\_url) | URL that can be provided to git clone to clone the repository via SSH. |
| <a name="output_webhooks"></a> [webhooks](#output\_webhooks) | All attributes and arguments as returned by the github\_repository\_webhook resource. |

### Examples

```hcl
# complete example - main.tf
```

<!-- END_TF_DOCS -->


<!-- references -->

[repo_link]: https://github.com/Infrastrukturait/terraform-github-repository
[1]: https://www.terraform.io/
[2]: https://github.com/
[3]: https://github.com/github/gitignore
[4]: https://github.com/github/choosealicense.com/tree/gh-pages/_licenses
[5]: https://www.terraform.io/docs/providers/github/r/repository_webhook.html
[6]: https://www.terraform.io/docs/providers/github/r/actions_secret
[7]: https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_autolink_reference
[8]: https://github.com/hashicorp/terraform/issues/19898
[9]: https://github.com/hashicorp/terraform/issues/22449

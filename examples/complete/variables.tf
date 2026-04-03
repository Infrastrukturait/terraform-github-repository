variable "github_token" {
  description = "GitHub token with permissions to manage repositories in the target organization or user account."
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub organization or user account in which the repository will be created."
  type        = string
}

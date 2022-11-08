terraform {

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.20, < 6.0"
    }
  }

  required_version = ">= 0.14"
}

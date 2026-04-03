module "example_repository" {
  source = "../../"

  name        = "example-basic-repo"
  description = "Very basic example repository managed by Terraform."
  visibility  = "public"
  topics      = ["example", "terraform", "github"]
  has_issues  = true
  has_wiki    = false
  archived    = false
}

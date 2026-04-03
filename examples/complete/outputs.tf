output "repository_name" {
  value       = module.example_repository.repository.name
  description = "Repository name."
}

output "repository_full_name" {
  value       = module.example_repository.full_name
  description = "Repository full name."
}

output "repository_html_url" {
  value       = module.example_repository.html_url
  description = "Repository URL."
}

output "repository_ssh_clone_url" {
  value       = module.example_repository.ssh_clone_url
  description = "SSH clone URL."
}

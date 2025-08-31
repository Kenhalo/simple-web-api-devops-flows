output "project_id" {
  description = "GCP Project ID"
  value       = var.project_id
}

output "artifact_registry_repository" {
  description = "Artifact Registry repository URL"
  value       = google_artifact_registry_repository.docker_repository.name
}

output "artifact_registry_url" {
  description = "Full Artifact Registry repository URL"
  value       = "${var.artifact_registry_location}-docker.pkg.dev/${var.project_id}/${var.artifact_registry_repository}"
}

output "service_account_email" {
  description = "GitHub Actions service account email"
  value       = google_service_account.github_actions.email
}

output "service_account_key" {
  description = "Service account key (base64 encoded for GitHub secrets)"
  value       = google_service_account_key.github_actions_key.private_key
  sensitive   = true
}

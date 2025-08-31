variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-southeast1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "asia-southeast1-a"
}

variable "artifact_registry_location" {
  description = "Artifact Registry location"
  type        = string
  default     = "asia-southeast1"
}

variable "artifact_registry_repository" {
  description = "Artifact Registry repository name"
  type        = string
  default     = "demo-repo"
}

variable "cloud_run_service_name" {
  description = "Cloud Run service name"
  type        = string
  default     = "hello-world-api"
}

variable "github_repository" {
  description = "GitHub repository in format 'owner/repo'"
  type        = string
}
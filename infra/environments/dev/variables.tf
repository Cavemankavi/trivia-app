variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "trivia-app-dev-spks"
}

variable "region" {
  description = "GCP region for resources"
  type        = string
  default     = "asia-southeast1"
}

variable "service_name" {
  description = "Name of the Cloud Run service"
  type        = string
  default     = "trivia-app-dev"
}
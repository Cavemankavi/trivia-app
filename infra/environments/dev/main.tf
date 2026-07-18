provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_v2_service" "trivia_app" {
  name     = var.service_name
  location = var.region

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }
}

resource "google_cloud_run_v2_service_iam_member" "public_access" {
  location = google_cloud_run_v2_service.trivia_app.location
  name     = google_cloud_run_v2_service.trivia_app.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
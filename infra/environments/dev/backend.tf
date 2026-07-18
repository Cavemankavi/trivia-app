terraform {
  backend "gcs" {
    bucket = "trivia-app-tfstate-spks"
    prefix = "dev"
  }
}
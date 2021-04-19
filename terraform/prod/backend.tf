terraform {
  # Version terraform
  required_version = "0.14.10"

  backend "gcs" {
    bucket = "terraform-prod-reddit-app"
    prefix = "prod"
  }
}
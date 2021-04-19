provider "google" {
  project = var.project
  region = var.region
}

resource "google_storage_bucket" "app-bucket-01" {
  name          = "redit-app-bucket-01"
  location      = "EU"
  force_destroy = true
}

resource "google_storage_bucket" "app-bucket-02" {
  name          = "redit-app-bucket-02"
  location      = "EU"
  force_destroy = true
}
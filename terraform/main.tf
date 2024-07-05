terraform {
  required_providers {
    google = {
      version = "~> 5.21.0"
    }
  }

  required_version = "~> 1.8.2"
}

provider "google" {
  region      = var.default_region
}

resource "google_project" "my_project" {
  name       = "Efficom-test"
  project_id = "${var.project}-${random_string.lower.result}"
  billing_account = var.billing_account
  auto_create_network = false
}

terraform {
  required_version = "~> 1.11"
 
  backend "gcs" {
    bucket = "dev-gke-terraform-state"
    prefix = "dev-gke"
  }
 
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.40.0, < 7"
    }
 
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.40.0, < 7"
    }
  }
}
 
provider "google" {
  project                         = local.project
  region                          = local.region
  add_terraform_attribution_label = false
}

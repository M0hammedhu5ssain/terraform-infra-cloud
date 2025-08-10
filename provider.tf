terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" # Specify a version constraint for the provider
    }
  }
}

provider "google" {
  project     = "tonal-baton-452909-c9"
  region      = "us-central1"   # Optional: Default region for regional resources
  zone        = "us-central1-a" # Optional: Default zone for zonal resources
  credentials = "./keys.json"   # Optional: Path to service account key file
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" 
    }
  }
}

provider "google" {
  project     = "tonal-baton-452909-c9"
  region      = "us-central1"   
  zone        = "us-central1-a" 
  credentials = "./keys.json"   
}

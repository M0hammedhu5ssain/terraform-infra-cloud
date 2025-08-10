resource "google_compute_network" "vpc_network" {
  project                 = "tonal-baton-452909-c9"
  name                    = var.vpcname
  auto_create_subnetworks = false
  mtu                     = 1460
}
resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnet1
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
resource "google_compute_subnetwork" "subnet2" {
  name          = var.subnet2
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
resource "google_compute_firewall" "demo_firewall" {
  name    = var.firewall
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["88", "80", "443", "22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web-server"]
}
resource "google_compute_instance" "vm_demo" {
  name         = var.vminstance
  machine_type = var.machinetype
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.vmimage
      size  = var.vmsize
      type  = "pd-balanced"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.subnet1.id


    access_config {
      # Ephemeral external IP
    }
  }

  tags = ["web-server"]
}
resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = "us-central1"
  force_destroy = true
}

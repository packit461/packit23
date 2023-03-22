terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = "us-east5"
  zone    = "us-east5-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
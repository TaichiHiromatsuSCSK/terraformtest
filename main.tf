terraform {
  required_providers {
    google = "~> 3.70.0"
  }
 
  provider google {
    project = kaigo-fikapoc01
    region = asia-northeast1
  }
 
 # state {
 #   backend = "gcs"
 #   bucket = var.state_bucket
 #   prefix = "terraform/state"
 # }
 
  resource "google_storage_bucket" "auto-expire" {
  name          = "terraformpocfika-bucket"
  location      = "ASIA"
  force_destroy = true

  public_access_prevention = "enforced"
  }
}

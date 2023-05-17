terraform {
  required_providers {
    google = "~> 3.70.0"
  }
 
  provider google {
    project = var.project_id
    region = var.region
  }
 
  state {
    backend = "gcs"
    bucket = var.state_bucket
    prefix = "terraform/state"
  }
 
  resource "google_api_gateway_gateway" "my_gateway" {
    api_config = "projects/my-project/locations/global/apis/my-api/configs/my-config"
    gateway_id = "my-gateway"
  }
}

provider "google" {
  project = kaigofika-poc01
  region  = asia-northeast1
}

#terraform {
#  backend "gcs" {
#    bucket = "tfstatetestpoc"
#    prefix = "terraform/state"
#  }
#}

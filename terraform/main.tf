provider "google" {
  project     ="qwiklabs-gcp-00-802dfdc795c2" 
  region      = "us-central-1"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "quicklabs-gcp-00-802dfdc795c2"
  location    = "US"
  uniform_bucket_level_access = true
}

terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}

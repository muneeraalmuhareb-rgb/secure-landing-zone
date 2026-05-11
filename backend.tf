terraform {
  backend "gcs" {
    bucket = "secure-landing-zone-tfstate"
    prefix = "terraform/state"
  }
}
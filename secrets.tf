resource "google_compute_network" "secure_vpc" {
  name                    = "secure-vpc"
  auto_create_subnetworks = false
}

lifecycle {
  prevent_destroy = true
}
resource "google_compute_instance" "vm_instance" {
  name         = "app-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
  subnetwork = google_compute_subnetwork.private_subnet.name
}

  tags = ["private-vm"]
}
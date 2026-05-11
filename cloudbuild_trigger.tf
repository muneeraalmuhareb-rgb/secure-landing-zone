resource "google_cloudbuild_trigger" "terraform_auto_deploy" {
  name     = "terraform-auto-deploy"
  location = "global"

  github {
    owner = "muneeraalmuhareb-rgb"
    name  = "secure-landing-zone"

    push {
      branch = "main"
    }
  }

  filename = "cloudbuild.yaml"
  service_account = "projects/secure-landing-zone/serviceAccounts/1096004707820-compute@developer.gserviceaccount.com"

  lifecycle {
    ignore_changes = [
      service_account
    ]
  }
}
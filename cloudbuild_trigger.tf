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
}
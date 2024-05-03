module "gke_cluster" {
  source         = "github.com/andrii-sosiuk/DEVOPS101-W7-T1"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}

terraform {
  backend "gcs" {
    bucket = "devops-101"
    prefix = "terraform/state"
  }
}
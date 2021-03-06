module "network" {
  source  = "app.terraform.io/BENWARD-training/network/google"
  version = "3.1.1"

  network_name = "gaurav-network"
  project_id = var.project

  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }]
}
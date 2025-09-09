module "network" {
  source = "../network"

  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
  bastion_ingress    = var.bastion_ingress
  cidr               = "10.0.0.0/16"
  name               = var.name
}

module "network" {
  source = "../network"

  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
  bastion_ingress    = var.bastion_ingress
  cidr               = "10.0.0.0/16"
  name               = var.name
}

module "database" {
  source = "../database"

  security_groups = [module.network.database_security_group]
  subnets         = module.network.database_subnets
  name            = var.name
  vpc_name        = module.network.vpc_name
}

module "cluster" {
  source = "../cluster"

  security_groups = [module.network.private_security_group]
  subnets         = module.network.private_subnets
  name            = var.name
  vpc_id          = module.network.vpc_id

  capacity_providers = {
    "spot" = {
      instance_type = "t3a.medium"
      markettype    = "spot"
    }
  }
}


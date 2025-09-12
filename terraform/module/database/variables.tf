variable "name" {
  description = "the name of the database"
  type        = string
}

variable "security_groups" {
  description = "the security group to deploy the database in"
  type        = list(string)
}

variable "subnets" {
  description = "the subnets to deploy the database in"
  type        = list(string)
}

variable "vpc_name" {
  description = "the name of the vpc"
  type        = string
}

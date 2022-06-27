
data "aws_caller_identity" "current" {}

variable "company_name" {
  default = "acme"
}

variable "environment" {
  default = "dev"
}

locals {
  resource_prefix = {
    value = "${data.aws_caller_identity.current.account_id}-${var.company_name}-${var.environment}"
  }
}



variable "profile" {
  default = "default"
}

variable "region" {
  default = "ap-southeast-1"
}

variable ami {
  type    = string
  default = "ami-0c2b8d1b1b3c83447"
}

variable "dbname" {
  type        = string
  description = "Name of the Database"
  default     = "database1"
}

variable "password" {
  type        = string
  description = "Database password"
  default     = "Aa1234321BbThereisapwdhere"
}

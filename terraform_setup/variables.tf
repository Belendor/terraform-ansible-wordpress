variable "region" {
  description = "The region Terraform deploys your instances"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "pub" {
  description = "Host machine public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDC/znCpNGH+Rp7H+9CHIoBgpicwdIGs0d94/RoxN012fJkKZhywOWqhWt0+zaWmSlBGSiA4NL+ZHQXmIZPSGW+d/2ck3KGtk4d/zodMyabVX46kErEjHDXoGFjPlKaFucYKLt0jZYnKCYzWMNeB3kgfwIo/iqGjOw8MDg7JkbC3ihQviVaqfRreW5PVx+aGz8D6yYjoQl/vGXtYMOLIyviaGt7libkbLAyU/nDYeCDd6uiojndpr2IgqlPt1EzQfljGf6rd6a/zJCpSHQLVQH9v4+lFRdqfBuew5Skv0skQ8BTqKnvPilgVxDlst/KoLzvCweeLNEWdRqMDHyfE11/bvWLhOl6FrvPbv63rKwGXIm3AnvKmo6vfzt+3AByQWDTUnOVdiFuH2JK7kIpOVl+8CDD4YjNQ9UuXHJEk2/QHZYTvEV7+m5XQoj2NK329AkByhDyZwdwTQaCITtM13bkgWLLGuP+rXFZa3B293GAUVnjXaAAvFoxKgcb2cfWFoE= belendor@UbuntuPC"
}

variable "ec2_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 1
}

variable "rules" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
  }))

  default = [
    {
      port        = 80
      proto       = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      port        = 22
      proto       = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
# variable "enable_vpn_gateway" {
#   description = "Enable a VPN gateway in your VPC."
#   type        = bool
#   default     = false
# }

# variable "public_subnet_count" {
#   description = "Number of public subnets."
#   type        = number
#   default     = 2
# }

# variable "private_subnet_count" {
#   description = "Number of private subnets."
#   type        = number
#   default     = 2
# }

# variable "public_subnet_cidr_blocks" {
#   description = "Available cidr blocks for public subnets"
#   type        = list(string)
#   default = [
#     "10.0.1.0/24",
#     "10.0.2.0/24",
#     "10.0.3.0/24",
#     "10.0.4.0/24",
#     "10.0.5.0/24",
#     "10.0.6.0/24",
#     "10.0.7.0/24",
#     "10.0.8.0/24",
#   ]
# }

# variable "private_subnet_cidr_blocks" {
#   description = "Available cidr blocks for private subnets"
#   type        = list(string)
#   default = [
#     "10.0.101.0/24",
#     "10.0.102.0/24",
#     "10.0.103.0/24",
#     "10.0.104.0/24",
#     "10.0.105.0/24",
#     "10.0.106.0/24",
#     "10.0.107.0/24",
#     "10.0.108.0/24",
#   ]
# }

# variable "enable_blue_env" {
#   description = "Enable blue environment"
#   type        = bool
#   default     = true
# }

# variable "blue_instance_count" {
#   description = "Number of instances in blue environment"
#   type        = number
#   default     = 2
# }

# variable "enable_green_env" {
#   description = "Enable green environment"
#   type        = bool
#   default     = true
# }

# variable "green_instance_count" {
#   description = "Number of instances in green environment"
#   type        = number
#   default     = 2
# }

# locals {
#   traffic_dist_map = {
#     blue = {
#       blue  = 100
#       green = 0
#     }
#     blue-90 = {
#       blue  = 90
#       green = 10
#     }
#     split = {
#       blue  = 50
#       green = 50
#     }
#     green-90 = {
#       blue  = 10
#       green = 90
#     }
#     green = {
#       blue  = 0
#       green = 100
#     }
#   }
# }

# variable "traffic_distribution" {
#   description = "Levels of traffic distribution"
#   type        = string
# }

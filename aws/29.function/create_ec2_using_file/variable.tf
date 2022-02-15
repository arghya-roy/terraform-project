variable "os-type" {
  default = "alm"
}
locals {
  tag_alm = {
    Name = "alm"
  }
  tag_ubuntu = {
    Name = "ubuntu"
  }
}

variable "region" {
  default = "ap-south-1"
}

variable "ami_alm" {
  type = map
default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}

variable "ami_ubuntu" {
  type = map
default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0851b76e8b1bce90b"
  }
}
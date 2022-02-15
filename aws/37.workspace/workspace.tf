provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-0c6615d1e95c98aca"
   instance_type = lookup(var.instance_type,terraform.workspace) // look down
}

variable "instance_type" {
  type = "map"

  default = {
    default = "t2.micro"
    dev     = "t2.micro"
    prd     = "t2.large"
  }
}
# lookup(map, key, default)
# terraform.workspace takes the current workspace name, so now value of 
# workspace is key. accoring to the key it matches the value from var.instance_type
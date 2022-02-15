
variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    ap-south-1 = "ami-0c6615d1e95c98aca"
  }
}


variable "INSTANCE_USERNAME" {
  default = "ec2-user"
}


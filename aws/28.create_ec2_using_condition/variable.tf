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
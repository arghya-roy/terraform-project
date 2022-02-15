variable "ami" {
  type = list
  default = ["ami-0c6615d1e95c98aca","ami-0dafa01c8100180f8","ami-0851b76e8b1bce90b"]
}
variable "tag_values" {
  type = list
  default = ["kernel 5.10","kernel 4.14","ubuntu 20.04"]
}
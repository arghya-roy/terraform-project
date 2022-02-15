variable "list" {
  type = list
  default = ["m5.large","t2.micro","t2.medium"]
}
variable "region" {
 default = "ap-south-1" 
}
variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.micro"
  }
}
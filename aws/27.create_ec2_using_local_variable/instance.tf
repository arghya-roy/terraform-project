resource "aws_instance" "app-dev" {
     ami = "ami-0c6615d1e95c98aca"
     instance_type = "t2.micro"
     tags = local.tag
}
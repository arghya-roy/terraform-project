# copy the ami id --- go to search and ami -- search with ami id -- copy the ami name and owner id

data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["137112412989"]


  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220207.1-x86_64-gp2"]
  }
}

data "aws_ami" "app_ami2" {
  most_recent = true
  owners = ["099720109477"]


  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20211129"]
  }
}
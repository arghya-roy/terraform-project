resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("mykey.pub")
}

resource "aws_instance" "alm" {
ami = lookup(var.ami_alm, var.region)
count = "${var.os-type == "alm" ? 1 : 0}"
instance_type = "t2.micro"
   key_name = aws_key_pair.loginkey.key_name
tags = local.tag_alm
}

resource "aws_instance" "ubuntu" {
ami = lookup(var.ami_ubuntu, var.region)
count = "${var.os-type == "ubuntu" ? 1 : 0}"
instance_type = "t2.micro"
key_name = aws_key_pair.loginkey.key_name
tags = local.tag_ubuntu
}

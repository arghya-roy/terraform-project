resource "aws_instance" "alm" {
ami = "ami-0c6615d1e95c98aca"
count = "${var.os-type == "alm" ? 1 : 0}"
instance_type = "t2.micro"
tags = local.tag_alm
}

resource "aws_instance" "ubuntu" {
ami = "ami-0851b76e8b1bce90b"
count = "${var.os-type == "ubuntu" ? 1 : 0}"
instance_type = "t2.micro"
tags = local.tag_ubuntu
}
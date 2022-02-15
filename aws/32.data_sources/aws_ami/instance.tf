
resource "aws_instance" "instance-1" {
    ami = data.aws_ami.app_ami.id
   instance_type = "t2.micro"
}

resource "aws_instance" "instance-2" {
    ami = data.aws_ami.app_ami2.id
   instance_type = "t2.micro"
}

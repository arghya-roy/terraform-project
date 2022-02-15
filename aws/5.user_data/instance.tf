resource "aws_instance" "example" {
  ami           = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"

   user_data = "${file("user-data-apache.sh")}"
}


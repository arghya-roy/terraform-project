provider "aws" {
  region     = "us-west-2"
}



resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id          // the ec2 in which eip will be attached
  allocation_id = aws_eip.lb.id             // the eip which will be attached
}


resource "aws_security_group" "allow_tls" {   
  name        = "kplabs-security-group"

  ingress {
    from_port   = 443        // it allow inbound port 443
    to_port     = 443        // it allow inbound port 443
    protocol    = "tcp"      // it says the type of protocol like- TCP,UDP
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]    // in custom it will add this ip, we need to use /32 after ip

    # cidr_blocks = [aws_eip.lb.public_ip/32]
  }
}

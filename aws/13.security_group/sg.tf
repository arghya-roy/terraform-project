resource "aws_security_group" "name" {
  name        = "group_name"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]  #means only from that vpc
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"          # means all protocol
    cidr_blocks      = ["0.0.0.0/0"]  # means from anywhere
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
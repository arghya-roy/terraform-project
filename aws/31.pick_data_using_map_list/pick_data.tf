

# resource "aws_instance" "myec2" {
#    ami = "ami-082b5a644766e0e6f"
#    instance_type = var.list[1]
# }
  resource "aws_instance" "myec2" {
 ami = "ami-0851b76e8b1bce90b"
 instance_type = var.types[var.region]
}


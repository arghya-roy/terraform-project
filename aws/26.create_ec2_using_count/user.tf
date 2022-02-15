resource "aws_instance" "names" {
ami = var.ami[count.index]
count = length(var.ami)
instance_type = "t2.micro"

  tags = {
    name = var.tag_values[count.index]
    count = length(var.tag_values)
  }
}
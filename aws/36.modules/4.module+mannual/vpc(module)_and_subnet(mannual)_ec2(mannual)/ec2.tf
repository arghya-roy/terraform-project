module "vpc" {
   source = "./module/vpc/"
}

resource "aws_subnet" "main" {
  vpc_id     = module.vpc.vpc_id_name     # to use this vpc's attribute -
                                                #  1) make output of that attribute with a output name -- vpc_id_name
                                                #  2) module.module_name.output_name  ---- module.vpc.vpc_id_name
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "Main"
  }
}

resource "aws_instance" "instance1" {
  ami = "ami-0c6615d1e95c98aca"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main.id
}
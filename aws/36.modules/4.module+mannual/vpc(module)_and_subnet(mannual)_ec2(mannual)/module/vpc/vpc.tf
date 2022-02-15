resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

# to use this vpc's attribute -
       # 1) make output of that attribute with a output name
       # 2) module.module_name.output_name
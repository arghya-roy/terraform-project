output "vpc_id_name" {
  value = aws_vpc.main.id
}

# to use this vpc's attribute -
      #  1) make output of that attribute with a output name -- vpc_id_name
      #  2) module.module_name.output_name  ---- module.vpc.vpc_id_name
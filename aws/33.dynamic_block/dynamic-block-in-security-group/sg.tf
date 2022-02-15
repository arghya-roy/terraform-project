
resource "aws_security_group" "dynamicsg" {
  name        = "dynamic-sg"
  description = "Ingress for Vault"

  dynamic "ingress" {
    for_each = var.sg_ports     //for each means it pick all values in sg_port one by one. 
    iterator = port             // iteraror = anyname, after picking it put the value in port and port assign those value in content one be one
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {           // in this case we do not use iterator
    for_each = var.sg_ports    //for each means it pick all values in sg_port one by one.
    content {
      from_port   = egress.value  // after picking it put the value in engress and engress assign those value in content one be one
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

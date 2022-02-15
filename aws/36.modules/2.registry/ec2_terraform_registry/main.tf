module "ec2module" {
  source = "./modules/ec2"
  ami = "ami-0851b76e8b1bce90b"
  }

module "ec2module2" {
  source = "./modules/ec2"
  ami = "ami-0851b76e8b1bce90b"
}

module "ec2_instance" {                # https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest
  source  = "terraform-aws-modules/ec2-instance/aws"   # no need to create module, it will be imported from online.
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0851b76e8b1bce90b"
  instance_type          = "t2.micro"
  key_name               = "new1"
  monitoring             = true
  tags = {
    Name   = "Roy"
  }
}
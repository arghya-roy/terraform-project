module "ec2module" {
  source = "./modules/ec2"
  ami = "ami-0851b76e8b1bce90b"
  }

module "ec2module2" {
  source = "./modules/ec2"
  ami = "ami-0851b76e8b1bce90b"
}
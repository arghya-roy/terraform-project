module "ec2module" {
  source = "git::https://github.com/arghya-roy/module.git//1)launch_ec2/demo"
  ami = "ami-0851b76e8b1bce90b"
  }

module "ec2module2" {
  source = "git::https://github.com/arghya-roy/module.git//1)launch_ec2/demo"

  }
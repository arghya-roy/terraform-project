suppose we make a tf file where instance type is t2.micro. then we save the plan file in a file called demopath. after that we change the instance type to t2.small and apply it.
so now if you want to apply that tf where instance type is t2.micro, then we just run this command - 
```
terraform apply file/path/with/name
```

### plan-file.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}


resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```
### Commands Used to save plan as file:
```sh
terraform plan -out=demopath  // this will be a binary file, named     demopath. after running this, file will be created automatically.

```
### Commands Used to apply the saved file:
```
terraform apply demopath
```

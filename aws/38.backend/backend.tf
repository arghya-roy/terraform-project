terraform {
  backend "s3" {
    bucket = "namename"
    key    = "name.tfstate"
    region = "ap-south-1"
    dynamodb_table = "name"
  }
}


# we need to create a s3 bucket and allow versioning. and create a dynamodb table with lockid.
# dynamodb - create table - table name - any name & primary key = LockID
# s3 - bucket-name - enable version  
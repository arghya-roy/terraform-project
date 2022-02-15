# Your VPC must have a DB subnet group that you create (for more information, see the next section). You create a DB subnet group by specifying the subnets you created. Amazon RDS chooses a subnet and an IP address within that subnet to associate with your DB instance. The DB instance uses the Availability Zone that contains the subnet.
resource "aws_db_subnet_group" "mysqldb-subnet2" {
  name        = "mysqldb-subnet2"
  description = "RDS subnet group"
  subnet_ids  = [aws_subnet.main-private-1.id, aws_subnet.main-private-2.id]
}


resource "aws_db_instance" "mysqldb" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.allow-mariadb.id]
  db_subnet_group_name = aws_db_subnet_group.mysqldb-subnet2.id
}



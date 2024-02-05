resource "aws_db_subnet_group" "example1new" {
  name       =  "my-db-subnet-group"
  description = "My DB subnet group"
  subnet_ids = [
    aws_subnet.publicsubnet1.id,
    aws_subnet.publicsubnet2.id,

  ]
}

resource "aws_db_subnet_group" "example2new" {
  name       =  "my-db-subnet-group1"
  description = "My DB subnet group"
  subnet_ids = [
    aws_subnet.privatesubnet1.id,
    aws_subnet.privatesubnet2.id,
    

  ]
}


resource "aws_db_subnet_group" "example1new12" {
  name       =  "my-db-subnet-groupnew"
  description = "My DB subnet group"
  subnet_ids = [
    aws_subnet.publicsubnet1.id,
    aws_subnet.publicsubnet2.id,

  ]
}

resource "aws_db_subnet_group" "example2new12" {
  name       =  "my-db-subnet-group1new"
  description = "My DB subnet group"
  subnet_ids = [
    aws_subnet.privatesubnet1.id,
    aws_subnet.privatesubnet2.id,
    

  ]
}


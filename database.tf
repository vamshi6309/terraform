resource "aws_db_instance" "default1new" {
  allocated_storage    = 10
  db_name              = "mydbnew"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.sg.id]
  db_subnet_group_name = aws_db_subnet_group.example1new12.name

   multi_az             = true
  
}

resource "aws_db_instance" "default2new" {
  allocated_storage    = 10
  db_name              = "mydb1new"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.sg.id]
  db_subnet_group_name = aws_db_subnet_group.example2new12.name

  
  
}

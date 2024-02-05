resource "aws_subnet" "publicsubnet1" {
    vpc_id = aws_vpc.devops.id
    cidr_block = "191.0.1.0/24"
    availability_zone = "ap-southeast-1a" 
    tags = {
      Name = "public-subnet1"
    }
  
}

resource "aws_route_table" "rt1" {
vpc_id = aws_vpc.devops.id
tags = {
    Name = "rt-1"
  
}
}

resource "aws_route_table_association" "rta1" {
    route_table_id = aws_route_table.rt1.id
    subnet_id = aws_subnet.publicsubnet1.id
}

resource "aws_route" "ar1" {
    route_table_id = aws_route_table.rt1.id 
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  
}

resource "aws_subnet" "privatesubnet1" {
    vpc_id = aws_vpc.devops.id
    cidr_block = "191.0.2.0/24"
    availability_zone = "ap-southeast-1a"
    tags = {
      Name = "private-subnet1"
    }
  
}

resource "aws_route_table" "rt2" {
vpc_id = aws_vpc.devops.id
tags = {
    Name = "rt-2"
  
}
}

resource "aws_route_table_association" "rta2" {
    route_table_id = aws_route_table.rt2.id
    subnet_id = aws_subnet.privatesubnet1.id 
}


resource "aws_subnet" "publicsubnet2" {
    vpc_id = aws_vpc.devops.id
    cidr_block = "191.0.3.0/24"
    availability_zone = "ap-southeast-1b" 
    tags = {
      Name = "public-subnet2"
    }
  
}

resource "aws_route_table" "rt3" {
vpc_id = aws_vpc.devops.id
tags = {
    Name = "rt-3"
  
}
}

resource "aws_route_table_association" "rta3" {
    route_table_id = aws_route_table.rt3.id
    subnet_id = aws_subnet.publicsubnet2.id 
}

resource "aws_route" "ar3" {
    route_table_id = aws_route_table.rt3.id 
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  
}

resource "aws_subnet" "privatesubnet2" {
    vpc_id = aws_vpc.devops.id
    cidr_block = "191.0.4.0/24"
    availability_zone = "ap-southeast-1b"
    tags = {
      Name = "private-subnet2"
    }
  
}

resource "aws_route_table" "rt4" {
vpc_id = aws_vpc.devops.id
tags = {
    Name = "rt-4"
  
}
}

resource "aws_route_table_association" "rta4" {
    route_table_id = aws_route_table.rt4.id
    subnet_id = aws_subnet.privatesubnet2.id 
}


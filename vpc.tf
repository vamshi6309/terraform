resource "aws_vpc" "devops" {
cidr_block = "191.0.0.0/16"
tags = {
Name = "vpc-new-1"
}
}


resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.devops.id
    tags ={
        Name = "ig-1"
    }
}

resource "aws_instance" "ec21" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.publicsubnet1.id
    associate_public_ip_address = "true"
     security_groups = [aws_security_group.sg.id]
    tags = {
        Name = "ec2-1"
  
}
}

resource "aws_instance" "ec22" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.privatesubnet1.id
    associate_public_ip_address = "true"
    tags = {
        Name = "ec2-2"
    }
}


resource "aws_instance" "ec23" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.publicsubnet2.id
    associate_public_ip_address = "true"
    security_groups = [aws_security_group.sg.id]
    tags = {
        Name = "ec2-3"
  
}
}

resource "aws_instance" "ec24" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.privatesubnet2.id
    associate_public_ip_address = "true"
    tags = {
        Name = "ec2-4"
    }
}


  


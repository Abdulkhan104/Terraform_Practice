#VPC
resource "aws_vpc" "dev_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

#Subnet-public
resource "aws_subnet" "dev_subnet1" {
  vpc_id     = aws_vpc.dev_vpc.id
  cidr_block = var.subnet1_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet1_name
  }
}

#Subnet-private
resource "aws_subnet" "dev_subnet2" {
  vpc_id     = aws_vpc.dev_vpc.id
  cidr_block = var.subnet2_cidr
  map_public_ip_on_launch = false
  tags = {
    Name = var.subnet2_name
  }
}

#IGW
resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = var.igw_name
  }
}

#EIP
resource "aws_eip" "dev_eip" {
  domain = "vpc"
  tags = {
    Name = var.eip_name
  }
}

#NAT
resource "aws_nat_gateway" "dev_nat" {
  allocation_id = aws_eip.dev_eip.id
  subnet_id     = aws_subnet.dev_subnet1.id
  tags = {
    Name = var.nat_name
  }
}

#RT-public
resource "aws_route_table" "dev_public_rt" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = var.public_rt_name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_igw.id
  }
}

#RT-assoc public
resource "aws_route_table_association" "dev_public_assoc" {
  subnet_id      = aws_subnet.dev_subnet1.id
  route_table_id = aws_route_table.dev_public_rt.id
}

#RT-private
resource "aws_route_table" "dev_private_rt" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = var.private_rt_name
  }
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.dev_nat.id
  }
}

#RT-assoc private
resource "aws_route_table_association" "dev_private_assoc" {
  subnet_id      = aws_subnet.dev_subnet2.id
  route_table_id = aws_route_table.dev_private_rt.id
}

#SG
resource "aws_security_group" "dev_sg" {
  name   = var.security_group_name
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = var.security_group_name
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#Ec
resource "aws_instance" "dev_server" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.dev_subnet1.id
  vpc_security_group_ids = [aws_security_group.dev_sg.id]
  tags = {
    Name = var.instance_name
  }
}

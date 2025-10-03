#VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for VPC"
  type        = string
}

#Subnet-public
variable "subnet1_cidr" {
  description = "CIDR block for subnet 1 (public)"
  type        = string
}

variable "subnet1_name" {
  description = "Name tag for Subnet 1"
  type        = string
}

#Subnet-private
variable "subnet2_cidr" {
  description = "CIDR block for subnet 2 (private)"
  type        = string
}

variable "subnet2_name" {
  description = "Name tag for Subnet 2"
  type        = string
}

#IGW
variable "igw_name" {
  description = "Name tag for Internet Gateway"
  type        = string
}

#EIP
variable "eip_name" {
  description = "Name tag for Elastic IP"
  type        = string
}

#NAT
variable "nat_name" {
  description = "Name tag for NAT Gateway"
  type        = string
}

#RT-public
variable "public_rt_name" {
  description = "Name tag for Public Route Table"
  type        = string
}

#RT-private
variable "private_rt_name" {
  description = "Name tag for Private Route Table"
  type        = string
}

#SG
variable "security_group_name" {
  description = "Name tag for Security Group"
  type        = string
}

#EC2
variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2 instance"
  type        = string
}

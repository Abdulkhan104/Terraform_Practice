#vpc
variable "vpc_cidr" {
  description = "cidr block "
  type        = string
}

variable "vpc_name" {
  description = "my vpc cust"
  type        = string
}

#Subnet--pub
variable "subnet1_cidr" {
  description = "sub 1 pub"
  type        = string
}

variable "subnet1_name" {
  description = "sub 1"
  type        = string
}

#Subnet-pvt
variable "subnet2_cidr" {
  description = "sub2 pvt"
  type        = string
}

variable "subnet2_name" {
  description = "sub2"
  type        = string
}

#igw
variable "igw_name" {
  description = "Igw"
  type        = string
}

#eip
variable "eip_name" {
  description = "lastic IP"
  type        = string
}

#notty
variable "nat_name" {
  description = "NAT"
  type        = string
}

#Rt-pub
variable "public_rt_name" {
  description = "my rt public"
  type        = string
}

#rt-pvt
variable "private_rt_name" {
  description = "my rt private" 
  type        = string
}

#sg
variable "security_group_name" {
  description = "sg var"
  type        = string
}

#ec2tance
variable "instance_ami" {
  description = "ami id"
  type        = string
}

variable "instance_type" {
  type        = string
}

variable "instance_name" {
  type        = string
}

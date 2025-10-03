#VPC
vpc_cidr = "10.0.0.0/16"
vpc_name = "my-vpc"

#Subnet-public
subnet1_cidr = "10.0.1.0/24"
subnet1_name = "public-subnet"

#Subnet-private
subnet2_cidr = "10.0.2.0/24"
subnet2_name = "private-subnet"

#IGW
igw_name = "my-igw"

#EIP
eip_name = "my-eip"

#NAT
nat_name = "my-nat-gateway"

#RT-public
public_rt_name = "public-rt"

#RT-private
private_rt_name = "private-rt"

#SG
security_group_name = "my-sg"


instance_ami  = "ami-0abcdef1234567890"
instance_type = "t2.micro"
instance_name = "my-ec2"

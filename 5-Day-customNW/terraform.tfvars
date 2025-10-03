#my cust vpc
vpc_cidr = "10.0.0.0/16"
vpc_name = "my-vpc"

#pub subnet
subnet1_cidr = "10.0.1.0/24"
subnet1_name = "public-subnet"

#pvt subnet
subnet2_cidr = "10.0.2.0/24"
subnet2_name = "private-subnet"

#internate gateway
igw_name = "my-igw"

#elastic=ip
eip_name = "my-eip"

#nat
nat_name = "my-nat-gateway"

#rout tble public
public_rt_name = "public-rt"

#rout tble private
private_rt_name = "private-rt"

#mysg tf vars
security_group_name = "my-sg"

#ec2tance
instance_ami  = "ami-01b6d88af12965bb6"
instance_type = "t2.micro"
instance_name = "abdulEc2WithTeraform"

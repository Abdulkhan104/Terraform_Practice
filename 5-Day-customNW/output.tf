output "vpc_id" {
  description = "vpc id"
  value       = aws_vpc.dev_vpc.id
}

output "public_subnet_id" {
  description = "pub sub id"
  value       = aws_subnet.dev_subnet1.id
}

output "private_subnet_id" {
  description = "pvt sub id"
  value       = aws_subnet.dev_subnet2.id
}

output "igw_id" {
  description = "id for gateway"
  value       = aws_internet_gateway.dev_igw.id
}

output "eip_id" {
  description = "lastic ip id"
  value       = aws_eip.dev_eip.id
}

output "nat_gateway_id" {
  description = "notty id Nat"
  value       = aws_nat_gateway.dev_nat.id
}

output "public_route_table_id" {
  description = "Pub rt ID"
  value       = aws_route_table.dev_public_rt.id
}

output "private_route_table_id" {
  description = "pvt rt ID"
  value       = aws_route_table.dev_private_rt.id
}


output "security_group_id" {
  description = "Sg ID"
  value       = aws_security_group.dev_sg.id
}


output "ec2_instance_id" {
  description = "Ec22 Id"
  value       = aws_instance.dev_server.id
}


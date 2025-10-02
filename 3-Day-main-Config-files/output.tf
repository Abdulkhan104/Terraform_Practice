output "dev" {
    value = aws_instance.dev.public_ip
}

output "prod" {
   value = aws_instance.prod.private_ip
}
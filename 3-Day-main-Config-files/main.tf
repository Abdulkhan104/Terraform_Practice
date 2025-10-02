resource "aws_instance" "dev" {
  ami = var.ami-id
  instance_type = var.insta-type
  tags = {
    "key" = "Ec2tance"
  }
}


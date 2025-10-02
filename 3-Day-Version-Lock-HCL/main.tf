resource "aws_instance" "name" {
  ami = "ami-01b6d88af12965bb6"
  instance_type = "t2.micro"
}
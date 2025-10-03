resource "aws_instance" "name" {
    ami = "ami-08a6efd148b1f7504"
    instance_type = "t2.nano"
    availability_zone = "us-east-1a"
    tags = {
        Name = "dev"
    }

    lifecycle {
      #1st rule = "This is the first rule"
      prevent_destroy = true
      #2nd rule = "This is the second rule"
      create_before_destroy = true
      #3rd rule = "This is the third rule"
      ignore_changes = [ tags,]

    }
    
  
}
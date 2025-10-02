terraform {
  backend "s3" {
    bucket = "testedtetetst"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
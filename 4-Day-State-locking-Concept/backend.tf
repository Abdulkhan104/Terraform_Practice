terraform {
  backend "s3" {
    bucket = "abdulawsdevopss"
    key    = "4-day/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true #s3 supports this feature but teraaform version > 1.10, latest version >=1.10
    #dynamodb_table = "nareshit"  #any version 
    encrypt = true
  }
}
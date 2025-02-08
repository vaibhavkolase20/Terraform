# using this code you can create s3 bucket

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-ram-batch-123-unique"  # Make sure to use a unique bucket name
  tags = {
    name        = "ramtrain-bucket"
    Environment = "Dev"  # Corrected spelling
  }
}
=========================================================================================================================================










terraform {
  backend "s3" {
    bucket = "lokal-1"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myserver" {
    ami = "ami-0e2c8caa4b6378d8c"
    key_name = "vaibhav.key.pem" 
    instance_type = "t2.micro"
    vpc_security_group_ids = [ "sg-0a7c002efafb49d30" ]
    availability_zone = "us-east-1b"
    tags = {
      Name = "ram"
      env = "dev"
    }
}

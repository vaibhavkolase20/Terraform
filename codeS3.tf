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


# this is a url of documentation how to build  bucket
https://chatgpt.com/share/67c42484-51c4-800f-9b12-d0584bf40434



===============================================================================================================
this is step 3-:

# create one derectory like terraform
create 3 file inthis derectory like 1) s3.tf 2) demo.tf 3) provider.tf
# 1) add this code in s3.tf
# this is a s3 bucket


resource aws_s3_bucket my_bucket {

        bucket = "lokalhocal"

2) add this code in demo.tf
provider "aws" {
        region = "us-east-1"
}

3) add this code in provider.tf 
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

# create aws cli using command 
1) curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
2) sudo apt install unzip -y 
3) unzip awscliv2.zip
4) sudo ./aws/install
5) aws --version
# now apply terraform commands


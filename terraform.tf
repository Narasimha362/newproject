provider "aws" {
region = "ap-southeast-1"
access_key = ""
secret_key = ""
}

resource "aws_instance" "dev" {
ami = "ami-0cca134ec43cf708f"
instance_type = "t2.micro"
tags = {
Name = "Dev_server"
}
}

resource "aws_instance" "test" {
ami = "ami-0cca134ec43cf708f"
instance_type = "t2.micro"
tags = {
Name = "Test_server" 
}
}

resource "aws_instance" "prod"
ami = "ami-0cca134ec43cf708f"
instance_type = "t2.micro"
tags = {
Name = "Prod_server" 
}
}

resource "aws_s3_bucket" "onebucket" {
   bucket = "testing-s3-with-terraform"
   acl = "public"
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
}

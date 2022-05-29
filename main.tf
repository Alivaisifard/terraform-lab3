provider "aws" {
    region = "us-west-2"
  
}


resource "aws_s3_bucket" "main_s3_bucket" {
    bucket = "alibuckets0535"

    tags = {
        Name          =  "My bucket"
        Environment   =  "Dev"

        }
  
}

resource "aws_instance" "app_server" {
    ami            =   "ami-0ca285d4c2cda3300"
    instance_type  = "t2.micro"

    tags = {
      Name   = var.instance_name
    }
   
 }
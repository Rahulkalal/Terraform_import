provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform_import_instance" {
  instance_type = "t2.micro"
  ami = "ami-003f5a76758516d1e"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-s3-demo-for_import" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

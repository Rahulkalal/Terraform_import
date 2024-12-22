provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "imported_ec2" {
  # No need to define attributes, as we will import this resource
}

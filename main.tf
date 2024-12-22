resource "aws_s3_bucket" "test_bucket_hcl_import_hands_on" {
  # (resource arguments)
}

#when trying to import s3 bucket you need to import aws_s3_bucket_acl resource block also or eles you will not be importing all the attributes of s3 bucket from AWS
resource "aws_s3_bucket_acl" "import_example" {
  bucket = aws_s3_bucket.unique-terraform-state-bucket-hcl-3210  # Reference to the imported S3 bucket

  # Optionally set the ACL (e.g., private, public-read)
  acl    = "private"
}

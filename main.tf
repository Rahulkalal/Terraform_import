resource "aws_s3_bucket" "unique-terraform-state-bucket-hcl-3210" {
  # Declare the S3 bucket resource here.
  # You don't need to define everything (just the name is enough to import).
}

resource "aws_s3_bucket_acl" "import_example" {
  bucket = aws_s3_bucket.unique-terraform-state-bucket-hcl-3210.id  # Reference the imported S3 bucket
  acl    = "private"
}

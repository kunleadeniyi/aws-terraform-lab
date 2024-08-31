resource "aws_s3_bucket" "data-lake-s3" {
  bucket = "mylab-s3-data-lake-bucket"

  tags = {
    created_by = "tf"
  }
}
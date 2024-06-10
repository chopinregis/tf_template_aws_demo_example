resource "aws_s3_bucket" "bucket1" {
  count  = 2
  bucket = "test-bucket-${count.index}"

  tags = {
    Name = "test-bucket-${count.index}"
  }
}

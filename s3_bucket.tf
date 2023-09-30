
# #bucket creation 
# resource "aws_s3_bucket" "google_s3_bucket" {
#   bucket = "this_bucket_is_used_by_google"
#   tags = {
#     Name        = "google_bucket"
#     environment = "Development"
#   }
# }

# #  acl control
# resource "aws_s3_bucket_public_access_block" "access_block" {
#   bucket                  = aws_s3_bucket.google_s3_bucket.id
#   block_public_acls       = false
#   block_public_policy     = false
#   ignore_public_acls      = false
#   restrict_public_buckets = false
# }

# #### versioning "enable"

# resource "aws_s3_bucket_versioning" "s3_versioning" {
#   bucket = aws_s3_bucket.google_s3_bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }

# }

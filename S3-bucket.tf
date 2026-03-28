resource "aws_s3_bucket" "buckets-2-bentleys" {
    bucket        = "buckets-2-bentleys"
    force_destroy = true

     tags = {
    Name = "jenkins-Bucket"
  }
}

resource "aws_s3_object" "Armageddon-passed" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Armageddon-passed.png"
  source       = "./bucket-images/Armageddon-passed.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Armageddon-passed.png")
}

resource "aws_s3_object" "Webhook-run" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Webhook-run.txt"
  source       = "./bucket-images/Webhook-run.txt"
  content_type = "text/plain"
  etag         = filemd5("./bucket-images/Webhook-run.txt")
}

resource "aws_s3_object" "Armageddon-link" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Armageddon-link.txt"
  source       = "./bucket-images/Armageddon-link.txt"
  content_type = "text/plain"
  etag         = filemd5("./bucket-images/Armageddon-link.txt")
}

resource "aws_s3_object" "Webhook-Successful-Build" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Webhook-Successful-Build.png"
  source       = "./bucket-images/Webhook-Successful-Build.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Webhook-Successful-Build.png")
}

resource "aws_s3_object" "Webhook-Start" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Webhook-Start.png"
  source       = "./bucket-images/Webhook-Start.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Webhook-Start.png")
}

resource "aws_s3_object" "Webhook-Setup" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Webhook-Setup.png"
  source       = "./bucket-images/Webhook-Setup.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Webhook-Setup.png")
}

resource "aws_s3_object" "Webhook-End-Successfully" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Webhook-End-Successfully.png"
  source       = "./bucket-images/Webhook-End-Successfully.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Webhook-End-Successfully.png")
}

resource "aws_s3_object" "Trigger-Activated" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Trigger-Activated.png"
  source       = "./bucket-images/Trigger-Activated.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Trigger-Activated.png")
}

resource "aws_s3_object" "Successful-pipeline2" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Successful-pipeline2.png"
  source       = "./bucket-images/Successful-pipeline2.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/Successful-pipeline2.png")
}

resource "aws_s3_object" "Successful-pipeline1" {
  bucket       = aws_s3_bucket.buckets-2-bentleys.id
  key          = "Successful-pipeline1.png"
  source       = "./bucket-images/Successful-pipeline1.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/Successful-pipeline1.png")
}

# resource "aws_s3_object" "S3-BucketContents" {
#   bucket       = aws_s3_bucket.buckets-2-bentleys.id
#   key          = "S3-BucketContents.png"
#   source       = "./bucket-images/S3-BucketContents.png"
#   content_type = "image/jpeg"
#   etag         = filemd5("./bucket-images/S3-BucketContents.png")
# }
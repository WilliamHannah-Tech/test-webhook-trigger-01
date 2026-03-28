resource "aws_s3_bucket" "buckets_2_bentleys" {
    bucket        = "buckets-2-bentleys"
    force_destroy = true

     tags = {
    Name = "jenkins-Bucket"
  }
}

resource "aws_s3_object" "Armageddon_passed" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Armageddon-passed.png"
  source       = "./bucket-images/Armageddon-passed.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Armageddon-passed.png")
}

# resource "aws_s3_object" "Webhook_run" {
#   bucket       = aws_s3_bucket.buckets_2_bentleys.id
#   key          = "Webhook-run.txt"
#   source       = "./bucket-images/Webhook-run.txt"
#   content_type = "text/plain"
#   etag         = filemd5("./bucket-images/Webhook-run.txt")
# }

resource "aws_s3_object" "Armageddon_link" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Armageddon-link.txt"
  source       = "./bucket-images/Armageddon-link.txt"
  content_type = "text/plain"
  etag         = filemd5("./bucket-images/Armageddon-link.txt")
}

# resource "aws_s3_object" "Webhook_Successful_Build" {
#   bucket       = aws_s3_bucket.buckets_2_bentleys.id
#   key          = "Webhook-Successful-Build.png"
#   source       = "./bucket-images/Webhook-Successful-Build.png"
#   content_type = "image/png"
#   etag         = filemd5("./bucket-images/Webhook-Successful-Build.png")
# }


resource "aws_s3_object" "Successful_pipeline2" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Successful-pipeline2.png"
  source       = "./bucket-images/Successful-pipeline2.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/Successful-pipeline2.png")
}

resource "aws_s3_object" "Successful_pipeline1" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Successful-pipeline1.png"
  source       = "./bucket-images/Successful-pipeline1.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/Successful-pipeline1.png")
}

# resource "aws_s3_object" "S3-BucketContents" {
#   bucket       = aws_s3_bucket.buckets_2_bentleys.id
#   key          = "S3-BucketContents.png"
#   source       = "./bucket-images/S3-BucketContents.png"
#   content_type = "image/jpeg"
#   etag         = filemd5("./bucket-images/S3-BucketContents.png")
# }
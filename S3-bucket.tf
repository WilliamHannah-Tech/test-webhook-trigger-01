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

resource "aws_s3_object" "Webhook_run" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Webhook-Run.png"
  source       = "./bucket-images/Webhook-Run.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Webhook-Run.png")
}

resource "aws_s3_object" "Armageddon_link" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Armageddon-link.txt"
  source       = "./bucket-images/Armageddon-link.txt"
  content_type = "text/plain"
  etag         = filemd5("./bucket-images/Armageddon-link.txt")
}

resource "aws_s3_object" "Webhook_Successful_Build" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Webhook-Successful-Build.png"
  source       = "./bucket-images/Webhook-Successful-Build.png"
  content_type = "image/png"
  etag         = filemd5("./bucket-images/Webhook-Successful-Build.png")
}


resource "aws_s3_object" "Pipeline_Overview" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Pipeline-Overview.png"
  source       = "./bucket-images/Pipeline-Overview.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/Pipeline-Overview.png")
}

resource "aws_s3_object" "Jenkins_EC2" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "Jenkins-EC2.png"
  source       = "./bucket-images/Jenkins-EC2.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/Jenkins-EC2.png")
}

resource "aws_s3_object" "S3_Bucket_Contents01" {
  bucket       = aws_s3_bucket.buckets_2_bentleys.id
  key          = "S3-Bucket-Contents01.png"
  source       = "./bucket-images/S3-Bucket-Contents01.png"
  content_type = "image/jpeg"
  etag         = filemd5("./bucket-images/S3-Bucket-Contents01.png")
}
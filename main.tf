terraform {
    required_providers {
        aws     = {
        source  = "hashicorp/aws"
        version = "~> 5.0"     
    }
    }
}

provider "aws" {
    region = "us-east-1"    
}

resource "aws_s3_bucket" "jenkins-bucket" {
    bucket        = "buckets-2-bentleys"
    force_destroy = true

     tags = {
    Name = "jenkins-Bucket"
  }
}


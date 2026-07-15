variable "aws_region" {
  description = "AWS region for S3 resources. CloudFront is global."
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name for the static website."
  type        = string
}

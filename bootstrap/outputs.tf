output "state_bucket" {
  description = "Name of the S3 bucket that stores Terraform state"
  value       = aws_s3_bucket.state.bucket
}

output "ecr_repository_urls" {
  description = "ECR repository URLs, by image name"
  value       = { for name, repo in aws_ecr_repository.app : name => repo.repository_url }
}

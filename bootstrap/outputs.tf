output "state_bucket" {
  description = "Name of the S3 bucket that stores Terraform state"
  value       = aws_s3_bucket.state.bucket
}

output "ecr_repository_urls" {
  description = "ECR repository URLs, by image name"
  value       = { for name, repo in aws_ecr_repository.app : name => repo.repository_url }
}

output "github_ecr_push_role_arn" {
  description = "Role ARN for aws-actions/configure-aws-credentials in infracringe-app CI"
  value       = aws_iam_role.github_ecr_push.arn
}

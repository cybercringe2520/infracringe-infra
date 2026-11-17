variable "region" {
  description = "AWS Region for all resources (the only Region the SCP allows)"
  type        = string
  default     = "eu-north-1"
}

variable "project" {
  description = "Project name used in resource names and tags"
  type        = string
  default     = "infracringe"
}

variable "github_owner" {
  description = "GitHub user or organization that owns the app repository"
  type        = string
  default     = "cybercringe2520"
}

variable "github_app_repo" {
  description = "Repository whose CI may push images to ECR"
  type        = string
  default     = "infracringe-app"
}

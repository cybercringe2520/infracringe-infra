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

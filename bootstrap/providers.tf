provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project   = var.project
      ManagedBy = "terraform"
      Repo      = "infracringe-infra"
      Component = "bootstrap"
    }
  }
}

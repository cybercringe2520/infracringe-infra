locals {
  ecr_repositories = ["api", "web"]
}

resource "aws_ecr_repository" "app" {
  for_each = toset(local.ecr_repositories)

  name                 = "${var.project}/${each.key}"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }
}

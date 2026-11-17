terraform {
  backend "s3" {
    bucket       = "infracringe-tfstate-621422877430"
    key          = "bootstrap/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true
  }
}

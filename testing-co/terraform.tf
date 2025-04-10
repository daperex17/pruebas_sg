terraform {
  backend "s3" {
    bucket = "finkargo-sso-devops-states-us-east-2"
    key    = "iac-global/security/security_groups/testing_co/terraform.tfstate"
    region = "us-east-2"
  }
}
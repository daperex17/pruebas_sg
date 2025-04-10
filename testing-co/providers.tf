provider "aws" {
  alias  = "account_testing_co"
  region = var.region
  assume_role {
    role_arn     = "arn:aws:iam::145023115425:role/OrganizationAccountAccessRole"
    session_name = "TerraformSession"
  }
}
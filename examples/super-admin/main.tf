provider "aws" {
  version = "1.14.0"
  region  = "ap-southeast-1"
}

module "super_admin_role" {
  source = "../../modules/super-admin"

  # List of trusted users
  trusted_users = [
    "arn:aws:iam::123456789012:user/john.doe",
  ]

  mfa_required = true

  # For example, 6 hours
  role_max_session_duration = 21600
}

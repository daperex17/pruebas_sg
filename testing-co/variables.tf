variable "region" {
  description = "AWS region to deploy resources"
  default     = "us-east-2"
}

variable "group" {
  description = "Group name for resources (e.g., backend, frontend)"
  default     = "frontend"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "finkargo"
}

variable "owner" {
  description = "resource owner"
  default     = "DevOps Mid"
  type        = string
}

variable "environment" {
  description = "Stage Project"
  default     = "Staging"
  type        = string
}

variable "department" {
  description = "Department Project"
  default     = "DevOps"
  type        = string
}

variable "costcenter" {
  description = "Cost Center Project"
  default     = "Tech"
  type        = string
}

# variable "account" {
#   description = "Deployment account"
#   default = "development"
#   type        = string
# }
##########################
# INFRASTRUCTURE COMPONENT
##########################

############
# AWS COMMON
############

variable "aws_profile" {
  description = "The AWS profile"
}

variable "aws_region" {
  description = "The AWS region"
}

variable "aws_account_id" {
  description = "AWS account Number for Athena log location"
}

# ##############
# # TEXAS COMMON
# ##############

variable "profile" {
  description = "The tag used to identify profile e.g. dev, test, live, ..."
}

variable "texas_s3_logs_bucket" {
  description = "The texas s3 log bucket for s3 bucket logs"
}

variable "terraform_platform_state_store" {
  description = ""
}

variable "vpc_terraform_state_key" {
  description = ""
}

# ############################
# # Common
# ############################

variable "route53_terraform_state_key" {
  description = ""
}
variable "team_id" {
  description = ""
}
variable "programme" {
  description = ""
}
variable "terraform_networking_route53_zone_name" {
    description = ""
    default="k8s-nonprod.texasplatform.uk"
}

# ############################
# # ROUTE53
# ############################


variable "dos_integration_sub_domain_name" {
  type        = string
  description = "sub domain name"
}
variable "texas_hosted_zone" {
  description = ""
}


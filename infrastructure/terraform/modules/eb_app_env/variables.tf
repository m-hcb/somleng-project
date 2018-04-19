# General Settings

variable "app_name" {
  description = "EB application name"
}

variable "solution_stack_name" {}

variable "env_identifier" {
  description = "Identifier to use when naming Elastic Beanstalk environments"
}

# VPC Settings

variable "vpc_id" {}

variable "private_subnets" {
  type        = "list"
  description = "EC2 subnets"
}

variable "public_subnets" {
  type        = "list"
  description = "ELB subnets"
}

# EC2 Settings

variable "security_groups" {
  type = "list"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ec2_instance_role" {
  description = "Elastic Beanstalk EC2 role"
}

# CloudWatch Logs

variable "cloudwatch_enabled" {
  default = "true"
}

variable "cloudwatch_delete_on_terminate" {
  default = "false"
}

variable "cloudwatch_retention_in_days" {
  default = "30"
}

# Elastic Beanstalk Environment

variable "service_role" {
  description = "Elastic Beanstalk service role"
}

# Listener

variable "ssl_certificate_id" {}

# ENV Vars

## Defaults

variable "aws_region" {}

## Rails Specific

variable "rails_env" {
  default = "production"
}

variable "rails_master_key" {}

variable "database_url" {}

variable "db_pool" {
  default = "32"
}

## Application Specific

variable "s3_access_key_id" {
  default = ""
}

variable "s3_secret_access_key" {
  default = ""
}

variable "uploads_bucket" {}

variable "default_url_host" {}

### Twilreapi

variable "outbound_call_drb_uri" {
  default = ""
}

variable "aws_sns_message_processor_job_queue_url" {
  default = ""
}

variable "call_data_record_job_queue_url" {
  default = ""
}

variable "outbound_call_job_queue_url" {
  default = ""
}

variable "recording_processor_job_queue_url" {
  default = ""
}

variable "recording_status_callback_notifier_job_queue_url" {
  default = ""
}

variable "status_callback_notifier_job_queue_url" {
  default = ""
}

variable "aws_region" {
  default = "ap-southeast-1"
}

variable "create_db" {
  description = "y or n"
}
variable "restore_db" {
  description = "y or n"
}
variable "restore_db_from_backup_name" {
  description = "twilreapi"
}
variable "db_name" {
  description = "twilreapi"
}

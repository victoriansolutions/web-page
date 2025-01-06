variable "iam_role_arn" {
}

variable "bucket_name" {
}

variable "include_global_resource_types" {
  description = "value for the include_global_resource_types attribute of the recording_group block"
  type        = string
  default     = "true"
}

variable "user_uuid" {
  description = "User UUID"
  type        = string

  validation {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89a-f0-9]{4}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "Invalid user UUID format. It should be in the format of a UUID (e.g., 550e8400-e29b-41d4-a716-446655440000)"
  }
}
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9-]{1,61}[a-z0-9]$", var.bucket_name))
    error_message = "Invalid bucket name. Bucket name must start and end with a lowercase letter or number, and can contain only lowercase letters, numbers, and hyphens. It must be between 3 and 63 characters in length."
  }
}

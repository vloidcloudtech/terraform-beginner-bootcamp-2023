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

variable "index_html_filepath" {
  description = "The file path for index.html"
  type = string

  validation {
    condition = fileexists(var.index_html_filepath)
    error_message = "The provided path for index.html does not exist"
  }
  
}

variable "error_html_filepath" {
  description = "The file path for error.html"
  type = string

  validation {
    condition = fileexists(var.error_html_filepath)
    error_message = "The provided path for index.html does not exist"
  }
  
}


variable "content_version" {
  description = "The content version. Should be a positive integer starting at 1."
  type        = number

  validation {
    condition     = var.content_version > 0 && floor(var.content_version) == var.content_version
    error_message = "The content_version must be a positive integer starting at 1."
  }
}
variable "assets_path" {
  description = "Path to assets folder"
  type        = string
}

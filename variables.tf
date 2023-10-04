variable "user_uuid" {
  description = "User UUID"
  type        = string

  validation {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89a-f0-9]{4}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "Invalid user UUID format. It should be in the format of a UUID (e.g., 550e8400-e29b-41d4-a716-446655440000)"
  }
}

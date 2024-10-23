variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for the Firebase Function"
  type        = string
  default     = "us-central1"
}

variable "function_name" {
  description = "Name of the Firebase Function"
  type        = string
}

variable "entry_point" {
  description = "Entry point for the function"
  type        = string
}

variable "runtime" {
  description = "Runtime environment (e.g., nodejs16)"
  type        = string
  default     = "nodejs16"
}

variable "bucket_name" {
  description = "Cloud Storage bucket name"
  type        = string
}

variable "archive_object" {
  description = "Archive object to be deployed"
  type        = string
}

variable "pubsub_topic" {
  description = "PubSub topic for event trigger"
  type        = string
}

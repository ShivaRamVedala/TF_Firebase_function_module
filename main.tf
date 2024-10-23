provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "function_bucket" {
  name     = var.bucket_name
  location = var.region
}

resource "google_cloudfunctions_function" "function" {
  name        = var.function_name
  entry_point = var.entry_point
  runtime     = var.runtime

  source_archive_bucket = google_storage_bucket.function_bucket.name
  source_archive_object = var.archive_object

  event_trigger {
    event_type = "google.pubsub.topic.publish"
    resource   = var.pubsub_topic
  }
}

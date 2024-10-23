module "firebase_function" {
  source         = "C:\\Users\\VERAMANJ\\Documents\\Terraform_practice\\firebase-function-module"
  project_id     = var.project_id
  region         = var.region
  function_name  = var.function_name
  entry_point    = var.entry_point
  runtime        = var.runtime
  bucket_name    = var.bucket_name
  archive_object = var.archive_object
  pubsub_topic   = var.pubsub_topic
}

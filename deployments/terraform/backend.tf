terraform {
  backend "gcs" {
    bucket  = "peak6-fsadykov"
    prefix  = "dev/peak6"
    project = "fsadykov-project"
  }
}

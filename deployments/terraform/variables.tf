## The name of the deployment
variable "deployment_name" {
  description = "The name of the deployment"
}

## The name of the environment
variable "deployment_environment" {
  description = "The name of the environment"
}

## Chart location or chart name
variable "deployment_path" {
  description = "Chart location or chart name <stable/example>"
}

## Endpoint for the application
variable "deployment_endpoint" {
  description = "Endpoint for the application"

  default = {
    dev  = "dev-example.peak6.fsadykov.com"
    qa   = "qa.peak6.fsadykov.com"
    prod = "peak6.fsadykov.com"
  }
}

variable "deployment_image" {}

variable "min_replicas" {}

variable "max_replicas" {}

variable "deployment_image_tag" {}

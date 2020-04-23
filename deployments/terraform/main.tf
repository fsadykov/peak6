module "name" {
  source                 = "./module"
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "peak6"
  deployment_environment = "${var.deployment_environment}"
  deployment_name        = "${var.deployment_name}"

  template_custom_vars = {
    docker_repository     = "${var.deployment_image}"
    docker_repository_tag = "${var.deployment_image_tag}"
    max_replicas          = "${var.max_replicas}"
    min_replicas          = "${var.min_replicas}"
    deployment_environment = "${var.deployment_environment}"
  }
}

resource "port_environment" "example_env" {
  name        = var.environment
  description = "An example environment for the Spring Petclinic application"
  
  # Additional attributes for the environment
  tags = {
    environment = var.common_tags
  }
}
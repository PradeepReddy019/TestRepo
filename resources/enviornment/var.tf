variable "environment" {
  default = "Dev"
}
variable "common_tags" {
    type = map(any)
}
variable "project" {}
variable "env" {}
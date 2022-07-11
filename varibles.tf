variable "node_name" {
  default = ["Web server", "App Server"]
}
variable "availability_zone" {
  default = ["eu-west-1c", "eu-west-1a"]
}
variable "scripts" {
  default = ["scripts/apache.sh", "scripts/tomcat.sh"]
}

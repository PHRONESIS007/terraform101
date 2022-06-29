terraform {
  backend "s3" {
    bucket = "seyi-terraform-state"
    key    = "dev/terraform.tfstate"
    region = "eu-west-1"
  }
}

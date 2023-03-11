terraform {
  backend "s3" {
    bucket = "julioszeferino-terraform-state-alura"
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
  }
}
terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "homolog/terraform.tfstate"
    region = "us-west-2"
  }
}

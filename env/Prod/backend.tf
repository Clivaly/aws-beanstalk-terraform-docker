terraform {
  backend "s3" {
    bucket = "mybucket"   # Colocar o nome do Bucket S3
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
  }
}

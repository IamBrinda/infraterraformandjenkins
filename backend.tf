terraform {
  backend "s3" {
    bucket = "brinda-statefile"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "hashtekTerraformStateLock"
  }
}

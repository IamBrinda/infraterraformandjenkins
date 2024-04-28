terraform {
  backend "s3" {
    bucket = "brinda-statefile"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "terraformstatelock"
  }
}

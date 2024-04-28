terraform {
  backend "s3" {
    bucket = "brinda-s3statefile"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "brinda-dynamoDB"
  }
}

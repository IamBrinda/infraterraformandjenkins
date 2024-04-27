terraform {
  backend "s3" {
    bucket = "brinda-statefile"
    key = "main"
    region = "eu-north-1"
    dynamodb_table = "brinda-dynamoDBtable"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-jenkins-statebucket"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "terraformstatelock"
  }
}

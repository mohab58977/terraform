terraform {
  backend "s3" {
    bucket = "terrformbuck"
    key    = "terraform"
    region = "us-east-1"
  }
}

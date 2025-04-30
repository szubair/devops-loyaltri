terraform { 
  backend "s3" {
    bucket = "tfbackend-bucket-mumbai"
    key    = "remote/terraform.tfstate" 
    region = "ap-south-1"
  }
}

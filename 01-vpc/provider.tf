terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
 }
 
    }
backend "s3" {
   bucket = "roboshop-eternal-s3-terraformstate-dev"
   key    = "vpc/terraform.tfstate"
   encrypt = true
   region = "us-east-1"
   use_lockfile = true

    
    }

}

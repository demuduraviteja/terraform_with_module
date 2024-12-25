terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "my-ec2-tfstate" # s3 bucket name
    key = "ec2/terraform.tfstate"  #path and where to store this tfstate file in s3
    region = "ap-south-1"
    encrypt = true
    dynamodb_table = "my-ec2-tfstate_lock-id" #name of dynamodb table
  }
}

provider "aws" {
  region = var.aws_region
}
module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
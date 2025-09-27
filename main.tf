terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.11.0,<=6.13.0"
    }
  }
  cloud { 
    
    organization = "ashish-222148" 

    workspaces { 
      name = "aksdev" 
    } 
  } 
}

provider "aws" {
  region = "ap-south-1"
}

locals {
  cidr_block = "192.168.0.0/26"
}
/*
resource "aws_vpc" "ailiya" {
  cidr_block = local.cidr_block
}
data "aws_availability_zones" "azs" {
  state = "available"
}

resource "aws_subnet" "ailiya-subnets" {
  vpc_id            = aws_vpc.ailiya.id
  for_each          = toset(data.aws_availability_zones.azs.names)
  availability_zone = each.value
  cidr_block        = cidrsubnet(local.cidr_block, 2, index(data.aws_availability_zones.azs.names, each.value))
}
*/

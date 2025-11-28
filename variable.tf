# 1. Generate a Terraform variable definition for aws_region with a description, type string, and default value us-east-1.
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# 2. Write a Terraform variable block for instance_type including a description, string type, and default value t3.micro.
variable "instance_type" {
  description = "The type of EC2 instance to use"
  type        = string
  default     = "t3.micro"
}

# 3. Create a Terraform variable named ami_id using HashiCorp style conventions. Include description, type string, and default value ami-0ecb62995f68bb549.
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0ecb62995f68bb549"
}

# 4. Generate a Terraform variable for secret_name with description, type string, and default value prathak2.
variable "secret_name" {
  description = "The name of the secret in AWS Secrets Manager"
  type        = string
  default     = "prathak2"
}
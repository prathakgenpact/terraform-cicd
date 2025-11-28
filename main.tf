#--------------------------------------------------------------
# Main Terraform Configuration
# This file contains the primary infrastructure resources
#--------------------------------------------------------------

#--------------------------------------------------------------
# Data Sources
#--------------------------------------------------------------

# Retrieve the latest version of a secret from AWS Secrets Manager
# The secret is identified by the variable 'secret_name'
data "aws_secretsmanager_secret_version" "example" {
  secret_id = var.secret_name
}

#--------------------------------------------------------------
# Local Values
#--------------------------------------------------------------

# Parse the JSON-encoded secret string into a usable map
# This allows accessing individual key-value pairs from the secret
locals {
  secret_data = jsondecode(data.aws_secretsmanager_secret_version.example.secret_string)
}

#--------------------------------------------------------------
# Resources
#--------------------------------------------------------------

# EC2 Instance
# Creates a demo EC2 instance using the specified AMI and instance type
resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "TerraformDemo"
  }
}

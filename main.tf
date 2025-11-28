data "aws_secretsmanager_secret_version" "example" {
  secret_id = var.secret_name
}


locals {
  secret_data = jsondecode(data.aws_secretsmanager_secret_version.example.secret_string)
}


resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "TerraformDemo"
  }
}


output "retrieved_secret" {
  value     = local.secret_data
  sensitive = true
}

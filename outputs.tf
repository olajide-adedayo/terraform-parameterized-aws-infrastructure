output "instance_public_ip" {
  description = "Public IP address of the Terraform Project 3 application server"
  value       = aws_instance.app_server.public_ip
}

output "instance_private_ip" {
  description = "Private IP address of the Terraform Project 3 application server"
  value       = aws_instance.app_server.private_ip
}
variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "Availability Zone where the EC2 instance will be deployed"
  type        = string
  default     = "us-east-1a"
}

variable "ami_ids" {
  description = "Ubuntu AMI IDs mapped by AWS region"
  type        = map(string)

  default = {
    us-east-1 = "ami-052355af2a014bd2c"
    us-east-2 = "ami-0dc6aa44dbcdd872e"
  }
}

variable "instance_type" {
  description = "EC2 instance type for the application server"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag assigned to the EC2 instance"
  type        = string
  default     = "terraform-parameterized-app-server"
}

variable "ssh_user" {
  description = "SSH username used by Terraform provisioners to connect to the Ubuntu EC2 instance"
  type        = string
  default     = "ubuntu"
}

variable "private_key_path" {
  description = "Local path to the SSH private key used by Terraform provisioners"
  type        = string
}

variable "key_name" {
  description = "AWS EC2 key pair name used for SSH access"
  type        = string
}
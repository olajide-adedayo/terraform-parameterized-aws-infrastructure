resource "aws_security_group" "app_server" {
  name        = "terraform-project3-app-server-sg"
  description = "Security group for Terraform Project 3 application server"

  ingress {
    description = "SSH access for Terraform provisioners"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP access to Apache web server"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami                    = var.ami_ids[var.aws_region]
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.app_server.id]

  tags = {
    Name = var.instance_name
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"

    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]

    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > private_ips.txt"
  }
}
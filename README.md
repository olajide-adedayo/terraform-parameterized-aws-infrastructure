Terraform Parameterized AWS Infrastructure — Automated EC2 Provisioning, Configuration & Outputs

""Terraform" (https://img.shields.io/badge/Terraform-1.14%2B-844FBA?logo=terraform&logoColor=white)" (https://developer.hashicorp.com/terraform)
""AWS" (https://img.shields.io/badge/AWS-Cloud-232F3E?logo=amazonaws&logoColor=white)" (https://aws.amazon.com/)
""Amazon EC2" (https://img.shields.io/badge/Amazon%20EC2-Compute-FF9900?logo=amazonec2&logoColor=white)" (https://aws.amazon.com/ec2/)
""Infrastructure as Code" (https://img.shields.io/badge/Infrastructure%20as%20Code-Terraform-844FBA)" (https://developer.hashicorp.com/terraform)
""GitHub" (https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)" (https://github.com/olajide-adedayo)

«A hands-on AWS Infrastructure as Code project demonstrating parameterized EC2 provisioning, Terraform variables, provisioners, automated Apache configuration, resource outputs, and infrastructure lifecycle management.»

---

Overview

This project demonstrates how Terraform can be used to provision and configure AWS infrastructure through reusable, parameterized Infrastructure as Code (IaC).

The implementation provisions an Amazon EC2 application server in AWS using configurable Terraform variables rather than hard-coded infrastructure values. Terraform then uses file, remote-exec, and local-exec provisioners to automate post-provisioning configuration, deploy an Apache web server, and capture infrastructure output information.

The project was intentionally designed as a practical demonstration of AWS cloud automation, Terraform configuration management, EC2 provisioning, infrastructure troubleshooting, and deployment validation.

The infrastructure was fully tested, validated through both command-line and browser-based verification, and subsequently destroyed after completion to avoid unnecessary AWS charges.

Core Capabilities Demonstrated

- Infrastructure as Code (IaC) using Terraform
- Parameterized AWS infrastructure using Terraform input variables
- Amazon EC2 provisioning with configurable instance attributes
- AWS security group configuration for HTTP and SSH access
- Terraform file provisioner for transferring deployment scripts
- Terraform remote-exec provisioner for automated server configuration
- Terraform local-exec provisioner for local output handling
- Automated Apache web server installation and configuration
- Terraform outputs for public and private EC2 IP addresses
- Infrastructure validation and troubleshooting
- Terraform resource replacement and lifecycle management
- Secure handling of Terraform variables and sensitive local configuration
- Git and GitHub-based infrastructure project version control

---

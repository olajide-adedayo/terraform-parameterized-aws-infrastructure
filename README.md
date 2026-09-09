# Terraform Parameterized AWS Infrastructure — Automated EC2 Provisioning, Configuration & Outputs

[![Terraform](https://img.shields.io/badge/Terraform-1.14.8-7B42BC?logo=terraform&logoColor=white)](https://developer.hashicorp.com/terraform)
[![AWS](https://img.shields.io/badge/AWS-Cloud-232F3E?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Amazon EC2](https://img.shields.io/badge/Amazon%20EC2-Compute-FF9900?logo=amazonec2&logoColor=white)](https://aws.amazon.com/ec2/)
[![Infrastructure as Code](https://img.shields.io/badge/Infrastructure%20as%20Code-Terraform-7B42BC?logo=terraform&logoColor=white)](https://developer.hashicorp.com/terraform)
[![GitHub Repository](https://img.shields.io/badge/GitHub-Repository-181717?logo=github&logoColor=white)](https://github.com/olajide-adedayo/terraform-parameterized-aws-infrastructure)

---

## 1. Project Overview

This project demonstrates the practical use of **Terraform Infrastructure as Code (IaC)** to provision, configure, validate, and manage an **Amazon EC2 application server on AWS** using reusable and parameterized infrastructure configuration.

The infrastructure is defined through Terraform configuration files and controlled through input variables, allowing key deployment parameters such as the **AWS Region, Availability Zone, EC2 instance type, instance name, SSH user, SSH key pair, and private key path** to be configured without modifying the core infrastructure definition.

The project also demonstrates Terraform's **file, remote-exec, and local-exec provisioners** as part of a hands-on infrastructure automation exercise. After provisioning the EC2 instance, Terraform transfers a deployment script to the server, executes the script remotely, installs and configures the **Apache HTTP Server**, and captures the instance's private IP address locally.

### Key Capabilities Demonstrated

- **Infrastructure as Code (IaC)** using Terraform
- **Parameterized AWS infrastructure** using Terraform input variables
- **Amazon EC2 provisioning** with configurable deployment parameters
- **AWS security group configuration** for HTTP and SSH access
- **Terraform file provisioner** for transferring deployment assets
- **Terraform remote-exec provisioner** for post-provisioning configuration
- **Terraform local-exec provisioner** for local automation and output capture
- **Automated Apache web server installation and configuration**
- **Terraform output values** for EC2 public and private IP addresses
- **Infrastructure validation** through SSH, service-status checks, and browser testing
- **Infrastructure troubleshooting** involving AMI architecture, AWS networking, DNS, SSH connectivity, and resource replacement
- **Terraform resource lifecycle management**, including controlled replacement and cleanup
- **Git and GitHub version control** for infrastructure source code and project evidence

### Project Outcome

The implementation successfully provisioned an AWS EC2 instance, configured Apache through Terraform provisioners, verified the running web service, captured Terraform outputs, and validated the deployed application through a web browser.

After successful validation, the temporary AWS resources were **destroyed using Terraform** to demonstrate responsible infrastructure lifecycle management and prevent unnecessary ongoing cloud charges.

> **Portfolio Note:** Terraform provisioners are used intentionally in this project as a learning and demonstration mechanism. For production-grade infrastructure automation, approaches such as cloud-init/user data, AWS Systems Manager, configuration-management tools, immutable machine images, or dedicated deployment pipelines are generally preferable.

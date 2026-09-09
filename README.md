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

 ---

 ## 2. Business & Technical Objectives

### Business Objectives

The project was designed to demonstrate how Infrastructure as Code can improve the consistency, repeatability, and efficiency of cloud infrastructure deployment.

The key business objectives were to:

- Reduce manual infrastructure provisioning and configuration.
- Improve deployment consistency through declarative infrastructure.
- Enable repeatable infrastructure deployments using parameterized configuration.
- Reduce configuration errors associated with manual server setup.
- Demonstrate controlled infrastructure lifecycle management.
- Establish a version-controlled approach to cloud infrastructure.
- Provide clear infrastructure outputs for operational visibility and validation.
- Demonstrate responsible cloud cost management through infrastructure cleanup after testing.

### Technical Objectives

The technical objectives were to:

- Provision an **Amazon EC2 instance using Terraform**.
- Parameterize infrastructure using Terraform input variables.
- Configure AWS infrastructure using reusable Terraform configuration.
- Configure an **AWS security group** for HTTP and SSH access.
- Use Terraform's **file provisioner** to transfer a deployment script to the EC2 instance.
- Use the **remote-exec provisioner** to execute server configuration commands remotely.
- Use the **local-exec provisioner** to capture infrastructure information locally.
- Automatically install and configure **Apache HTTP Server**.
- Define Terraform **output values** for EC2 public and private IP addresses.
- Validate infrastructure through Terraform outputs, SSH connectivity, service-status checks, and browser-based application testing.
- Demonstrate Terraform resource replacement and infrastructure reconciliation.
- Demonstrate complete infrastructure cleanup using `terraform destroy`.
- Maintain infrastructure source code and project evidence in **Git and GitHub**.

---

## 3. Solution Architecture

The solution uses **Terraform as the Infrastructure as Code (IaC) control layer** to provision and configure an Amazon EC2 application server on AWS.

The architecture combines parameterized Terraform variables, AWS infrastructure resources, Terraform provisioners, Apache web server configuration, Terraform outputs, validation, troubleshooting, and infrastructure cleanup into a complete cloud infrastructure lifecycle workflow.

### Architecture Components

- **Terraform** — Infrastructure as Code and infrastructure automation
- **AWS Provider** — Enables Terraform to interact with AWS resources
- **Amazon EC2** — Hosts the application and web server
- **AWS Security Group** — Controls inbound HTTP and SSH traffic
- **Ubuntu Linux** — Operating system used by the EC2 instance
- **Apache HTTP Server** — Web server installed and configured through Terraform
- **File Provisioner** — Transfers the deployment script to the EC2 instance
- **Remote-Exec Provisioner** — Executes server configuration commands remotely
- **Local-Exec Provisioner** — Captures the EC2 private IP address locally
- **Terraform Outputs** — Expose the EC2 public and private IP addresses
- **GitHub** — Provides version control and project documentation

### Architecture Diagram

The architecture below shows how Terraform interacts with AWS resources and how the provisioned EC2 server is configured and validated.

```text
                    TERRAFORM CONTROL LAYER
                             |
                             v
                    Terraform Configuration
                             |
                             v
                       Input Variables
                             |
                             v
                       AWS Provider
                             |
                             v
                +---------------------------+
                |       AWS ENVIRONMENT     |
                |                           |
                |   Security Group          |
                |        |                  |
                |        v                  |
                |   Amazon EC2              |
                |        |                  |
                |        v                  |
                |   Ubuntu Linux            |
                |        |                  |
                |        v                  |
                |   Apache Web Server       |
                |        |                  |
                |        v                  |
                |   Web Application         |
                +---------------------------+
                             |
                             v
                     Validation & Testing
                             |
                             v
                      Terraform Outputs
                             |
                             v
                    Infrastructure Cleanup
```

### End-to-End Automation Workflow

The workflow below shows the complete sequence used to provision, configure, validate, and clean up the AWS infrastructure.

```text
1. Initialize Terraform
          |
          v
2. Define Infrastructure Parameters
          |
          v
3. Provision EC2 and Security Group
          |
          v
4. Transfer Deployment Script
          |
          v
5. Execute Deployment Script Remotely
          |
          v
6. Install and Configure Apache
          |
          v
7. Start Apache Web Service
          |
          v
8. Capture EC2 Private IP Address
          |
          v
9. Generate Terraform Outputs
          |
          v
10. Validate SSH Connectivity
          |
          v
11. Verify Apache Service Status
          |
          v
12. Verify Web Application in Browser
          |
          v
13. Manage Infrastructure Lifecycle
          |
          v
14. Destroy Temporary AWS Resources
          |
          v
       AWS Resources
          Cleaned Up
```

### Architecture Note

> **Architecture Note:** Terraform provisioners are used intentionally in this project as a hands-on automation and learning mechanism. For production environments, server configuration would generally be handled through approaches such as cloud-init, user data, AWS Systems Manager, immutable machine images, configuration-management tools, or dedicated deployment pipelines.

### Cost Management Note

> **Cost Management Note:** The AWS infrastructure created for this project was temporary. After successful validation, the EC2 instance and security group were destroyed using Terraform to prevent unnecessary ongoing cloud charges.

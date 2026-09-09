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

The solution uses **Terraform as the Infrastructure as Code control layer** to provision and configure an Amazon EC2 application server on AWS.

The architecture combines parameterized Terraform variables, AWS infrastructure resources, Terraform provisioners, Apache web server configuration, Terraform outputs, and validation steps into a complete infrastructure lifecycle workflow.

### Architecture Components

- **Terraform** — Infrastructure as Code and automation engine
- **AWS Provider** — Enables Terraform to interact with AWS resources
- **Amazon EC2** — Hosts the application/web server
- **AWS Security Group** — Controls inbound HTTP and SSH traffic
- **Ubuntu Linux** — Operating system used by the EC2 instance
- **Apache HTTP Server** — Web server installed and configured through Terraform
- **Terraform File Provisioner** — Transfers the `web.sh` deployment script to the EC2 instance
- **Terraform Remote-Exec Provisioner** — Executes the deployment script remotely
- **Terraform Local-Exec Provisioner** — Captures the EC2 private IP address locally
- **Terraform Outputs** — Expose the EC2 public and private IP addresses after deployment
- **GitHub** — Stores the version-controlled Terraform source code and project evidence

### Infrastructure Flow

```text
Terraform Configuration
        |
        v
Input Variables
        |
        v
AWS Provider
        |
        v
Amazon EC2 + Security Group
        |
        v
EC2 Instance Provisioned
        |
        +----------------------+
        |                      |
        v                      v
File Provisioner        Remote-Exec Provisioner
        |                      |
        v                      v
Transfer web.sh          Execute web.sh
                               |
                               v
                       Install & Configure
                       Apache HTTP Server
                               |
                               v
                         Web Application
                               |
                               v
                    Browser-Based Validation

        |
        v
Local-Exec Provisioner
        |
        v
Capture Private IP
        |
        v
Terraform Outputs
        |
        v
Verification & Testing
        |
        v
Terraform Destroy
        |
        v
AWS Resources Cleaned Up

---
### End-to-End Automation Workflow

1. **Initialize Terraform** — Terraform configuration and the required AWS provider are initialized.
2. **Define Infrastructure Parameters** — Deployment values such as AWS Region, Availability Zone, instance type, instance name, SSH user, key pair, and private key path are supplied through Terraform variables.
3. **Provision AWS Infrastructure** — Terraform creates the EC2 instance and associated security group according to the declared configuration.
4. **Transfer Deployment Script** — The Terraform **file provisioner** transfers `web.sh` to the EC2 instance.
5. **Configure the Server** — The **remote-exec provisioner** makes the script executable and runs it on the EC2 instance.
6. **Install Apache** — The deployment script installs Apache HTTP Server, enables the service, starts it, and deploys the project web page.
7. **Capture Infrastructure Data** — The **local-exec provisioner** records the EC2 private IP address in `private_ips.txt`.
8. **Expose Terraform Outputs** — Terraform returns the EC2 public and private IP addresses through defined output values.
9. **Validate the Deployment** — The infrastructure is validated through SSH connectivity, Apache service-status verification, and browser-based HTTP testing.
10. **Manage Infrastructure Lifecycle** — Terraform is used to manage resource replacement when required and to maintain the desired infrastructure state.
11. **Clean Up Resources** — After successful testing and verification, `terraform destroy` removes the temporary AWS resources.

> **Architecture Note:** Terraform provisioners are used intentionally in this project as a hands-on automation and learning mechanism. For production environments, server configuration would generally be handled through approaches such as cloud-init/user data, AWS Systems Manager, immutable machine images, configuration-management tools, or dedicated deployment pipelines.

> **Cost Management Note:** The AWS infrastructure created for this project was temporary. After successful validation, the EC2 instance and security group were destroyed using Terraform to prevent unnecessary ongoing cloud charges.

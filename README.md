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

---

## 4. Technology Stack

| Category | Technology | Purpose |
|---|---|---|
| Infrastructure as Code | Terraform 1.14.8 | Provisioning and managing AWS infrastructure |
| Cloud Platform | Amazon Web Services (AWS) | Cloud infrastructure hosting |
| Compute | Amazon EC2 | Hosting the application and web server |
| Operating System | Ubuntu Linux | Operating system for the EC2 instance |
| Web Server | Apache HTTP Server | Serving the deployed web application |
| Cloud Networking | AWS Security Group | Controlling inbound HTTP and SSH traffic |
| Configuration Automation | Terraform Provisioners | Automating post-provisioning server configuration |
| Infrastructure Outputs | Terraform Outputs | Exposing EC2 public and private IP addresses |
| Scripting | Bash | Automating Apache installation and web server configuration |
| Version Control | Git | Tracking infrastructure code changes |
| Source Code Management | GitHub | Hosting Terraform code and project documentation |
| CLI Tools | AWS CLI | AWS resource inspection and troubleshooting |
| Development Environment | Windows + Git Bash | Local Terraform development and execution |


---

## 5. AWS Infrastructure

The project uses a lightweight AWS infrastructure design focused on demonstrating Terraform-based EC2 provisioning, server configuration, network access control, validation, and lifecycle management.

### AWS Resources

| Resource | Configuration | Purpose |
|---|---|---|
| Amazon EC2 | t3.micro | Hosts the Ubuntu application and web server |
| Operating System | Ubuntu Linux | Provides the server operating environment |
| AWS Security Group | HTTP and SSH access | Controls inbound network traffic |
| Availability Zone | us-east-1a | Determines the EC2 deployment location |
| AWS Region | us-east-1 | Primary AWS deployment region |
| EC2 Key Pair | olajide-key | Provides SSH authentication |
| Apache HTTP Server | Installed through Terraform automation | Serves the web application |

### EC2 Configuration

The EC2 instance is provisioned using Terraform with configurable deployment parameters.

The following parameters are controlled through Terraform variables:

- AWS Region
- Availability Zone
- Amazon Machine Image
- EC2 instance type
- Instance name
- SSH username
- EC2 key pair
- Local private key path

The project uses the **t3.micro** instance type with an Ubuntu AMI compatible with the selected EC2 architecture.

### Security Group Configuration

The EC2 security group provides the network access required for infrastructure management and web application validation.

| Protocol | Port | Source | Purpose |
|---|---:|---|---|
| TCP | 22 | 0.0.0.0/0 | SSH administration and Terraform remote provisioning |
| TCP | 80 | 0.0.0.0/0 | HTTP access to the Apache web server |

> **Security Note:** SSH access from 0.0.0.0/0 was used for this hands-on demonstration to simplify remote connectivity and Terraform provisioning. In a production environment, SSH access should be restricted to trusted source IP addresses, VPN/private connectivity, or replaced with AWS Systems Manager Session Manager where appropriate.

### Infrastructure Lifecycle

The AWS resources followed a complete Terraform-managed lifecycle:

1. Infrastructure configuration was defined using Terraform.
2. Terraform created the EC2 instance and Security Group.
3. Provisioners configured the EC2 server and Apache web service.
4. Terraform outputs exposed the EC2 public and private IP addresses.
5. SSH, Apache service status, and browser-based HTTP access were used for validation.
6. Terraform managed resource replacement during troubleshooting and reconciliation.
7. After successful testing, Terraform destroyed the temporary AWS resources.

> **Cost Management:** The infrastructure was intentionally temporary. The EC2 instance and Security Group were destroyed after validation to avoid unnecessary ongoing AWS charges.

---

## 6. Terraform Configuration & Parameterization

The infrastructure is designed using Terraform variables to separate deployment parameters from the core resource definitions. This allows the same Terraform configuration to be reused with different deployment values without modifying the infrastructure resource code.

### Parameterized Configuration

The project uses Terraform input variables for key infrastructure and connection parameters, including:

| Variable | Purpose | Example |
|---|---|---|
| aws_region | AWS Region for deployment | us-east-1 |
| availability_zone | Availability Zone for the EC2 instance | us-east-1a |
| ami_ids | Region-specific Ubuntu AMI mapping | us-east-1 |
| instance_type | EC2 instance size | t3.micro |
| instance_name | EC2 Name tag | terraform-parameterized-app-server |
| ssh_user | SSH user for remote configuration | ubuntu |
| private_key_path | Local path to the SSH private key | Local Windows path |
| key_name | AWS EC2 key pair name | olajide-key |

### Variable-Driven Infrastructure

The Terraform configuration uses these variables to control the EC2 deployment.

This approach provides several advantages:

- Reduces hard-coded infrastructure values.
- Makes the configuration easier to reuse.
- Simplifies deployment to different AWS Regions.
- Allows EC2 sizing to be changed without modifying the resource definition.
- Separates configuration values from infrastructure logic.
- Improves maintainability and readability.
- Supports consistent infrastructure deployment across environments.

### Region-Aware AMI Selection

The project uses a Terraform map variable to associate Ubuntu AMI IDs with AWS Regions.

The EC2 resource selects the appropriate AMI based on the configured AWS Region.

This demonstrates how Terraform expressions can be used to create more flexible infrastructure configurations while avoiding unnecessary duplication of resource definitions.

### Example Variable Configuration

A sample configuration file is provided in the repository as:

**terraform.tfvars.example**

The example demonstrates the expected deployment parameters without exposing sensitive credentials or private key material.

### Sensitive Infrastructure Parameters

The project requires the local SSH private key path for Terraform provisioner connectivity.

The actual private key file and environment-specific Terraform variable file are excluded from version control through `.gitignore`.

This prevents sensitive local configuration and credentials from being committed to the public GitHub repository.

> **Security Note:** Private keys, credentials, and other sensitive infrastructure values should never be committed to source control. Production implementations should use secure secret-management solutions and least-privilege access controls.

### Terraform Configuration Flow

```text
Terraform Variables
        |
        v
Deployment Parameters
        |
        v
Terraform Resource Configuration
        |
        v
AWS Provider
        |
        v
AWS Infrastructure
        |
        v
Provisioned EC2 Server
```

### Reusability

The parameterized design allows the infrastructure to be adapted by changing variable values rather than rewriting the Terraform resource definitions.

For example, the EC2 instance type, AWS Region, Availability Zone, instance name, and SSH configuration can be changed through variables while maintaining the same underlying infrastructure structure.

---

## 7. Terraform Provisioners & Server Configuration

This project demonstrates Terraform provisioners as part of the EC2 post-provisioning automation process.

After Terraform creates the EC2 instance, provisioners are used to transfer the deployment script, execute server configuration commands, and capture infrastructure information locally.

### Provisioner Workflow

```text
EC2 Instance Created
        |
        v
File Provisioner
        |
        v
Deployment Script Transferred
        |
        v
Remote-Exec Provisioner
        |
        v
Deployment Script Executed
        |
        v
Apache Installed
        |
        v
Apache Configured
        |
        v
Apache Started
        |
        v
Local-Exec Provisioner
        |
        v
Private IP Captured Locally
```

### File Provisioner

The **file provisioner** transfers the deployment script from the local Terraform project directory to the EC2 instance.

The deployment script is transferred to the temporary directory on the Ubuntu server before remote execution.

```hcl
provisioner "file" {
  source      = "web.sh"
  destination = "/tmp/web.sh"
}
```

### Remote-Exec Provisioner

The **remote-exec provisioner** connects to the EC2 instance through SSH and executes the required server configuration commands.

The provisioner makes the deployment script executable and then runs it with elevated privileges.

```hcl
provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/web.sh",
    "sudo /tmp/web.sh"
  ]
}
```

### Apache Server Configuration

The deployment script automates the installation and configuration of the Apache HTTP Server.

The configuration process includes:

1. Updating the Ubuntu package index.
2. Installing Apache HTTP Server.
3. Enabling the Apache service.
4. Starting the Apache service.
5. Removing the default Apache web page.
6. Creating a custom project web page.
7. Making the application available through HTTP port 80.

### Local-Exec Provisioner

The **local-exec provisioner** executes a command on the local machine after the EC2 instance has been provisioned.

In this project, it captures the EC2 private IP address and writes the value to a local file for verification and operational visibility.

```hcl
provisioner "local-exec" {
  command = "echo ${self.private_ip} > private_ips.txt"
}
```

### SSH Connection Configuration

The file and remote-exec provisioners use SSH to communicate with the Ubuntu EC2 instance.

The connection configuration uses:

- SSH connection type
- Ubuntu SSH user
- EC2 key pair authentication
- Local private key
- EC2 public IP address

The private key remains on the local system and is excluded from Git version control.

### Provisioning Outcome

The provisioner workflow successfully automated the transition from a newly provisioned EC2 instance to a running Apache web server.

The resulting infrastructure was validated through:

- Successful SSH connection to the EC2 instance.
- Apache service status verification.
- Terraform output verification.
- Private IP capture.
- Browser-based HTTP testing.
- Successful display of the custom Apache web page.

> **Production Consideration:** Terraform provisioners are useful for demonstrations and specific infrastructure tasks, but they are generally considered a last resort for production configuration management. Production environments should preferably use approaches such as cloud-init, EC2 user data, AWS Systems Manager, immutable machine images, configuration-management tools, or dedicated deployment pipelines.

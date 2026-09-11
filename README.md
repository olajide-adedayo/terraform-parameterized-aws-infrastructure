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

---

## 8. Deployment & Automation Workflow

The deployment process follows a structured Terraform workflow that provisions the AWS infrastructure, configures the EC2 server, validates the application, and manages the infrastructure lifecycle.

### Deployment Workflow

```text
                    START
                      |
                      v
             Terraform Configuration
                      |
                      v
               Terraform Init
                      |
                      v
              Terraform Validate
                      |
                      v
                Terraform Plan
                      |
                      v
              Review Changes
                      |
                      v
               Terraform Apply
                      |
                      v
          EC2 Instance Provisioned
                      |
                      v
             File Provisioner
                      |
                      v
          Deployment Script Transfer
                      |
                      v
           Remote-Exec Provisioner
                      |
                      v
       Apache Installation & Configuration
                      |
                      v
            Local-Exec Provisioner
                      |
                      v
           Private IP Captured
                      |
                      v
            Terraform Outputs
                      |
                      v
              Infrastructure
                Validation
                      |
          +-----------+-----------+
          |           |           |
          v           v           v
         SSH       Apache       Browser
      Validation    Status      Testing
          |           |           |
          +-----------+-----------+
                      |
                      v
              Successful Deployment
                      |
                      v
             Terraform Destroy
                      |
                      v
              Resources Removed
                      |
                      v
                     END
```

### Terraform Initialization

The Terraform working directory is initialized before infrastructure operations begin.

Initialization downloads the required provider plugins and prepares the working directory for Terraform operations.

```text
terraform init
```

### Configuration Validation

The Terraform configuration is validated to identify syntax and configuration errors before attempting infrastructure deployment.

```text
terraform validate
```

### Infrastructure Planning

Terraform generates an execution plan showing the infrastructure changes that would be made.

```text
terraform plan
```

The plan provides an opportunity to review the proposed infrastructure changes before applying them to AWS.

### Infrastructure Provisioning

The infrastructure is provisioned using Terraform.

```text
terraform apply
```

Terraform creates the required AWS resources and then executes the configured provisioning workflow.

### Post-Provisioning Automation

After the EC2 instance becomes available, the provisioning process performs the following operations:

1. Transfers the deployment script to the EC2 instance.
2. Establishes an SSH connection to the server.
3. Makes the deployment script executable.
4. Executes the deployment script remotely.
5. Installs Apache HTTP Server.
6. Enables and starts the Apache service.
7. Deploys the custom project web page.
8. Captures the EC2 private IP address locally.

### Infrastructure Outputs

Terraform exposes the EC2 public and private IP addresses through output values.

These outputs provide useful information for infrastructure verification and operational visibility after deployment.

### Deployment Validation

The deployment was validated at multiple levels.

#### 1. Terraform Validation

Terraform outputs and execution results were reviewed to confirm successful infrastructure provisioning.

#### 2. SSH Validation

SSH connectivity was established successfully with the provisioned Ubuntu EC2 instance.

#### 3. Apache Service Validation

The Apache service was checked on the EC2 instance to confirm that the web server was active and running.

#### 4. Browser Validation

The EC2 public IP address was accessed through a web browser to confirm that the custom Apache web page was successfully served over HTTP.

### Infrastructure Cleanup

After successful testing and validation, the temporary AWS resources were removed using Terraform.

```text
terraform destroy
```

The destroy operation successfully removed the EC2 instance and associated Security Group.

> **Lifecycle Principle:** The project demonstrates the complete infrastructure lifecycle of provision, configure, validate, and destroy rather than stopping after initial resource creation.


---

## 9. Validation & Verification

Validation was performed at multiple layers to confirm that the Terraform deployment successfully created the AWS infrastructure, configured the EC2 server, and made the Apache web application accessible.

### Validation Strategy

```text
Terraform Deployment
        |
        v
Infrastructure Validation
        |
        +-------------------+
        |                   |
        v                   v
Terraform Outputs      AWS Resources
        |                   |
        +---------+---------+
                  |
                  v
          EC2 Connectivity
                  |
                  v
            SSH Validation
                  |
                  v
        Apache Service Check
                  |
                  v
        HTTP Browser Testing
                  |
                  v
       Successful Deployment
```

### Terraform Output Verification

Terraform output values were used to confirm the public and private IP addresses assigned to the EC2 instance.

The deployment produced the following values during successful validation:

- **Public IP:** 44.200.225.123
- **Private IP:** 172.31.3.119

The private IP was also captured locally through the Terraform local-exec provisioner.

### SSH Connectivity Verification

SSH connectivity was successfully established with the provisioned Ubuntu EC2 instance.

This confirmed that:

- The EC2 instance was running.
- The assigned SSH key pair was correctly configured.
- Network connectivity to the instance was available.
- The Terraform provisioning connection parameters were functional.

### Apache Service Verification

The Apache HTTP Server service was checked directly on the EC2 instance.

The service was confirmed to be:

- Installed successfully.
- Enabled to start automatically.
- Running successfully.
- Ready to serve HTTP requests.

### Browser-Based Web Verification

The EC2 public IP address was accessed through a web browser to validate the deployed web application.

The custom project page was successfully displayed, confirming that:

- Apache was serving the application.
- HTTP port 80 was accessible.
- The EC2 security group allowed the required HTTP traffic.
- The server configuration completed successfully.
- The deployment script executed as expected.

### Validation Evidence

The repository contains screenshots documenting key stages of the deployment and validation process, including:

- Terraform variable configuration and planning.
- Provisioner execution planning.
- EC2 resource provisioning.
- Successful Terraform apply.
- Terraform output values.
- Apache service status.
- Browser-based web application verification.

### Final Validation Result

The infrastructure successfully passed the required validation checks.

| Validation Area | Result |
|---|---|
| Terraform Configuration | Successful |
| EC2 Provisioning | Successful |
| Security Group Configuration | Successful |
| SSH Connectivity | Successful |
| Deployment Script Execution | Successful |
| Apache Installation | Successful |
| Apache Service Status | Running |
| Terraform Outputs | Verified |
| Private IP Capture | Verified |
| HTTP Connectivity | Successful |
| Browser Application Test | Successful |
| Infrastructure Cleanup | Successful |

> **Validation Outcome:** The project successfully demonstrated an end-to-end Terraform deployment in which AWS infrastructure was provisioned, configured, verified, and subsequently destroyed through controlled infrastructure lifecycle operations.


---

10. Troubleshooting & Lessons from Deployment

This project involved several real-world infrastructure and connectivity issues during AWS provisioning and Terraform execution. Troubleshooting covered EC2 architecture compatibility, SSH connectivity, Windows path handling, AWS networking and DNS resolution, Terraform provisioner behavior, resource replacement, public IP lifecycle, and infrastructure state reconciliation.

The troubleshooting process provided practical experience beyond simply writing Terraform configuration. Each issue required identifying the failure point, determining the underlying cause, applying a controlled resolution, and validating the infrastructure again.

10.1 Troubleshooting Summary

Issue| Root Cause| Resolution
EC2 instance creation failed| The selected Ubuntu AMI architecture was incompatible with the selected EC2 instance type| Replaced the incompatible AMI with an architecture-compatible Ubuntu AMI
Terraform could not access the SSH private key| Windows path formatting caused the private key path to be interpreted incorrectly| Corrected the Terraform private key path
EC2 instance had no usable key pair configuration| The required EC2 key pair was not initially associated with the instance| Added the required EC2 key pair configuration
Terraform AWS API connectivity failed| DNS and network connectivity problems affected communication with AWS endpoints| Investigated DNS and network connectivity before retrying Terraform operations
File provisioner SSH connection timed out| Temporary network connectivity prevented Terraform from establishing SSH access to the EC2 instance| Verified the instance, public IP, security group, SSH port, key pair, and direct SSH connectivity
Provisioner execution failed during EC2 replacement| The replacement instance was temporarily unreachable during provisioning| Verified direct SSH connectivity and used Terraform's controlled replacement workflow
HTTP service was initially unreachable| The EC2 infrastructure state and public IP address had changed during lifecycle operations| Revalidated the active instance, public IP, security group, and Apache service
Terraform resource became tainted| A provisioner failure caused Terraform to mark the EC2 resource for replacement| Used Terraform's resource replacement workflow to recreate the instance
Public IP address changed after lifecycle operations| A standard EC2 public IPv4 address is not guaranteed to remain the same through certain instance lifecycle operations| Rechecked Terraform outputs and used the current public IP for validation

10.2 AMI and Instance Architecture Compatibility

One of the first deployment issues involved an incompatibility between the selected Ubuntu AMI architecture and the EC2 instance type.

The selected "t3.micro" instance requires an x86-compatible AMI, while the initially selected Ubuntu AMI was ARM64-based.

AWS rejected the configuration during EC2 creation because the AMI architecture and instance type were incompatible.

The issue was resolved by selecting an Ubuntu AMI compatible with the architecture supported by the "t3.micro" instance.

This reinforced an important AWS infrastructure principle:

«EC2 instance type and AMI architecture must be compatible before an instance can be successfully launched.»

For parameterized Terraform configurations, AMI selection should therefore be treated as an infrastructure compatibility requirement rather than simply an input value.

10.3 SSH Private Key Path Troubleshooting

Terraform provisioners required SSH access to the Ubuntu EC2 instance.

The initial Windows private-key path caused Terraform to have difficulty locating or interpreting the SSH key correctly.

The path was corrected to:

C:/Users/OLAJIDE/Downloads/olajide-key.pem

The Terraform configuration then used the variable:

private_key = file(var.private_key_path)

This demonstrated an important cross-platform consideration when using Terraform on Windows with Git Bash:

- Windows filesystem paths must be represented correctly inside Terraform configuration.
- SSH private keys must be accessible to the Terraform process.
- The private key must correspond to the EC2 key pair associated with the instance.
- The SSH username must match the operating system image.

10.4 EC2 Key Pair Configuration

The EC2 instance initially lacked the required key-pair association needed for SSH-based Terraform provisioners.

The configuration was updated to include:

key_name = var.key_name

The corresponding variable was configured as:

variable "key_name" {
  description = "AWS EC2 key pair name used for SSH access"
  type        = string
}

The deployment then used the AWS EC2 key pair:

olajide-key

This established the required relationship between:

AWS EC2 Key Pair → Private Key → Terraform SSH Connection → Ubuntu EC2 Instance

10.5 AWS DNS and Network Connectivity

During deployment, Terraform encountered AWS API connectivity problems, including errors associated with DNS resolution and network connections.

Examples included:

lookup sts.us-east-1.amazonaws.com: no such host

and:

wsarecv: An existing connection was forcibly closed by the remote host

DNS resolution also experienced timeout behavior involving the configured DNS server.

The troubleshooting process required checking the connectivity path between the local Terraform environment and AWS.

The investigation considered:

- Local network connectivity
- DNS resolution
- AWS API endpoint accessibility
- Terraform AWS provider connectivity
- EC2 network availability
- Security group configuration
- SSH connectivity
- Public IP address validity

The important engineering lesson was that Terraform failures are not always caused by Terraform configuration.

Infrastructure automation depends on the entire connectivity chain:

Developer Machine
      |
      v
Local Network
      |
      v
DNS Resolution
      |
      v
AWS API Endpoint
      |
      v
AWS Infrastructure

A senior DevOps troubleshooting approach therefore separates configuration failures, AWS infrastructure failures, and local network/connectivity failures instead of assuming every error originates from Terraform code.

10.6 Terraform Provisioner Connection Timeout

During execution of the Terraform "file" provisioner, SSH connectivity timed out.

An example failure was:

dial tcp 44.214.143.23:22: i/o timeout

The troubleshooting process verified the components required for Terraform to establish SSH connectivity:

1. EC2 instance state
2. Current public IP address
3. Security group configuration
4. TCP port 22 accessibility
5. EC2 key pair
6. Local private key
7. Ubuntu SSH username
8. Direct SSH connectivity

The security group was verified to permit SSH traffic on TCP port "22".

Direct SSH connectivity was eventually established successfully, confirming that the EC2 instance itself was accessible.

This demonstrated that Terraform provisioner connectivity should be validated independently when diagnosing provisioning failures.

10.7 Terraform Provisioner Failure and Tainted Resource

A provisioner failure caused the EC2 instance resource to become tainted.

A tainted resource indicates that Terraform considers the existing resource unsuitable for continued use and that replacement may be required.

Instead of manually deleting the instance through the AWS console, Terraform was used to control the replacement process.

The following command was used:

terraform apply -replace=aws_instance.app_server

Terraform then created a replacement instance and removed the previous instance.

The successful result was:

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

This was an important practical demonstration of Terraform's ability to reconcile infrastructure when a resource is no longer considered healthy from Terraform's perspective.

10.8 Public IP Address Changes

During the EC2 lifecycle, the instance public IP address changed.

This is an important characteristic of standard EC2 public IPv4 addressing: a public IP is not necessarily persistent across certain lifecycle operations such as stop/start.

Therefore, previously captured public IP addresses should not automatically be assumed to remain valid.

Terraform outputs were used to obtain the current infrastructure values:

output "instance_public_ip" {
  description = "Public IP address of the Terraform Project 3 application server"
  value       = aws_instance.app_server.public_ip
}

The final deployment produced the following validated values:

instance_public_ip  = "44.200.225.123"
instance_private_ip = "172.31.3.119"

The private IP was also written to:

private_ips.txt

with the resulting value:

172.31.3.119

The key lesson is that infrastructure automation should rely on current Terraform state and outputs rather than stale IP information captured during earlier lifecycle stages.

10.9 HTTP Service Connectivity Troubleshooting

At one stage of the deployment, an HTTP request to the EC2 public IP failed on port "80".

The troubleshooting process verified:

- EC2 instance availability
- Current public IP address
- Security group rules
- TCP port "80"
- Apache installation
- Apache service status
- Web server configuration
- Current infrastructure state

The security group was confirmed to allow HTTP traffic on TCP port "80".

Apache was subsequently confirmed to be active and running, and the final browser validation successfully displayed the custom Terraform Project 3 web page.

This demonstrated the importance of validating the complete application path rather than checking only the Terraform deployment result.

The validation path was:

Internet
   |
   v
EC2 Public IP
   |
   v
Security Group
   |
   v
TCP Port 80
   |
   v
Apache
   |
   v
Custom Web Page

10.10 Final Infrastructure Validation

After resolving the deployment issues, the infrastructure was validated from multiple perspectives.

Validation Area| Result
Terraform configuration| Validated successfully
EC2 instance| Successfully provisioned
EC2 instance type| "t3.micro"
Ubuntu AMI| Architecture-compatible
Security group| SSH and HTTP access configured
SSH connectivity| Successful
Terraform file provisioner| Successful
Terraform remote-exec provisioner| Successful
Apache installation| Successful
Apache service| Active and running
Private IP output| "172.31.3.119"
Public IP output| "44.200.225.123"
Private IP capture| Successful
Browser HTTP validation| Successful
Terraform cleanup| Successful

The final browser validation confirmed that the provisioned Apache server was serving the expected custom web page.

The infrastructure was subsequently destroyed successfully after validation.

10.11 Key Lessons Learned

This project provided practical lessons across several areas of AWS and Terraform infrastructure engineering:

1. EC2 architecture compatibility matters
   The AMI architecture must be compatible with the selected EC2 instance type.

2. Terraform variables improve infrastructure reusability
   Region, AMI, instance type, instance name, SSH user, key path, and key pair were parameterized instead of being hard-coded throughout the configuration.

3. Provisioners depend on network and SSH availability
   Terraform provisioners that connect to EC2 require valid SSH credentials, network connectivity, security group rules, public addressing, and operating-system compatibility.

4. Windows path handling can affect automation
   Local filesystem paths must be represented correctly when Terraform runs on Windows.

5. Security groups are part of application availability
   A correctly provisioned EC2 instance is not sufficient if the required network ports are inaccessible.

6. Terraform errors require systematic troubleshooting
   Failures can originate from Terraform configuration, AWS infrastructure, DNS, local networking, SSH, or application configuration.

7. Terraform can reconcile failed resources
   The "-replace" workflow provided a controlled method for replacing a resource affected by a provisioning failure.

8. Public IP addresses should not be treated as permanent identifiers
   Current Terraform outputs should be used when validating infrastructure whose public addressing can change.

9. Validation should occur at multiple layers
   Infrastructure should be validated through Terraform, AWS resource state, SSH, service status, network accessibility, and application-level testing.

10. Infrastructure should be destroyed when no longer required
    Cleanup prevents unnecessary AWS charges and demonstrates responsible cloud cost management.

10.12 Engineering Lesson

«Infrastructure as Code is not simply about creating resources. A mature DevOps workflow must also account for compatibility, connectivity, configuration, validation, troubleshooting, reconciliation, lifecycle changes, and controlled destruction.»

The troubleshooting experience in this project transformed the Terraform configuration from a simple provisioning exercise into a practical demonstration of infrastructure lifecycle management and operational problem-solving.

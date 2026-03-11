# DevSecOps Terraform Labs

This repository contains Terraform infrastructure code developed as part of the DevSecOps course.

## Lab 1 – Google Cloud VM

Terraform infrastructure that provisions a secure Linux VM in Google Cloud.

### Infrastructure

* Ubuntu 22.04 VM
* External IP address
* Startup hardening script
* Snapshot backup policy

### Security Hardening

The startup script installs and configures:

* UFW firewall
* Fail2ban
* Automatic security updates

### CI Pipeline

GitHub Actions pipeline performs:

* Terraform format check
* Terraform validation
* Infrastructure security scan (Trivy)



## Lab 2 – Hetzner Cloud Deployment

Terraform infrastructure that provisions a VM in Hetzner Cloud.

### Infrastructure

* Ubuntu 22.04 VM
* CX23 server type
* Location: Helsinki
* Startup script for server configuration

### Terraform Output Example

Server name:
server_name = devsecops-lab

To retrieve the server IP address, run:

terraform output server_ip

Example output:
server_ip = "PUBLIC_IP"

## Terraform Workflow

terraform init
terraform plan
terraform apply
terraform output

## Project Structure

lab1-terraform
│
├── main.tf
├── variables.tf
├── outputs.tf
├── startup.sh
│
├── hetzner
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── example.tfvars
├── README.md
└── .github/workflows


## Author

Abdihakim – DevSecOps Labs

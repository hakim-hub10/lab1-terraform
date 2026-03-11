# Lab 1 – Terraform VM (DevSecOps)

This repository contains Terraform infrastructure code for provisioning a secure Linux virtual machine in Google Cloud as part of the DevSecOps course.

## Infrastructure

The Terraform configuration creates:

- A Linux VM (Ubuntu 22.04)
- External IP address
- Startup script for basic system hardening
- Automatic snapshot backup policy

## Security Hardening

The VM uses a startup script that installs:

- UFW firewall
- Fail2ban
- Automatic security updates

## CI Pipeline

GitHub Actions runs a CI pipeline that performs:

- Terraform format check
- Infrastructure security scan (Trivy)
- Terraform validation

## Project Structure

lab1-terraform
├── main.tf
├── variables.tf
├── outputs.tf
├── startup.sh
├── example.tfvars
├── README.md
└── .github/workflows/terraform.yml


## Usage

Initialize Terraform:

Validate configuration:

Copy example variables file:

## Author

Abdi – DevSecOps Lab 1
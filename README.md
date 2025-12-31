# SOS Online Shop — DevOps Capstone Project

## Project Overview
This repository contains the DevOps implementation for **SOS Online Shop**, an e-commerce platform.  
The project focuses on automating cloud infrastructure provisioning, CI/CD pipelines, testing, monitoring, and security using industry-standard DevOps practices.

This work is developed as part of an academic **Capstone Project**, demonstrating real-world DevOps workflows and cloud deployment strategies.



## Project Objectives
- Automate infrastructure deployment using **Terraform**
- Implement CI/CD pipelines with **GitHub Actions**
- Ensure infrastructure validation and testing
- Apply cloud security best practices
- Enable monitoring, logging, and alerting
- Align implementation with an IEEE 29148-compliant SDD



## Architecture Overview
The solution uses AWS managed services to reduce operational complexity:

- **GitHub** — Source control
- **GitHub Actions** — CI/CD automation
- **Terraform** — Infrastructure as Code
- **AWS Services**:
  - VPC (Public & Private Subnets)
  - Application Load Balancer
  - ECS / Elastic Beanstalk (Compute)
  - RDS & DynamoDB (Data Layer)
  - S3 & CloudFront (Storage & CDN)
  - CloudWatch & SNS (Monitoring & Alerts)
  - IAM & KMS (Security)



## Repository Structure
```text
.
├── .github/
│   └── workflows/
│       └── sos-ci-cd.yml
├── infra/
│   ├── main.tf
│   └── modules/
├── docs/
│   ├── SDD.pdf
│   └── diagrams/
└── README.md



CI/CD Pipeline

The CI/CD pipeline automatically:

Validates Terraform configuration

Ensures infrastructure consistency

Prevents faulty changes from being merged

Pipeline stages include:

Source checkout

Terraform initialization

Terraform validation

Deployment readiness checks

🧪 Testing Strategy

Infrastructure validation using terraform validate

CI pipeline execution testing via GitHub Actions

Manual smoke testing for deployment readiness

Security checks through IAM role separation and encryption policies

🔐 Security Considerations

Least-privilege IAM roles

Encrypted storage using AWS KMS

Secure secrets handling via GitHub Actions

HTTPS enforced at load balancer and CDN level

📊 Monitoring & Logging

Application and infrastructure metrics via CloudWatch

Alerts delivered through SNS

Log aggregation for troubleshooting and audits

📘 Documentation

Software Design Specification (IEEE 29148)

Architecture diagrams (draw.io)

Test cases and validation reports


Author
Dassaev Tchouta
DevOps Capstone Project



# SOS Online Shop - Infrastructure as Code (IaC)

This repository contains the **Terraform configuration** for provisioning the AWS infrastructure of the **SOS Online Shop** e-commerce platform, a capstone project for the **MSIT program at University of the People**.

## Project Context
SOS Online Shop is a small Cameroonian e-commerce business seeking to modernize its digital presence. This infrastructure enables:
- Automated deployment via CI/CD
- High availability (target: 99.2% uptime)
- Secure and scalable cloud architecture
- Real-time monitoring via CloudWatch

## 🛠️ Infrastructure Overview
- **Provider**: AWS (`us-east-1`)
- **Compute**: EC2 (t2.micro, Ubuntu 22.04)
- **Networking**: VPC, Public Subnet, Internet Gateway, Security Group
- **Storage**: S3 (for static assets)
- **Monitoring**: CloudWatch Log Group

## CI/CD Pipeline
Deployed automatically via **GitHub Actions** on every push to `main`.

## Structure

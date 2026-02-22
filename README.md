# End-to-End 3-Tier AWS Web Application Deployment

## Project Overview

This project demonstrates the design and deployment of a 3-Tier AWS Web Application Architecture as part of a practical classroom activity. The objective was to simulate an enterprise-level cloud deployment using Infrastructure as Code (Terraform), CI/CD automation (Jenkins), and containerization (Docker).

The initial reference architecture and base implementation were provided by our class instructor for learning purposes. I implemented the infrastructure provisioning, CI/CD integration, containerization, and deployment steps to understand real-world DevOps workflows and 3-tier cloud architecture.

The architecture includes:

- Web Tier – Application Load Balancer (ALB)
- Application Tier – EC2 instances inside Auto Scaling Group
- Database Tier – Amazon RDS (MySQL)
- Infrastructure Provisioning – Terraform
- CI/CD Automation – Jenkins
- Containerization – Docker

This project reflects real-world DevOps implementation practices including scalability, automation, security, and high availability.

---

## Architecture Description

Web Tier:
An Application Load Balancer (ALB) distributes incoming traffic across EC2 instances to ensure high availability.

Application Tier:
EC2 instances are deployed inside an Auto Scaling Group. The application is containerized using Docker and runs a Flask-based web service.

Database Tier:
Amazon RDS (MySQL) is deployed inside a private subnet to ensure database security and isolation.

Security:
IAM roles are attached to EC2 instances for secure AWS resource access. Security groups control communication between tiers.

---

## Technologies Used

- AWS (EC2, RDS, ALB, Auto Scaling, IAM, VPC)
- Terraform (Infrastructure as Code)
- Jenkins (CI/CD Pipeline)
- Docker (Containerization)
- Flask (Python Web Application)
- Git & GitHub (Version Control)

---

## Project Structure

aws-3tier-terraform-jenkins/

app/
  ├── app.py
  ├── requirements.txt
  └── Dockerfile

terraform/
  ├── main.tf
  ├── variables.tf
  ├── outputs.tf
  ├── vpc.tf
  ├── ec2.tf
  ├── rds.tf
  ├── alb.tf
  ├── autoscaling.tf
  └── iam.tf

jenkins/
  └── Jenkinsfile

README.md

---

## How to Run This Project

Note: An active AWS account is required to provision infrastructure.

Step 1: Clone the Repository

git clone https://github.com/your-username/aws-3tier-terraform-jenkins.git
cd aws-3tier-terraform-jenkins

Step 2: Build and Test Application Locally

cd app
docker build -t 3tier-app .
docker run -p 8080:80 3tier-app

Open:
http://localhost:8080

Step 3: Configure AWS CLI

aws configure

Provide:
- AWS Access Key
- AWS Secret Key
- Region (example: us-east-1)

Step 4: Deploy Infrastructure Using Terraform

cd terraform
terraform init
terraform plan
terraform apply

Type "yes" when prompted.

Terraform provisions:
- VPC
- Subnets
- Security Groups
- EC2 instances
- Auto Scaling Group
- Application Load Balancer
- RDS Database
- IAM Roles

Step 5: Jenkins CI/CD (Optional)

1. Install Jenkins
2. Create a new Pipeline job
3. Configure to use Jenkinsfile
4. Trigger the pipeline

Pipeline stages:
- Docker image build
- Terraform init
- Terraform plan
- Terraform apply

---

## CI/CD Workflow

Developer Push
→ Jenkins Trigger
→ Docker Build
→ Terraform Provision
→ Application Deployment

---

## Learning Outcomes

Through this classroom practical activity, the following concepts were implemented:

- Designing a 3-tier AWS architecture
- Infrastructure as Code using Terraform
- CI/CD automation using Jenkins
- Containerization with Docker
- Auto Scaling configuration
- IAM role implementation
- Load balancing concepts

---

## Academic Context

This project was completed as part of a practical classroom activity to gain hands-on experience in cloud infrastructure deployment and DevOps automation.

---

## Future Enhancements

- Add HTTPS using AWS ACM
- Implement Blue-Green deployment
- Integrate CloudWatch monitoring
- Add automated rollback strategy
- Integrate SonarQube for code quality

---

Author:
Yashwanth SV

License:
Educational and demonstration purposes only.
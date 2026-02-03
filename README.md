# EC2 Manual Provisioning (AWS Console)

## Objective
- Launch an EC2 instance manually using AWS Management Console
- Understand basic AWS EC2 components

## Overview
This project demonstrates:
- Manual EC2 provisioning using AWS Console
- Automated EC2 provisioning using Terraform
- Understanding of AWS core concepts

## Steps
1. Login to AWS Management Console  
2. Go to **EC2 → Instances → Launch Instance**  
3. Select **Amazon Linux AMI**  
4. Choose **t2.micro (Free Tier)**  
5. Create or select a **Key Pair**  
6. Configure **Security Group**  
   - Allow SSH (Port 22)  
7. Review and launch the instance  

## Verification
- EC2 instance state is **Running**

# EC2 Provisioning Using Terraform


```hcl
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "free_tier_ec2" {
  ami           = "ami-0ff5003538b60d5ec"
  instance_type = "t2.micro"
  key_name      = "first"

  tags = {
    Name = "FreeTier-EC2"
  }
}
```

## Objective
- Provision an EC2 instance using Terraform
- Learn Infrastructure as Code (IaC) basics

## Prerequisites
- AWS Account  
- IAM User with programmatic access  
- AWS CLI configured  
- Terraform installed  

## Configure AWS CLI
```bash
aws configure
```
## Conclusion
- Learned AWS EC2 fundamentals
- Practiced Infrastructure as Code using Terraform
- Successfully deployed EC2 instances manually and automatically


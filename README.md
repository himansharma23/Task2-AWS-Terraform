## TASK 2: EC2 Manual Provisioning (AWS Console)

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
<img width="1042" height="535" alt="image" src="https://github.com/user-attachments/assets/ca03718c-1717-45d7-948b-36633a1882a3" />

<img width="1104" height="417" alt="image" src="https://github.com/user-attachments/assets/e435587a-e8be-4753-aba1-05c541a55db4" />

<img width="1069" height="555" alt="image" src="https://github.com/user-attachments/assets/3bb08201-52a6-4434-b33b-af25371fc3d4" />

<img width="1067" height="483" alt="image" src="https://github.com/user-attachments/assets/ee3f2d1a-903b-4d6c-89ac-9dc628309b5e" />

<img width="856" height="261" alt="image" src="https://github.com/user-attachments/assets/124cad78-7565-4e46-b40f-4dbe4ed5ec12" />

<img width="839" height="296" alt="image" src="https://github.com/user-attachments/assets/33477bb8-3bdc-47df-bf7f-22de13c8cec1" />

<img width="855" height="459" alt="image" src="https://github.com/user-attachments/assets/c33410db-f09a-4186-87d3-eac4b0e23bcd" />

<img width="1244" height="495" alt="image" src="https://github.com/user-attachments/assets/b3a09315-2f48-4822-9169-d1ad35ea60fd" />

## Verification
- EC2 instance state is **Running**

# EC2 Provisioning Using Terraform

<img width="658" height="157" alt="image" src="https://github.com/user-attachments/assets/4f85b6ce-69bc-4fa3-9c7a-3c74af268088" />


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

<img width="1052" height="526" alt="image" src="https://github.com/user-attachments/assets/9dcaaa59-1c51-4a90-8f41-9d4472d0de39" />

<img width="1813" height="360" alt="image" src="https://github.com/user-attachments/assets/14ddc48e-f801-424b-92db-581e938f2812" />

<img width="1821" height="367" alt="image" src="https://github.com/user-attachments/assets/4d022205-889c-4c24-8d8c-288433835c4d" />

<img width="1079" height="421" alt="image" src="https://github.com/user-attachments/assets/919b13d4-3994-4cb4-8a49-fb6d7aeea91a" />

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

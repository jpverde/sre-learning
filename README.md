
# SRE Learning Labs

This repository contains hands-on labs built during my Site Reliability Engineering (SRE) study plan.  
Each lab demonstrates concepts such as observability, automation, infrastructure as code, cloud reliability, and incident response.

---

## Progress

### Day 1: AWS EC2 + IAM Roles + CloudWatch Alarms (Terraform)

**Status:** Completed

**Summary:**

- Provisioned an EC2 instance with IAM role, enabled CloudWatch CPU monitoring, and set up SNS email alerts using Terraform.
- Outputs include EC2 instance ID and public IP for monitoring and access.

---

### Day 2: VPC, Subnets, EC2, RDS, and Remote State (Terraform)

**Status:** In Progress

**Summary:**

- Built a custom VPC with two public and two private subnets across multiple AZs.
- Next: Add EC2 and RDS instances with IAM roles, and store state remotely in S3 with DynamoDB locking.

---

## Day 1 — AWS EC2 + IAM Roles + CloudWatch Alarms (Terraform)

### Objectives Day 1

- Provision infrastructure using **Terraform**.
- Attach **IAM roles** to avoid static credentials.
- Configure **CloudWatch metrics** and create **alarms**.
- Set up **SNS notifications** to receive email alerts on alarm triggers.

---

## Day 2 — VPC, Subnets, EC2, RDS, and Remote State (Terraform)

### Objectives Day 2

- Build VPC with Terraform (2 public, 2 private subnets).
- Add EC2 and RDS instances with IAM roles.
- Store state remotely in S3 with locking via DynamoDB.

---

## Repository Structure

```bash
.
├── terraform/
│   ├── day1/
│   │   ├── cpu_metrics.sh
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── sns.tf
│   │   ├── terraform.tf
│   │   └── variables.tf
│   ├── day2/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tf
│   │   └── variables.tf
└── README.md # (this file)
```

---

## How to Run Labs

### Prerequisites

1. Install Terraform → <https://developer.hashicorp.com/terraform>
2. Configure AWS CLI → <https://docs.aws.amazon.com/cli/>

---

### Day 1: EC2 + IAM + CloudWatch + SNS

```bash
cd terraform/day1
terraform init
terraform apply -var "key_name=YOUR_KEY_NAME" -var "alarm_email=you@example.com"
# Confirm the SNS subscription from the email AWS sends you.
# To destroy resources:
terraform destroy -var "key_name=YOUR_KEY_NAME" -var "alarm_email=you@example.com"
```

---

### Day 2: VPC + Subnets + EC2 + RDS + Remote State

```bash
cd terraform/day2
terraform init
terraform apply
# To destroy resources:
terraform destroy
```

3. Apply the configuration (replace with your SSH key and email):

  ```bash
  terraform apply -var "key_name=YOUR_KEY_NAME" -var "alarm_email=you@example.com"
  ```

4. Confirm the SNS subscription from the email AWS sends you.
5. To destroy resources:

  ```bash
  terraform destroy -var "key_name=YOUR_KEY_NAME" -var "alarm_email=you@example.com"
  ```

---

### Day 2: VPC + Subnets + Networking

1. Change to the Day 2 lab directory:

  ```bash
  cd terraform/day2
  ```

2. Initialize Terraform:

  ```bash
  terraform init
  ```

3. Apply the configuration (you can override default variables as needed):

  ```bash
  terraform apply
  ```

4. To destroy resources:

  ```bash
  terraform destroy
  ```

# SRE Learning Labs

This repository contains hands-on labs built during my Site Reliability Engineering (SRE) study plan.  
Each lab demonstrates concepts such as observability, automation, infrastructure as code, cloud reliability, and incident response.

## Day 1 — AWS EC2 + IAM Roles + CloudWatch Alarms (Terraform)

### Objectives

- Provision infrastructure using **Terraform**.
- Attach **IAM roles** to avoid static credentials.
- Configure **CloudWatch metrics** and create **alarms**.
- Set up **SNS notifications** to receive email alerts on alarm triggers.

### Lab Steps

1. **Provision EC2 instance** with Terraform.  
2. **Create IAM role** and attach it to the EC2 instance.  
3. **Enable CloudWatch metrics** for CPU utilization.  
4. **Configure CloudWatch alarm** that triggers when CPU > **70%**.  
5. **Add SNS topic + subscription** to send email alerts.

### Key Learnings

- Avoid embedding AWS keys by using IAM roles with instance profiles.  
- Terraform’s `aws_cloudwatch_metric_alarm` integrates easily with `aws_sns_topic`.  
- Alarms must include **action hooks** (SNS notifications) to be actionable during incidents.

## Repository Structure

```bash
.
├── terraform/
| ├── day1/
| | ├── cpu_metrics.sh
| │ ├── main.tf
| | ├── outputs.tf
| | ├── sns.tf
| | ├── terraform.tf
| │ └── variables.tf
└── README.md # (this file)
```

## Progress Tracking

- **Day 1** — Completed: AWS EC2 + IAM + CloudWatch lab (with SNS email alerts).  
- **Day 2+** — Coming soon (monitoring pipelines, error budgets, etc.).

## How to Run Labs

1. Install Terraform → <https://developer.hashicorp.com/terraform>  
2. Configure AWS CLI → <https://docs.aws.amazon.com/cli/>  
3. From the lab folder:

  ```bash
    terraform init
    terraform apply -var "key_name=YOUR_KEY_NAME" -var "alarm_email=you@example.com"
  ```

4. Confirm the SNS subscription from the email AWS sends you.
5. To destroy resources:

  ```bash
    terraform destroy -var "key_name=YOUR_KEY_NAME" -var "alarm_email=you@example.com"
  ```

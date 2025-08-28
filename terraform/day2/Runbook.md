# Terraform Day 2 Runbook

## Overview

This runbook provides step-by-step instructions for managing the Terraform infrastructure in the `day2` environment. It covers initialization, planning, applying, destroying, troubleshooting, and rollback procedures.

## Prerequisites

- Terraform installed (version 1.2 or higher)
- AWS CLI installed and configured (if using AWS)
- Access to required credentials (e.g., AWS access keys)
- Proper permissions to manage infrastructure
- Clone of this repository

## Environment Setup

```sh
cd terraform/day2
```

## Common Tasks

### 1. Initialize Terraform

```sh
terraform init
```

### 2. Validate Configuration

```sh
terraform validate
```

### 3. Plan Changes

```sh
terraform plan -out=plan
```

### 4. Apply Changes

```sh
terraform apply "plan"
```

### 5. Destroy Infrastructure

```sh
terraform destroy
```

## Outputs

After applying, view outputs with:

```sh
terraform output
```

## Troubleshooting

- Ensure credentials are set and valid
- Check for syntax errors with `terraform validate`
- Review error messages for missing resources or permissions
- Use `terraform state list` to inspect current state

## Rollback/Restore

- If a change needs to be reverted, use `terraform plan` to review the rollback and `terraform apply` to execute
- For state issues, consider restoring from `terraform.tfstate.backup`

## Additional Notes

- Keep state files secure
- Commit changes to version control
- Review changes with your team before applying in production

## Contact / Escalation

- Open an issue in the repository: [New issue](https://github.com/jpverde/sre-learning/issues/new/choose)

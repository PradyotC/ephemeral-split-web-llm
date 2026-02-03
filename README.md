### 1. Create terraform.tfvars

```bash
aws_access_key = "AKIAIOSFODNN7EXAMPLE"
aws_secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
```

### 2. Deployment
To initialize Terraform and apply the configuration, use the provided `create.sh` script. This script automates the `terraform init` and `terraform apply` process.

```bash
chmod +x create.sh
./create.sh
```

### 3. Cleanup
To remove the infrastructure and clean up the resources created by Terraform, use the `destroy.sh` script.

```bash
chmod +x destroy.sh
./destroy.sh
```
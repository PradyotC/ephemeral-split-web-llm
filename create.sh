#!/bin/bash

echo "🐳 Building Docker Image..."
docker build -t my-tf-infra .

echo "🚀 Running Terraform Apply..."
# Added --entrypoint "" to allow running shell commands
docker run --rm -it \
  --name tf-apply-container \
  --entrypoint "" \
  -v "$(pwd)/terraform.tfvars:/workspace/terraform.tfvars" \
  -v "$(pwd):/host" \
  my-tf-infra sh -c "
    if [ -f /host/terraform.tfstate ]; then cp /host/terraform.tfstate* .; fi && \
    terraform apply -auto-approve && \
    cp terraform.tfstate* /host/
  "
#!/bin/bash

echo "💀 Destroying Infrastructure..."

# Added --entrypoint "" here as well
docker run --rm -it \
  --name tf-destroy-container \
  --entrypoint "" \
  -v "$(pwd)/terraform.tfvars:/workspace/terraform.tfvars" \
  -v "$(pwd):/host" \
  my-tf-infra sh -c "
    cp /host/terraform.tfstate* . && \
    terraform destroy -auto-approve && \
    cp terraform.tfstate* /host/
  "

if [ $? -eq 0 ]; then
  echo "🧹 Cleaning up Docker artifacts..."
  docker rmi my-tf-infra
  echo "✅ Done! Infrastructure destroyed and Docker image removed."
else
  echo "❌ Terraform destroy failed. Keeping Docker image for debugging."
fi
FROM hashicorp/terraform:latest

WORKDIR /workspace

# Copy all project files (main.tf, variables.tf)
# This respects .dockerignore, so secrets are NOT copied here.
COPY . .

# Initialize immediately so the image is ready to go
RUN terraform init
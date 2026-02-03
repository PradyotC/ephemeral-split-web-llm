variable "aws_access_key" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "Region to deploy in"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "github_repo_url" {
  description = "URL of the repo to clone"
  type        = string
  default     = "https://github.com/PradyotC/basic_static_site.git"
}

variable "project_name" {
  description = "Name prefix"
  type        = string
  default     = "Terraform-Nginx"
}
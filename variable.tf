# AWS Access Key ID
variable "AWS_ACCESS_KEY" {
  type = string
  # No default value provided; must be supplied by the user or through environment variables
}

# AWS Secret Access Key
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  # No default value provided; must be supplied by the user or through environment variables
}


# AWS Region Configuration
variable "aws_region" {
  description = "Region in which AWS resources are to be created"
  type        = string
  default     = "us-east-1"
}

# EC2 Instance Type Configuration
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

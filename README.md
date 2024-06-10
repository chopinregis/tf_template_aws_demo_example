# tf_template_aws_demo_example

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

# Terraform AWS Demo Example

## Overview
This Terraform project is designed to set up various AWS resources, demonstrating a practical use case for managing infrastructure as code. The project includes configurations for AMIs, EC2 instances, S3 buckets, and security groups, suitable for setting up a scalable and secure web environment in AWS.

## Features
- **AMI Data Source**: Dynamically fetches the most recent Amazon Linux 2 AMI that meets specific criteria such as virtualization type, root device type, and architecture. This ensures that instances are always launched with up-to-date and secure base images.
- **EC2 Instances**: Provisions EC2 instances using the dynamically fetched AMI, allowing for scaling based on demand by leveraging Terraform's `count` parameter.
- **S3 Buckets**: Configures S3 buckets with tagging strategies to organize and manage access efficiently.
- **Security Groups**: Establishes security groups to secure access to EC2 instances, including specific ingress and egress rules for HTTP and HTTPS traffic, and a default rule for outbound traffic.

## Usage
To use this project:
1. Ensure you have Terraform installed on your machine.
2. Configure your AWS credentials either via environment variables or by setting them directly in the Terraform provider configuration.
3. Initialize the Terraform environment with `terraform init`.
4. Apply the configuration with `terraform apply`.

This setup is ideal for developers looking to deploy web applications in AWS with a focus on security and simplicity.

## Highlight
The highlight of this project is its use of data sources to automatically select the most appropriate AMI for EC2 instances. This approach minimizes manual updates and maintenance, ensuring that your infrastructure is always built on secure, supported, and up-to-date images.

## Contribution
Feel free to fork this project, make changes, and submit pull requests if you have improvements or additional features you would like to introduce.

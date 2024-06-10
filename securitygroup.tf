# Create a Security Group for SSH access
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"         # Name of the security group
  description = "Dev VPC SSH"     # Description of the security group's purpose

  # Ingress rule to allow SSH (port 22) access from any IP address
  ingress {
    description = "Allow port 22"  # Description of the rule
    from_port   = 22               # Starting port of the rule (22 for SSH)
    to_port     = 22               # Ending port of the rule (22 for SSH)
    protocol    = "tcp"            # Protocol used (TCP for SSH)
    cidr_blocks = ["0.0.0.0/0"]    # CIDR block to allow access from any IP
  }

  # Egress rule to allow all outbound traffic from this security group
  egress {
    description = "Allow all IP and ports outbound"  # Description of the rule
    from_port   = 0                # Starting port (0 implies all ports)
    to_port     = 0                # Ending port (0 implies all ports)
    protocol    = "-1"             # Protocol (-1 implies all protocols)
    cidr_blocks = ["0.0.0.0/0"]    # CIDR block to allow outbound traffic to any IP
  }

  # Tags to identify the security group within AWS
  tags = {
    Name = "vpc-ssh"               # Name tag for the security group
  }
}


# Create a Security Group for web servers in a Development VPC
resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Dev VPC web"

  # Ingress rule to allow HTTP traffic
  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Ingress rule to allow HTTPS traffic
  ingress {
    description = "Allow port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rule to allow all outbound traffic
  egress {
    description = "Allow all IP and ports outbound"
    from_port   = 0         # The value 0 includes all ports
    to_port     = 0         # The value 0 includes all ports
    protocol    = "-1"      # The value "-1" includes all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Tags to identify the Security Group
  tags = {
    Name = "vpc-web"
  }
}

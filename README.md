# AWS Networking Basics: VPC, Bastion Host, ALB, NAT Gateway, and Security Groups
## This repo demonstrates the implementation of fundamental AWS networking concepts using Terraform. It includes the creation of a custom VPC with public and private subnets, a Bastion Host for secure access, an Application Load Balancer (ALB) for traffic distribution, a NAT Gateway for internet access in private subnets, and  security groups to enforce network security.

### Key Features:
#### 1. Custom VPC with isolated public and private subnets.
#### 2. Secure access to private resources using a Bastion Host.
#### 3. Application Load Balancer to distribute traffic across instances.
#### 4. NAT Gateway for outbound internet access from private subnets.
#### 5. Terraform configuration for easy customization and scalability.

### 1. main.tf   
#### Contains:
- AWS provider configuration
- VPC creation
- Public and private subnet setup
- Internet Gateway setup
- Public Route Table and its association


### 2. security_groups.tf
#### Contains:
- Security group for the ALB
- Security group for the Bastion Host
- Security group for EC2 instances (private and public access rules)

### 3. alb.tf
#### Contains:
- Application Load Balancer
- Listener configuration
- Target Group for backend instances
### 4. bastion.tf
#### Contains:
- Bastion Host setup (public subnet)
- Security group allowing SSH access from your IP
### 5. nat_gateway.tf
#### Contains:
- NAT Gateway in the public subnet
- Elastic IP for the NAT Gateway
- Private subnet route table with NAT Gateway route
- Route Table Association for the private subnet
### 6. private_instances.tf
#### Contains:
- EC2 instances in the private subnet
- Associated with the private instance security group
- Allows access only through the Bastion Host
### 7. outputs.tf
#### Contains outputs for:
- VPC ID
- Public and private subnet IDs
- Bastion Host public IP
- ALB DNS name

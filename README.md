# vpc-vpn-connection: Terraform Project for AWS VPC VPN Setup

## Description
This Terraform project automates the setup of a VPN connection within an AWS VPC. It provisions a VPN gateway, customer gateway, and the necessary VPN connections. The project is organized into a modular structure, allowing for easy reuse and customization.

```plaintext
.
├── module-call/
│   ├── main.tf              # Calls the vpc-vpn module
│   ├── provider.tf          # Defines the AWS provider
│   ├── terraform.tfvars     # Specifies the input variables
│   ├── variables.tf         # Declares input variables
├── modules/
│   └── vpc-vpn/
│       ├── main.tf          # Main Terraform configuration for the VPN setup
│       ├── variables.tf     # Input variables for the module
└── README.md                # Project documentation
```
### Module Details

#### `module-call/main.tf`
This file calls the vpc-vpn module and passes the necessary variables such as the VPC ID, VPN CIDR, VPN gateway name, customer gateway IP, and customer gateway BGP ASN.

#### `module-call/terraform.tfvars`
Contains the variable definitions that are specific to your environment, such as VPC ID, VPN CIDR, and AWS region.

#### `modules/vpc-vpn/`
This directory contains the main Terraform code to provision the VPN gateway, customer gateway, and VPN connection resources in AWS.

### Prerequisites
- Terraform installed on your machine.
- An existing AWS VPC where the VPN will be set up.
- Valid AWS credentials configured.

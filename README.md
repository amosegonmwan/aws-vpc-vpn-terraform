# vpc-vpn-connection: Terraform Project for AWS VPC VPN Setup

## Description
This Terraform project automates the setup of a VPN connection within an AWS VPC. It provisions a VPN gateway, customer gateway, and the necessary VPN connections. The project is organized into a modular structure, allowing for easy reuse and customization.

![image](https://github.com/user-attachments/assets/6111c114-6877-4e5a-9471-c24f43615dd2)


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

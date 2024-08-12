variable "vpc_id" {
  description = "The ID of the existing VPC."
  type        = string
}

variable "vpn_cidr" {
  description = "The CIDR block for the VPN connection."
  type        = string
}

variable "vpn_gateway_name" {
  description = "The name tag for the VPN gateway."
  type        = string
}

variable "customer_gateway_ip" {
  description = "The IP address of the customer gateway."
  type        = string
}

variable "customer_gateway_bgp_asn" {
  description = "The BGP ASN of the customer gateway."
  type        = number
}

variable "region" {
  description = "The AWS region to deploy the resources."
  type        = string
  default     = "us-west-2"
}

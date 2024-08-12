module "vpc-vpn" {
  source                   = "../modules/vpc-vpn"
  vpc_id                   = var.vpc_id
  vpn_cidr                 = var.vpn_cidr
  vpn_gateway_name         = var.vpn_gateway_name
  customer_gateway_ip      = var.customer_gateway_ip
  customer_gateway_bgp_asn = var.customer_gateway_bgp_asn
}

output "vpn_gateway_id" {
  value = module.vpc-vpn.vpn_gateway_id
}

output "vpn_connection_id" {
  value = module.vpc-vpn.vpn_connection_id
}

resource "aws_customer_gateway" "customer_gateway" {
  bgp_asn    = var.customer_gateway_bgp_asn
  ip_address = var.customer_gateway_ip
  type       = "ipsec.1"

  tags = {
    Name = "CustomerGateway"
  }
}

resource "aws_vpn_gateway" "vpn_gateway" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.vpn_gateway_name
  }
}

resource "aws_vpn_connection" "vpn_connection" {
  vpn_gateway_id     = aws_vpn_gateway.vpn_gateway.id
  customer_gateway_id = aws_customer_gateway.customer_gateway.id
  type               = "ipsec.1"
  static_routes_only = true

  tags = {
    Name = "${var.vpn_gateway_name}-connection"
  }
}

resource "aws_vpn_connection_route" "vpn_connection_route" {
  vpn_connection_id     = aws_vpn_connection.vpn_connection.id
  destination_cidr_block = var.vpn_cidr
}

resource "aws_vpn_gateway_route_propagation" "propagation" {
  for_each = toset(data.aws_route_tables.route_tables.ids)
  vpn_gateway_id = aws_vpn_gateway.vpn_gateway.id
  route_table_id = each.value
}

data "aws_route_tables" "route_tables" {
  vpc_id = var.vpc_id
}

output "vpn_gateway_id" {
  value = aws_vpn_gateway.vpn_gateway.id
}

output "vpn_connection_id" {
  value = aws_vpn_connection.vpn_connection.id
}

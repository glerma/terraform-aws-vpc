resource "aws_default_security_group" "default" {
  vpc_id = local.vpc_id

  ingress {
    protocol         = var.ingress_protocol
    self             = true
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    cidr_blocks      = var.ingress_cidr_blocks
    ipv6_cidr_blocks = var.ingress_ipv6_cidr_blocks
  }

  egress {
    protocol         = var.egress_protocol
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    cidr_blocks      = var.egress_cidr_blocks
    ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
  }
}

locals {
  default_sg_id = aws_default_security_group.default.*.id
}

data "aws_route_table" "rt" {
  vpc_id = var.vpc_id

  filter {
    name   = "tag:Name"
    values = [var.rt_name]
  }

}

data "aws_subnets" "subnet" {
  count = var.subnet_name != null ? 1 : 0
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }

  filter {
    name   = "availabilityZone"
    values = [var.subnet_zone]
  }
}

locals {
  subnet_id = var.subnet_id != null ? var.subnet_id : data.aws_subnets.subnet[0].ids[0]
}

resource "aws_route_table_association" "rt_association" {
  count = var.subnet_name != null || var.subnet_id != null || var.gateway_id != null ? 1 : 0

  route_table_id = data.aws_route_table.rt.id
  subnet_id      = local.subnet_id
  gateway_id     = var.gateway_id
}

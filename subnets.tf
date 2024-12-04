resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = each.value.cidr_block
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
  availability_zone       = each.value.availability_zone

  tags = {
    Name = "alex-${each.key}"
  }

  for_each = var.subnets
}


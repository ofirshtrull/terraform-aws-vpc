
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = var.vpc_instance_tenancy
  enable_dns_hostnames = var.vpc_enable_dns_hostnames

  tags = merge(
    var.common_tags,
    {
      Name                                        = var.name,
      "kubernetes.io/cluster/cb-${var.shortname}" = "shared"
    }
  )
}

data "aws_availability_zones" "available" {}

resource "aws_subnet" "public" {
  count             = var.num_of_public_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.public_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(var.common_tags,
    map("Type", "Public"),
    map("Name", format("%s-Public-Subent", var.name)),
    map(format("kubernetes.io/cluster/cb-%s", var.shortname), "shared"),
    map("kubernetes.io/role/elb", "1")
  )
}

resource "aws_subnet" "private" {
  count             = var.num_of_private_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.private_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(var.common_tags,
    map("Type", "Private"),
    map("Name", format("%s-Private-Subnet", var.name)),
    map(format("kubernetes.io/cluster/cb-%s", var.shortname), "shared"),
    map("kubernetes.io/role/internal-elb", "1")
  )
}

resource "aws_route_table_association" "public" {
  count          = length(aws_subnet.public.*)
  subnet_id      = aws_subnet.public.*.id[count.index]
  route_table_id = aws_route_table.public.id
}


resource "aws_route_table_association" "private" {
  count          = length(aws_subnet.private.*)
  subnet_id      = aws_subnet.private.*.id[count.index]
  route_table_id = aws_route_table.private.id
}


resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = merge(
    var.common_tags,
    {
      Name = format("%s-Private-Routes", var.name)
    }
  )
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = merge(
    var.common_tags,
    {
      Name = format("%s-Public-Routes", var.name)
    }
  )
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("Internet-Gateway-%s", var.name)
  }
}

resource "aws_eip" "main" {
  vpc = true
  tags = {
    Name  = format("%s-Nat-Eip", var.name)
    build = "terraform"
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.public.*.id[0]

  tags = {
    Name        = format("Nat-Gateway-%s", var.name)
    Description = "Public Facing Nat Gateway"
    build       = "terraform"
  }
}

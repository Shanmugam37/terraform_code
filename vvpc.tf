locals {
  Name = "Goole"
}
locals {
  subnet = "subnet"
}
locals {
  way = "gateway"
}

resource "aws_vpc" "dada" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "${local.Name}_vpc"
  }
}

###    SUBNET CREATION 

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.dada.id
  availability_zone = "ap-south-1a"
  cidr_block        = "10.0.0.0/25"
  tags = {
    Name = "public_${local.subnet}_google"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.dada.id
  availability_zone = "ap-south-1b"
  cidr_block        = "10.0.0.128/25"

  tags = {
    Name = "private_${local.subnet}_google"
  }
}
resource "aws_internet_gateway" "igw_vpc" {
  vpc_id = aws_vpc.dada.id
  tags = {
    Name = "${local.way}_igw"
  }
}
resource "aws_nat_gateway" "nat_vpc" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.private_subnet.id
  tags = {
    Name = "${local.way}_NAT"
  }
}

resource "aws_route_table" "public_route_tbl" {
  vpc_id = aws_vpc.dada.id
  tags = {
    Name = "Public_route_table"
  }
}
resource "aws_route_table" "private_route_tbl" {
  vpc_id = aws_vpc.dada.id
  tags = {
    Name = "private_route_table"
  }
}
resource "aws_route_table_association" "public_route_table_ass" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_tbl.id
}
resource "aws_route_table_association" "private_route_table_ass" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_route_tbl.id
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_tbl.id
  gateway_id             = aws_internet_gateway.igw_vpc.id
  destination_cidr_block = "0.0.0.0/0"

}

resource "aws_route" "private_route" {
  gateway_id             = aws_nat_gateway.nat_vpc.id
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.private_route_tbl.id

}
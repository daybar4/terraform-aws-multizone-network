# -----------------------------------------------
# START OF network section
# -----------------------------------------------

/*
* Create VPC
* VPC with CIDR 172.16.0.0/16
*/
resource "aws_vpc" "vpc" {           ## In all blocks, first the target resource in aws, second the ID for this file to call it
  cidr_block       = "172.16.0.0/16" ## 172.16.0.0/16 - /16 means the first two bytes (172.16.) are network.
  instance_tenancy = "default"

  tags = {
    Name = var.aws-vpc-name
  }
}

/*
* Create internet gateway
*/
resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.aws-ig-name
  }
}

/*
* Create public subnets
*/
resource "aws_subnet" "aws-public-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.1.0/24" ## Subnet lower than VPC, in range between (.0.0/16)
  availability_zone       = var.aws_zone["ireland.a"]
  map_public_ip_on_launch = true

  tags = {
    Name = var.aws-public-subnet-name-1
  }
}

resource "aws_subnet" "aws-public-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.2.0/24" ## Subnet lower than VPC, in range between (.0.0/16)
  availability_zone       = var.aws_zone["frankfurt.a"]
  map_public_ip_on_launch = true

  tags = {
    Name = var.aws-public-subnet-name-2
  }
}

/*
* Create private subnets
*/
resource "aws_subnet" "aws-private-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.3.0/24" ## Subnet lower than VPC, in range between (.0.0/16)
  availability_zone       = var.aws_zone["ireland.a"]
  map_public_ip_on_launch = false

  tags = {
    Name = var.aws-private-subnet-name-1
  }
}

resource "aws_subnet" "aws-private-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.4.0/24" ## Subnet lower than VPC, in range between (.0.0/16)
  availability_zone       = var.aws_zone["frankfurt.a"]
  map_public_ip_on_launch = false

  tags = {
    Name = var.aws-private-subnet-name-2
  }
}

/*
* Create route table to internet gateway
*/
resource "aws_route_table" "aws-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    Name = var.aws-rt-name
  }
}

/*
* Associate public subnets with route table
*/
resource "aws_route_table_association" "aws-public-route_1" {
  subnet_id      = aws_subnet.aws-public-subnet-1.id
  route_table_id = aws_route_table.aws-rt.id
}

resource "aws_route_table_association" "aws-public-route_2" {
  subnet_id      = aws_subnet.aws-public-subnet-2.id
  route_table_id = aws_route_table.aws-rt.id
}

# -----------------------------------------------
# END OF network section
# -----------------------------------------------
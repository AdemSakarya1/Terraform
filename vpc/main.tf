resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "myterraform-vpc"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "myterraform-igw"
  }
}

resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags = {
    Name = "subnet-public-az1"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = 

  route {
    cidr_block = 
    gateway_id = #not aws_internet_gateway.nternet_gateway.id basliktaki kaynak  ve kaynagin ismi id oluyor
  
  }

  tags = {
    Name = "${}-${}-public-rt"
  }
}

# associate public subnet az1 to "public route table"
resource "aws_route_table_association" "public_subnet_az1_rt_association" {
  subnet_id      = 
  route_table_id = 
}

# associate public subnet az2 to "public route table"
resource "aws_route_table_association" "public_subnet_2_rt_association" {
  subnet_id      = 
  route_table_id = 
}

resource "aws_subnet" "private_app_subnet_az1" {
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags = {
    Name = "${}-${}-private-app-az1"
  }
}

# create private app subnet az2
resource "aws_subnet" "private_app_subnet_az2" {
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags = {
    Name = "${}-${}-private-app-az2"
  }
}

# create private data subnet az1
resource "aws_subnet" "private_data_subnet_az1" {
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags = {
    Name = "${}-${}-private-data-az1"
  }
}

# create private data subnet az2
resource "aws_subnet" "private_data_subnet_az2" {
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags = {
    Name = "${}-${}-private-data-az2"
  }
}
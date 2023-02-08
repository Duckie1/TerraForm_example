resource "aws_route_table" "test_main_route" {

    depends_on = [
    aws_vpc.test-vpc
  ]

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_route_table" "public-subnet3-routing" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-igw.id
  }

  tags = {
    Name = "public-subnet3-routing"
  }

  tags_all = {
    Name = "public-subnet3-routing"
  }

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_route_table" "public-subnet1-routing" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-igw.id
  }

  tags = {
    Name = "public-subnet1-routing"
  }

  tags_all = {
    Name = "public-subnet1-routing"
  }

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_route_table" "test-rt-eks-pods-a" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-igw.id
  }

  tags = {
    Name = "test-rt-eks-pods-a"
  }

  tags_all = {
    Name = "test-rt-eks-pods-a"
  }

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_route_table" "test-rt-eks-pods-c" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-igw.id
  }

  tags = {
    Name = "test-rt-eks-pods-c"
  }

  tags_all = {
    Name = "test-rt-eks-pods-c"
  }

  vpc_id = aws_vpc.test-vpc.id
}

########## Private Subnet Route Tables ########## 

resource "aws_route_table" "test-route-table-pri-sub1" {

  depends_on = [
    aws_vpc.test-vpc,
    aws_nat_gateway.test-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.test-nat-gateway.id
  }

  tags = {
    Name = "test-route-table-pri-sub1"
  }

  tags_all = {
    Name = "test-route-table-pri-sub1"
  }

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_route_table" "test-route-table-pri-sub3" {

  depends_on = [
    aws_vpc.test-vpc,
    aws_nat_gateway.test-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.test-nat-gateway.id
  }

  tags = {
    Name = "test-route-table-pri-sub3"
  }

  tags_all = {
    Name = "test-route-table-pri-sub3"
  }

  vpc_id = aws_vpc.test-vpc.id
}

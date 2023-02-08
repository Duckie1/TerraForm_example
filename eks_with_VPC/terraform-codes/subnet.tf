resource "aws_subnet" "public-subnet1" {

  depends_on = [
    aws_vpc.test-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "public-subnet1"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "public-subnet1"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.test-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "public-subnet3" {

  depends_on = [
    aws_vpc.test-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "public-subnet3"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "public-subnet3"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.test-vpc.id
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "public-subnet-eks-pods-a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "100.64.0.0/19"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "public-subnet-eks-pods-a"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "public-subnet-eks-pods-a"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.test-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "public-subnet-eks-pods-c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "100.64.32.0/19"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "public-subnet-eks-pods-c"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "public-subnet-eks-pods-c"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.test-vpc.id
  availability_zone = "ap-northeast-2c"
}

############ Private Subnets ############

resource "aws_subnet" "test-private-subnet1" {

  depends_on = [
    aws_vpc.test-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "test-private-subnet1"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "test-private-subnet1"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.test-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "test-private-subnet3" {

  depends_on = [
    aws_vpc.test-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "test-private-subnet3"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "test-private-subnet3"
    "kubernetes.io/cluster/test-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.test-vpc.id
  availability_zone = "ap-northeast-2c"
}

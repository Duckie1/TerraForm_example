resource "aws_route_table" "tfer--rtb-00e44179552178e42" {
  vpc_id = "vpc-04623bbd67846e1f2"
}

resource "aws_route_table" "tfer--rtb-08982bbb172cbb507" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-030a1176b5bea64b5"
  }

  tags = {
    Name = "public-subnet3-routing"
  }

  tags_all = {
    Name = "public-subnet3-routing"
  }

  vpc_id = "vpc-04623bbd67846e1f2"
}

resource "aws_route_table" "tfer--rtb-0b5528c96591c50d7" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-030a1176b5bea64b5"
  }

  tags = {
    Name = "public-subnet1-routing"
  }

  tags_all = {
    Name = "public-subnet1-routing"
  }

  vpc_id = "vpc-04623bbd67846e1f2"
}

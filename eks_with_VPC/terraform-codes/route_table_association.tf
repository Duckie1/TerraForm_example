resource "aws_route_table_association" "test-route-association-pub-sub1" {
  route_table_id = aws_route_table.public-subnet1-routing.id
  subnet_id      = aws_subnet.public-subnet1.id
}

resource "aws_route_table_association" "test-route-association-pub-sub3" {
  route_table_id = aws_route_table.public-subnet3-routing.id
  subnet_id      = aws_subnet.public-subnet3.id
}

resource "aws_route_table_association" "test-rta-eks-pods-a" {
  route_table_id = aws_route_table.test-rt-eks-pods-a.id
  subnet_id      = aws_subnet.public-subnet-eks-pods-a.id
}

resource "aws_route_table_association" "test-rta-eks-pods-c" {
  route_table_id = aws_route_table.test-rt-eks-pods-c.id
  subnet_id      = aws_subnet.public-subnet-eks-pods-c.id
}

########## Private Subnet Route Tables Association ########## 

resource "aws_route_table_association" "test-route-association-pri-sub1" {
  route_table_id = aws_route_table.test-route-table-pri-sub1.id
  subnet_id      = aws_subnet.test-private-subnet1.id
}

resource "aws_route_table_association" "test-route-association-pri-sub3" {
  route_table_id = aws_route_table.test-route-table-pri-sub3.id
  subnet_id      = aws_subnet.test-private-subnet3.id
}


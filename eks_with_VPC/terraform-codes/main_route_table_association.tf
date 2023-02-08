resource "aws_main_route_table_association" "test_main_route" {
  route_table_id = aws_route_table.test_main_route.id
  vpc_id         = aws_vpc.test-vpc.id
}

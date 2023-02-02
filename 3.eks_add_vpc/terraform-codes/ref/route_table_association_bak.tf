resource "aws_route_table_association" "tfer--subnet-0453ecb84ca59bd5e" {
  route_table_id = aws_route_table.test-route-table-pub-sub1.id
  subnet_id      = "subnet-0453ecb84ca59bd5e"
}

resource "aws_route_table_association" "tfer--subnet-0b58d1adb0e630c50" {
  route_table_id = aws_route_table.test-route-table-pub-sub3.id
  subnet_id      = "subnet-0b58d1adb0e630c50"
}

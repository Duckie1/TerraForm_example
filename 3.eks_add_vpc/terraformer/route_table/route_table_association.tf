resource "aws_route_table_association" "tfer--subnet-0453ecb84ca59bd5e" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0b5528c96591c50d7_id}"
  subnet_id      = "subnet-0453ecb84ca59bd5e"
}

resource "aws_route_table_association" "tfer--subnet-0b58d1adb0e630c50" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-08982bbb172cbb507_id}"
  subnet_id      = "subnet-0b58d1adb0e630c50"
}

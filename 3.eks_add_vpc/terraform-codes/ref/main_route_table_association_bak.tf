resource "aws_main_route_table_association" "tfer--vpc-04623bbd67846e1f2" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-00e44179552178e42_id}"
  vpc_id         = "vpc-04623bbd67846e1f2"
}

resource "aws_eks_node_group" "test-eks-nodegroup" {
  cluster_name    = aws_eks_cluster.test-eks-cluster.name
  node_group_name = "test-eks-nodegroup"
  node_role_arn   = aws_iam_role.test-iam-role-eks-nodegroup.arn
  subnet_ids      = ["subnet-0453ecb84ca59bd5e","subnet-0b58d1adb0e630c50"]
  instance_types = ["t3a.medium"]
  disk_size = 20

  labels = {
    "role" = "eks-nodegroup"
  }

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.test-iam-policy-eks-nodegroup,
    aws_iam_role_policy_attachment.test-iam-policy-eks-nodegroup-cni,
    aws_iam_role_policy_attachment.test-iam-policy-eks-nodegroup-ecr,
  ]

  tags = {
    "Name" = "${aws_eks_cluster.test-eks-cluster.name}-worker-node"
  }
}

resource "aws_eks_node_group" "test-eks-nodegroup2" {
  cluster_name    = aws_eks_cluster.test-eks-cluster.name
  node_group_name = "test-eks-nodegroup2"
  node_role_arn   = aws_iam_role.test-iam-role-eks-nodegroup.arn
  subnet_ids      = ["subnet-0453ecb84ca59bd5e","subnet-0b58d1adb0e630c50"]
  # instance_types = ["t3a.medium"]
  # disk_size = 20https://www.google.com/search?q=%ED%85%8C%EB%9D%BC%ED%8F%BC+launch+%EC%8B%9C%EC%9E%91%ED%85%9C%ED%94%8C%EB%A6%BF+%EC%B6%94%EA%B0%80&ei=0VHbY_byFZfX2roP35ie2AU&oq=%ED%85%8C%EB%9D%BC%ED%8F%BC+lau%EC%B6%94%EA%B0%80&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAxgAMggIIRCgARDDBDoKCAAQRxDWBBCwA0oECEEYAEoECInvalidLaunchTemplateName.AlreadyExistsException:%20Launch%20template%20name%20already%20in%20use.YYAFDhJ1iZLWCZPWgCcAB4AIABigGIAZcEkgEDMC40mAEAoAEByAEKwAEB&sclient=gws-wiz-serp

  labels = {
    "role" = "eks-nodegroup"
  }

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }

  launch_template {
    id = aws_launch_template.test-launch-template.id
    version = aws_launch_template.test-launch-template.latest_version
  }

  tags = {
    "Name" = "${aws_eks_cluster.test-eks-cluster.name}-worker-node2"
  }
}
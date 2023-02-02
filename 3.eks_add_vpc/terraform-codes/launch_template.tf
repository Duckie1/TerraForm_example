resource "aws_launch_template" "tfer--eks-fcc3083b-10d5-a023-fdec-0a00f3afd62c" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
      #throughput            = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  #disable_api_stop        = "false"
  disable_api_termination = "false"

  iam_instance_profile {
    name = "eks-fcc3083b-10d5-a023-fdec-0a00f3afd62c"
  }

  image_id      = "ami-085514de289e14cb5"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  name = "eks-fcc3083b-10d5-a023-fdec-0a00f3afd62c"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    #ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    #ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-0a23be339e58fa2b8"]
  }

  tags = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU0xZWtORFFXTXJaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVTWGROYWtFd1RrUmpkMDB4YjFoRVZFMTZUVVJGZWsxRVFUQk9SR04zVFRGdmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUMFI1Q21GV1JXZGFibVZNVkRoeWFEUnVRa3hzZDNvMEwyRTRiSGgwYVhKTmQxQmxWVkIzWjAwNVpVMWxaVmdyYzI0NWRVNTFNakZUVEdaM1RDdDJVR2RxYlRnS1pUSTBUM1JoWjJkc1VFbzFhbEpRY1RZdldXeHBUMHBaTjFobFdVVlROSFZ3VG1kWlkyTm1jMUpGTDJwTWIxRmtTbkp1TkdObWVtTTRWVEZ0WkUxYWN3cGFWVXhuZWxGV1lYcHNjMmRhT0ROVk9HVkZUVVZVUmtablRUTkVWMkpCYkdGVmJHbHNlRXRVTjB0NU4ycFhlamxSTDBNemJrZFhTMGh1V210QmJYaGtDamxFVmxNME0ySjFlVmxKTDNsclkzRXpTMXBKT1VoalYwSldOMjVVTm1GaFExQkZlVFJQVkVSUlVUSTNSWEYwZHpBdmRGSkZVRFoxVjNKcWNuaFpkVmNLWnpkdGQxbzNkemgxYkZCQk0xSXJRM2hXVjBwU1duVk1aWHA0TjB0NVVXRlZPRlI2Tm5WWE9GVXZZMDFtTTNKaGJrWm5kVXM0Y2xKTE1qQndiR1UyZVFwVGMyUXhOa2x5VUhSWlJVcE5XR1pxVGpoalEwRjNSVUZCWVU1RFRVVkJkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaQmRqWklNbk16ZFdrclNEaHFlV05aUW5WSk9FbHRha3BPTW1STlFUQkhRMU54UjFOSllqTUtSRkZGUWtOM1ZVRkJORWxDUVZGQ1VuZG5VM05uTUZwc1VrSnJXbTRyYVhCTWNVdEhLMDlFU1hoMVVEWXJjV1JZTUZCVWNFdEpWVEoxU0ZRNFNXMDNiQXBZYUZGVFFUbFpWbVJYVVNzNVMydFRXREJ2V2xKQ1ZIcDVTVzVzTlZkcU5EWk9lazlOYUZnelJtMDFjMlpOZVRKNmVFd3hZVFl6UjNwSlMxZDROMHB0Q2pBd1EwTlliMWcwVERsa2MyMUVNRXdyWlhCWllVVmFRazlWZWtJelJFTm5ZbVpZTjA5SFZtSndXRFpQWlVWdmVpdE5la1l2T0cxMVR6WnpRbEYzYW1ZS1p6aGlOazVoZVRJNU9IRnZVbkIzV1VOM04wdFhjWFZQYW5CaGJXUllhV2RDTVhkMlNXUlBObVJtYUdONFNYVkpTekp2SzFKWGNXWmhSemhWVm5WTk5nb3dlSFIzVERWblNGbFhjWFZKYkZCRGNpdFdNbEpFZFd4VFRGUnRibk5tYlhGUmRFVllRelY0VjJOdWFYbExlSFZ2WnpSTGVrd3hWak5qVDBoVVVrZDFDbVZQT1dvcldHaFJXVk5qVVU5T01EVm9TMjkxV2toeVdWWlBORGxyV0ZncmNYVjViUW90TFMwdExVVk9SQ0JEUlZKVVNVWkpRMEZVUlMwdExTMHRDZz09CkFQSV9TRVJWRVJfVVJMPWh0dHBzOi8vM0QyRTY4NEU5MjkwRDM0NTk3M0QxRDVGMTg2RjVCRjAuZ3I3LmFwLW5vcnRoZWFzdC0yLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDAuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggdGVzdC1la3MtY2x1c3RlciAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTA4NTUxNGRlMjg5ZTE0Y2I1LGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXRlc3QtZWtzLW5vZGVncm91cCxyb2xlPWVrcy1ub2RlZ3JvdXAgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
}

resource "aws_launch_template" "test-launch-template" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
      # throughput            = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  #disable_api_stop        = "false"
  disable_api_termination = "false"

  #iam_instance_profile {
  #  name = "eks-56c30867-e0dd-2b8a-8322-f8e65fbd7ee2"
  #}

  image_id      = "ami-085514de289e14cb5"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  #name = "eks-fcc3083b-10d5-a023-fdec-0a00f3afd62c"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    #ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    #ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-0a23be339e58fa2b8"]
  }

  tags = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU0xZWtORFFXTXJaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVTWGROYWtFd1RrUmpkMDB4YjFoRVZFMTZUVVJGZWsxRVFUQk9SR04zVFRGdmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUMFI1Q21GV1JXZGFibVZNVkRoeWFEUnVRa3hzZDNvMEwyRTRiSGgwYVhKTmQxQmxWVkIzWjAwNVpVMWxaVmdyYzI0NWRVNTFNakZUVEdaM1RDdDJVR2RxYlRnS1pUSTBUM1JoWjJkc1VFbzFhbEpRY1RZdldXeHBUMHBaTjFobFdVVlROSFZ3VG1kWlkyTm1jMUpGTDJwTWIxRmtTbkp1TkdObWVtTTRWVEZ0WkUxYWN3cGFWVXhuZWxGV1lYcHNjMmRhT0ROVk9HVkZUVVZVUmtablRUTkVWMkpCYkdGVmJHbHNlRXRVTjB0NU4ycFhlamxSTDBNemJrZFhTMGh1V210QmJYaGtDamxFVmxNME0ySjFlVmxKTDNsclkzRXpTMXBKT1VoalYwSldOMjVVTm1GaFExQkZlVFJQVkVSUlVUSTNSWEYwZHpBdmRGSkZVRFoxVjNKcWNuaFpkVmNLWnpkdGQxbzNkemgxYkZCQk0xSXJRM2hXVjBwU1duVk1aWHA0TjB0NVVXRlZPRlI2Tm5WWE9GVXZZMDFtTTNKaGJrWm5kVXM0Y2xKTE1qQndiR1UyZVFwVGMyUXhOa2x5VUhSWlJVcE5XR1pxVGpoalEwRjNSVUZCWVU1RFRVVkJkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaQmRqWklNbk16ZFdrclNEaHFlV05aUW5WSk9FbHRha3BPTW1STlFUQkhRMU54UjFOSllqTUtSRkZGUWtOM1ZVRkJORWxDUVZGQ1VuZG5VM05uTUZwc1VrSnJXbTRyYVhCTWNVdEhLMDlFU1hoMVVEWXJjV1JZTUZCVWNFdEpWVEoxU0ZRNFNXMDNiQXBZYUZGVFFUbFpWbVJYVVNzNVMydFRXREJ2V2xKQ1ZIcDVTVzVzTlZkcU5EWk9lazlOYUZnelJtMDFjMlpOZVRKNmVFd3hZVFl6UjNwSlMxZDROMHB0Q2pBd1EwTlliMWcwVERsa2MyMUVNRXdyWlhCWllVVmFRazlWZWtJelJFTm5ZbVpZTjA5SFZtSndXRFpQWlVWdmVpdE5la1l2T0cxMVR6WnpRbEYzYW1ZS1p6aGlOazVoZVRJNU9IRnZVbkIzV1VOM04wdFhjWFZQYW5CaGJXUllhV2RDTVhkMlNXUlBObVJtYUdONFNYVkpTekp2SzFKWGNXWmhSemhWVm5WTk5nb3dlSFIzVERWblNGbFhjWFZKYkZCRGNpdFdNbEpFZFd4VFRGUnRibk5tYlhGUmRFVllRelY0VjJOdWFYbExlSFZ2WnpSTGVrd3hWak5qVDBoVVVrZDFDbVZQT1dvcldHaFJXVk5qVVU5T01EVm9TMjkxV2toeVdWWlBORGxyV0ZncmNYVjViUW90TFMwdExVVk9SQ0JEUlZKVVNVWkpRMEZVUlMwdExTMHRDZz09CkFQSV9TRVJWRVJfVVJMPWh0dHBzOi8vM0QyRTY4NEU5MjkwRDM0NTk3M0QxRDVGMTg2RjVCRjAuZ3I3LmFwLW5vcnRoZWFzdC0yLmVrcy5hbWF6b25hd3MuY29tCks4U19DTFVTVEVSX0ROU19JUD0xMC4xMDAuMC4xMAovZXRjL2Vrcy9ib290c3RyYXAuc2ggdGVzdC1la3MtY2x1c3RlciAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTA4NTUxNGRlMjg5ZTE0Y2I1LGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXRlc3QtZWtzLW5vZGVncm91cCxyb2xlPWVrcy1ub2RlZ3JvdXAgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
}
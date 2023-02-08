resource "aws_internet_gateway" "test-igw" {
  depends_on = [
    aws_vpc.test-vpc
  ]
  vpc_id = aws_vpc.test-vpc.id
}

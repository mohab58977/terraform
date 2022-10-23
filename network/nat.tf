/*
  NAT Instance
*/


resource "aws_nat_gateway" "NGW" {
  allocation_id = aws_eip.natip.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "nat"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}
resource "aws_eip" "natip" {
  vpc = true
}


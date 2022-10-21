

resource "aws_route_table" "us-east-1-public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_route_table_association" "us-east-1-public1" {
  subnet_id      = "${aws_subnet.us-east-1a-public.id}"
  route_table_id = aws_route_table.us-east-1-public.id
}
resource "aws_route_table_association" "us-east-1-public2" {
  subnet_id      =  "${aws_subnet.us-east-1b-public.id}"
  route_table_id = aws_route_table.us-east-1-public.id
}



resource "aws_route_table" "us-east-1-private" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "Private Subnet"
  }
}

resource "aws_route_table_association" "us-east-1-private1" {
  subnet_id      = "${aws_subnet.us-east-1a-private.id}"
  route_table_id = aws_route_table.us-east-1-private.id
}
resource "aws_route_table_association" "us-east-1-private2" {
  subnet_id      = "${aws_subnet.us-east-1b-private.id}"
  route_table_id = aws_route_table.us-east-1-private.id
}

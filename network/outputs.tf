

output "public-subnet-id-1" {
  value = aws_subnet.public-subnet-1.id
}

output "public-subnet-id-2" {
  value = aws_subnet.public-subnet-2.id
}

output "private-subnet-id-1" {
  value = aws_subnet.private-subnet-1.id
}

output "private-subnet-id-2" {
  value = aws_subnet.private-subnet-2.id
}

output "vpc-id" {
  value = aws_vpc.my_vpc.id
}



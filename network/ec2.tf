resource "aws_instance" "my_instance1" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = "privateec2"
  vpc_security_group_ids = [ aws_security_group.privatesecuritygp.id]
  subnet_id = aws_subnet.private-subnet-1.id
  

  tags = {
    Name = "My private instance"
  }
}
resource "aws_instance" "my_instance2" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = "bastionec2"
  vpc_security_group_ids = [ aws_security_group.bastionsecuritygp.id]
  subnet_id = aws_subnet.public-subnet-1.id
  

  tags = {
    Name = "My bastion instance"
  }
}
resource "aws_instance" "my_instance1" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.key_pair.key_name
  vpc_security_group_ids = [aws_security_group.privatesecuritygp.id]
  subnet_id              = module.network.private-subnet-id-1


  tags = {
    Name = "My private instance"
  }
}
resource "aws_instance" "my_instance2" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.key_pair.key_name
  vpc_security_group_ids = [aws_security_group.bastionsecuritygp.id]
  subnet_id              = module.network.public-subnet-id-1


  tags = {
    Name = "My bastion instance"
  }
}

resource "aws_security_group" "bastionsecuritygp" {
  name        = "bastion security gp"
  description = "Allow SSH inbound connections"
  vpc_id      = module.network.vpc-id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastionsecuritygp"
  }
}
resource "aws_security_group" "privatesecuritygp" {
  name        = "private security gp"
  description = "Allow SSH and port 3000 inbound connections"
  vpc_id      = module.network.vpc-id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "privatesg"
  }
}

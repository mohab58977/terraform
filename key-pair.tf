resource "aws_key_pair" "key_pair" {
  key_name   = "key_pair"
  public_key = tls_private_key.rsa-key.public_key_openssh
  tags = {
    Name = "terraform_key_pair"
  }
}

resource "tls_private_key" "rsa-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
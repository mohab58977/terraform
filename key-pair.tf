resource "aws_key_pair" "key_pair" {
  key_name   = "key_pair"       # Create a "myKey" to AWS!!
  public_key = tls_private_key.pk.public_key_openssh
  tags = {
    Name = "terraform_key_pair"
  }
  provisioner "local-exec" { # Create a "myKey.pem" to your computer!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./Key_pair.pem"
  }
}

resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
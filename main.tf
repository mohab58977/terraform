module "network" {
  source                = "./network/"
  cidr                  = var.cidr
  public_subnet_1_cidr  = var.public_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
  region-1              = var.region-1
}

resource "null_resource" "print-bastion-ip" {
  depends_on = [
    aws_instance.my_instance2
  ]


  provisioner "local-exec" {
    command = "echo ${aws_instance.my_instance2.public_ip} > bastion-ip.txt"
  }
}

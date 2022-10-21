resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    tags= {
        Name = "terraform-aws-vpc"
    }
}

resource "aws_internet_gateway" "gateway" {
    vpc_id = "${aws_vpc.myvpc.id}"
}


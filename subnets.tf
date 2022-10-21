/*
  Private Subnet
*/
resource "aws_subnet" "us-east-1a-private" {
    vpc_id = "${aws_vpc.myvpc.id}"

    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"

    tags= {
        Name = "Private Subnet 1"
    }
}
resource "aws_subnet" "us-east-1b-private" {
    vpc_id = "${aws_vpc.myvpc.id}"

    cidr_block = "10.0.3.0/24"
    availability_zone = "us-east-1b"

    tags= {
        Name = "Private Subnet 2"
    }
}




/*
  Public Subnet
*/
resource "aws_subnet" "us-east-1a-public" {
    vpc_id = "${aws_vpc.myvpc.id}"

    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"

    tags= {
        Name = "Public Subnet 2"
    }
    }
    resource "aws_subnet" "us-east-1b-public" {
    vpc_id = "${aws_vpc.myvpc.id}"

    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"

    tags= {
        Name = "Public Subnet 2" 
    }
    }
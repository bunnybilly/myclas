provider "aws" {
}
variable "foo"{

description="enter the cidr_block"

}


resource "aws_vpc" "ted"{

cidr_block= var.foo

tags= {
 Name:"myvpc"

}
}

resource "aws_subnet" "subnet" {
  vpc_id     = resource.aws_vpc.ted.id
  cidr_block = "10.0.1.0/24"
  availability_zone= "us-west-2a"

  tags = {
    Name = "mynewsubnet"
  }
}

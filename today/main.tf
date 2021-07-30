resource "aws_vpc" "ted"{

cidr_block= var.foo

tags= {
 Name:"myvpc"

}
}


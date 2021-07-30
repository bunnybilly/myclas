resource "aws_subnet" "subnet" {
  vpc_id     = resource.aws_vpc.ted.id
  cidr_block = "10.0.1.0/24"
  availability_zone= "us-west-2a"

  tags = {
    Name = "mynewsubnet"
  }
}


resource "aws_vpc" "tf_cloud" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform-cloud"
  }
}

resource "aws_subnet" "tf_cloud" {
  cidr_block = var.subnet_cidr
  vpc_id     = aws_vpc.tf_cloud.id

  tags = {
    Name = "terraform-cloud"
  }
}
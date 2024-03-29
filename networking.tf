resource "aws_vpc" "tf_cloud" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform-cloud"
  }
}
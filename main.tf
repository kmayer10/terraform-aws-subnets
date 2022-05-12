resource "aws_subnet" "subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
  availability_zone = var.availability_zone
  map_public_ip_on_launch = var.type == "private" ? false : true
  tags = {
    type = var.type
    Name = var.name
  }
}

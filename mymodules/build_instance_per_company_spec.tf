resource "aws_instance" "machine" {
  ami               = "ami-0d71ea30463e0ff8d"
  instance_type     = "t2.micro"
  count             = var.instance_count
  key_name          = "PHRONESISEU"
  availability_zone = var.availability_zone[count.index]
  user_data         = file("${element(var.modulescripts, count.index)}")
  tags = {
    Name = var.node_name[count.index]
  }
}


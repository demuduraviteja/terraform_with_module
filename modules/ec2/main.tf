resource "aws_instance" "mylinuxtf" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "mytflinux"
  }
}
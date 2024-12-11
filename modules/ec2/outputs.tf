output "aws_instance_ip" {
 description = "my ec2 public ip"
 value = aws_instance.mylinuxtf.public_ip
}
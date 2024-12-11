output "aws_instance_id" {
 description = "my ec2 public ip"
 value = module.ec2_instance.aws_instance_ip
}
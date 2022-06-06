resource "aws_instance" "infra_ec2" {
  ami           = var.ami
  instance_type = var.ec2_instance_type
  tags = var.tags
}
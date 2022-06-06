output "instanceID" {
  description = "ID of ec2 instance"
  value       = aws_instance.infra_ec2.id
}
output "instance_public_ip_1" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server[0].public_ip
}

output "instance_public_ip_2" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server[1].public_ip
}

output "instance_public_ip_3" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server[2].public_ip
}

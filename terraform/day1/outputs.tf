output "instance_public_ip" {
  value       = aws_instance.monitoring_instance.public_ip
  sensitive   = true
  description = "The public IP address of the monitoring EC2 instance"
  depends_on  = [aws_instance.monitoring_instance]
}

output "web_instance_id" {
  value       = aws_instance.web.id
  description = "The ID of the web EC2 instance"
  depends_on  = [aws_instance.web]
}


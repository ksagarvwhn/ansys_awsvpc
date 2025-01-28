output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "nginx_instance_id" {
  description = "The ID of the EC2 instance running Nginx"
  value       = aws_instance.nginx.id
}

output "nginx_instance_public_ip" {
  description = "The public IP address of the EC2 instance running Nginx"
  value       = aws_instance.nginx.public_ip
}

output "instans_id" {
   value = aws_instance.app_server.id
   description = "ID of the EC2 instance"
}


output "public_ip" {
   value = aws_instance.app_server.public_ip
   description = "Public IP Address of the EC2 instance"
}

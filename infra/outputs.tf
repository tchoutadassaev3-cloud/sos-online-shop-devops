output "web_server_public_ip" {
  description = "Public IP address of the SOS web server"
  value       = aws_instance.web.public_ip
}

#output "s3_bucket_name" {
#  description = "Name of the S3 bucket for static assets"
#  value       = aws_s3_bucket.assets.bucket
#}

output "website_url" {
  description = "URL to access the SOS Online Shop"
  value       = "http://${aws_instance.web.public_ip}"
}


output "public_ec2_ips" {
  value = [
    for instance in aws_instance.host :  join("", ["http://", instance.public_ip])
  ]
}
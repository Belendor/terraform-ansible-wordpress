
output "public_ec2_ips_host" {
  value = [
    for instance in aws_instance.host :  join("", ["http://", instance.public_ip])
  ]
}

output "public_ec2_ips_control" {
  value = [
    for instance in aws_instance.control :  join("", ["http://", instance.public_ip])
  ]
}
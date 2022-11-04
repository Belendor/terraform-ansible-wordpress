resource "aws_instance" "host" {
  count = var.ec2_count

  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.generated_key.key_name
  subnet_id              = module.vpc.public_subnets[count.index % length(module.vpc.public_subnets)]
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  user_data = templatefile("${path.module}/init-script.sh", {
    file_content = "Host online"
  })

  tags = {
    Name = "Ansible-host"
  }
}
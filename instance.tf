resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example Amazon Linux 2 AMI, change based on your region
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_key.key_name

  # Optional: Add a security group to allow SSH access
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = "MyTerraformInstance"
  }
}

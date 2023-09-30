resource "aws_instance" "google_instance" {
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.goodle_sec_group.id]
  associate_public_ip_address = true
  ami                         = var.ami_id
  instance_type               = var.instance_type
  count                       = 2 # have to change the count with othe variables 
  key_name                    = var.key_name

  tags = {
    Name = "My_Ec2_instance"
  }
}

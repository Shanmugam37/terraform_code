resource "aws_security_group" "goodle_sec_group" {
  vpc_id = aws_vpc.dada.id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "all"
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "all"

  }
  tags = {
    Name = "${local.Name}_sec_group"
  }
}

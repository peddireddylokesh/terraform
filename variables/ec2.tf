resource "aws_instance" "name" {
  ami           = var.ami_id # custom ami our devops-practice ami
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type = var.instance_type # t3.micro
  tags = var.ec2-tags
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = var.sg_tags
}
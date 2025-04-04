resource "aws_instance" "name" {
  ami                    = local.ami_id
  vpc_security_group_ids = local.vs_group_ids
  # instance_type          = var.instance_type
  instance_type          = local.instance_type
  tags = {
    Name    = local.name
    Purpose = "devops-practice"
  }

}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_changed"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    Name = "allow_tls"
  }
}
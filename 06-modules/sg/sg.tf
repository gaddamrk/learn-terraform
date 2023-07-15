
resource "aws_security_group" "allow_tls1" {
  name        = "allow_tls1"
  description = "Allow TLS1 inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls1"
  }
}

output "security_group_id" {
  value = aws_security_group.allow_tls1.id
}
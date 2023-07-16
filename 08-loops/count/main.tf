data "aws_ami" "centos8" {
  count       = 1
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8.id
  instance_type = "t3.micro"

  tags = {
    Name = "test-centos8"
  }
}


output "publicip" {
  value = aws_instance.web.*.public_ip
}
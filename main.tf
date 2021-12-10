resource "aws_instance" "web" {
  ami           = "ami-0e66f5495b4efdd0f"
  subnet_id = "subnet-0285143f5cd0a40e5"
  instance_type = var.tipo
  key_name = "cert-turma3-layane-dev"
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0ff12c45d2310a384"]
  root_block_device {
    encrypted = true
    volume_size = 8
  }
  tags = {
    Name = "${var.nome}",
    Itau = true
  }
}
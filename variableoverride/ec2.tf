resource "aws_instance" "roboshop" {

  ami           = var.ami_id
  instance_type = var.instanceType
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = var.tags
}
resource "aws_instance" "ec2condtion" {
    ami = var.ami_id
    instance_type = var.instanceType == "Mongodb" ? "t2.small" : "t3.small"
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags = {
      Name = "ROBOSHOP"
    }
  
}
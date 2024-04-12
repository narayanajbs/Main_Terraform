resource "aws_security_group" "sg" {

    name= "roboshop sg"
    description = "allow all ports"
    ingress {
        to_port = 0
        from_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    egress {
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      name = "roboshop sg"
    }
}
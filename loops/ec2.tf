resource "aws_instance" "web" {
    
    count = length(var.instance_name)
    ami = var.ami_id

    instance_type = var.instance_name [count.index] == "mongodb" || var.instance_name[count.index] == "mysql" ? "t3.small" : "t2.small"
    #vpc_security_group_ids = ""

tags = {
    Name = var.instance_name[count.index]
}
  
}
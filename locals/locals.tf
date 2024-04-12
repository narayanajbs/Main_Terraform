locals {
  trainer = "abcdfdf"
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name [count.index] == "mysql" ? "t3.small" : "t2.small"
  #name = "${var.instance_name [count.index]}.${var.domain_name}"
  ip = var.instance_name[count.index]== "web" ? aws_instance.web[count.index].private_ip : aws_instance.web[count.index].public_ip
}
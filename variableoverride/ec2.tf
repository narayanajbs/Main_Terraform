/* 1.	Commandline
    Terraform plan –var=”instance_type=t3.medium”
2.	–var-file
    Terraform plan –var-file=”roboshop.tfvars”
     Terraform apply –var-file=”roboshop.tfvars”
 
3.	Terraform.tfvars
We have to create terraform.tfvars file and defined value in that file
> terraform plan 
It will automatically read variables from terraform.tfvars and override the values
    
4.	ENV variables
   Set TF_VAR_instance_type=t3.xlarge */




resource "aws_instance" "roboshop" {

  ami           = var.ami_id
  instance_type = var.instanceType
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = var.tags
}
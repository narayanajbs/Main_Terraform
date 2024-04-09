variable instanceType {
    type = string
    default = "t2.small"
}

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}
variable "tags" {
    type = map
    default = {
        Name = "Roboshop"
        Project = "Roboshop Project"
        Environment = "DEV"
        terraform = "true"
    }
}
variable "sg_name" {
    type = string
    default = "Roboshop SG"
}
variable "sg_description" {
    type = string
    default = "Allow All Traffic"
}
variable "sg_input_description" {
type = string
default = "Allow all ports"
}
variable "sg_input_toPort" {
    type = number
    default = 0
}
variable "sg_input_fromPort" {
    type = number
    default = 0
}
variable "sg_input_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_input_protocol" {
    type = string
    default = "tcp"
}

variable "sg_output_toport" {
 type = number
 default = 0   
  }
variable "sg_output_fromport" {
 type = number
 default = 0   
  }

  variable "sg_output_protocol" {
 type = string
 default = "-1" 
  }
  variable "sg_output_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_tags" {
    type = map
    default = {
        Name = "Roboshop_sg"
        Project = "Roboshop Project_sG"
        Environment = "DEV"
        terraform = "true"
    }
}
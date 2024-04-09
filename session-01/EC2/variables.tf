variable "sg_name" {
    type = string
    default = "roboshop_all"
  }

variable "sg_description" {
    type = string
    default = "roboshop allow all traffic"
  }

  variable "inbound_from_port" {
       default = 0
  }

  variable "cidr_blocks" {
    type = list
    default = [ "0.0.0.0/0" ] 
  }

  variable "tags" {
    type = map
    default = {
        Name = "Roboshop Project"
        Project = "Roboshop"
        Environment = "DEV"
        Component = "WEB"
        terraform = "true"
    }
    
  }
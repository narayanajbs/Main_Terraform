variable "instance_name" {
type = list
default = ["mongodb","cart","payment","shipment","dispatch","web","user","redis","mysql","rabbitmq","catalouge"]
}

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
  
}

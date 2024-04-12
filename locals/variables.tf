variable "instance_name" {
    type = list
    default = ["web","mysql","mangodb","rabbitmq","mysql","payment","shipment","cart","catalogs","user","dispatch"]
}

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
  
}

variable "zone_id" {
    default = "Z044647118VUIDFQMK0G"
  
}
variable "domain_name" {
    default = "joindevopstest.online"
  
}
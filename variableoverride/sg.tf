resource "aws_security_group" "sg" {
    
    name = var.sg_name
    description = var.sg_description

    ingress {
      
      description = var.sg_input_description
      to_port = var.sg_input_toPort
      from_port = var.sg_input_fromPort
      protocol = var.sg_input_protocol
      cidr_blocks = var.sg_input_cidr_blocks
    }

    egress {
        
        to_port = var.sg_output_toport
        from_port = var.sg_output_fromport
        protocol = var.sg_output_protocol
        cidr_blocks = var.sg_output_cidr_blocks
    }
    
    tags = var.sg_tags
  
}
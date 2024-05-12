resource "aws_instance" "db" {
  ami           =  var.image_id
  instance_type = var.instance_type
  vpc_security_group_ids=[aws_security_group.allow_ssh.id]
  tags = var.tags
}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description
  
  tags = var.tags

  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocal
    cidr_blocks      = var.allow_cidr
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allow_cidr
    
  }

}
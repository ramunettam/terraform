resource "aws_instance" "test" {
  ami           = local.ami
  instance_type = local.instance_type
  vpc_security_group_ids= [local.sg_id]

  tags = merge(
    local.tags ,
    {
        terraform ="true"
    }
  )

  
  }
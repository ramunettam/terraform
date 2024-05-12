resource "aws_instance" "test" {
    ami = data.aws_ami.id_ami
    instance_type = "t2.micro"
    vpc_security_group_ids = [  ]

    tags = {
      Name = "data source practice"
    }
  
}
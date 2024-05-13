locals {
  ami = "ami-090252cbe067a9e58"
  instance_type = var.instance_names == "db" ? "t2.small" : "t2.micro"
  sg_id="sg-01ac4af225a3b6cf9"
  instance_names= var.instance_names
  tags = {

    Name= "db"
    Project ="expense"
  }


}
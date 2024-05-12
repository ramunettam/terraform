variable "image_id"{
    type = string
    default ="ami-090252cbe067a9e58"
    description = "Rhel-9 ami"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
  
}

variable "sg_name" {

    default = "allow_ssh"
  
}
variable "sg_description" {
    default = "allow_ssh"
  

}
variable "ssh_port" {
    default = 22

}

variable "protocal" {
    default = "tcp"
  
}

variable "allow_cidr" {
    type = list
    default = ["0.0.0.0/0"]
  
}
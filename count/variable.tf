variable "ami_id" {
    default = "ami-090252cbe067a9e58"
  
}

variable "instance_name" {

    type = list(string)
    default = [ "db","backend","frontend" ]
  
}

 
  

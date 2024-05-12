variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}
variable "ami_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}



variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

#sg variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#r53 variables

variable "zone_id" {
    default = "Z0276836QFME7OC6ZBJX"
  
}

variable "domine_name" {

    default = "nettam.online"
  
}
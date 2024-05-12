    resource "aws_instance" "test" {

    ami           = var.image_id
    instance_type = var.instance_name == "db" ? "t2.small" : "t2.micro"
    
    tags = var.tags

    }
    
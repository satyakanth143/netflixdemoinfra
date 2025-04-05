provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 6
ami = "ami-099340ab7490f8ef6"
instance_type = "t2.micro"
key_name = "satya"
vpc_security_group_ids = ["sg-0e972c119147390e0"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["Ansible", "Dev-1", "Dev-2", "Monitoring server","Test-1","Test-2"]
}

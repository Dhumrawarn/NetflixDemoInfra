provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-00ca32bbc84273381"
instance_type = "t2.medium"
key_name = "6amvirginia"
vpc_security_group_ids = ["sg-0fb241bd6ca97819c"]
tags = {
Name = var.instance_names[count.index]
}
}


variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}

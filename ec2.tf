resource "aws_security_group" "basic3" {
  name        = "basic_22,80"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0b97f5d60d57eb7ef"

  ingress {
    description      = "to admin 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "to admin 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "basic_22,80"
  }
}




resource "aws_instance" "web" {
  ami           = "ami-06489866022e12a14"
  instance_type = "t2.micro"
  subnet_id = "subnet-06802f69a038aebb3"
  vpc_security_group_ids = [aws_security_group.basic3.id]

  key_name = aws_key_pair.key.id
 

  tags = {
    Name = "HelloWorld"
  }
}



# # To create instance

# resource "aws_instance" "instance" {
#     count = 3
#     ami = var.ami
#     instance_type = var.instance_type
#     key_name = aws_key_pair.key.id
#     vpc_security_group_ids =  ["${aws_security_group.security.id}"]
#     user_data = <<EOF
#     #!/bin/bash
#     yum update -y
#     yum install httpd -y 
#     systemctl enable httpd
#     systemctl start httpd
#     mkdir -p  /var/www/html/
#     echo "this is Balakonda" >/var/www/html/index.html
#     EOF 


#     tags = {
#         Name = var.ec2-name
#     }
# }
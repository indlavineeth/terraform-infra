# resource "aws_security_group" "basic_22" {
#   name        = "basic_22,80"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description      = "to admin 22"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     # cidr_blocks      = [aws_vpc.main.cidr_block]
    
#   }

#   ingress {
#     description      = "to admin 22"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     # cidr_blocks      = [aws_vpc.main.cidr_block]
    
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "basic_22,80"
#   }
# }
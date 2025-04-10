# % terraform import aws_security_group.sg_ec2_mongo_testing sg-03914dc18396e9c7c

#resource "aws_security_group" "sg_ec2_mongo_testing" {
#    provider = aws.account_testing_co
  
#}

resource "aws_security_group" "sg_ec2_mongo_testing" {
  name        = "SG Mongo Testing"
  description = "Security group for mongodb databases"
  vpc_id      = "vpc-019c03212464e3366"

  ingress {
    description = "MongoDB 27018"
    from_port   = 27018
    to_port     = 27018
    protocol    = "tcp"
    cidr_blocks = ["10.7.7.0/24", "10.12.0.0/16"]
  }

  ingress {
    description = "MongoDB 27019"
    from_port   = 27019
    to_port     = 27019
    protocol    = "tcp"
    cidr_blocks = ["10.7.7.0/24"]
  }

  ingress {
    description = "MongoDB SSH 65022"
    from_port   = 65022
    to_port     = 65022
    protocol    = "tcp"
    cidr_blocks = ["10.7.7.0/24"]
  }

  egress {
    description      = "Allow all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "SG Mongo Testing"
  }
}
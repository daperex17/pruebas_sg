# % terraform import aws_security_group.sg_ec2_mongo_testing sg-03914dc18396e9c7c

#resource "aws_security_group" "sg_ec2_mongo_testing" {
#    provider = aws.account_testing_co
  
#}

# checkov:skip=CKV2_AWS_5 Justificación: SG se asocia fuera de este módulo Terraform
resource "aws_security_group" "sg_ec2_mongo_testing" {
  name        = "SG Mongo Testing"
  description = "Security group for mongodb databases"
  vpc_id      = "vpc-019c03212464e3366"

  ingress = [
    {
      description      = null
      from_port        = 27018
      to_port          = 27018
      protocol         = "tcp"
      cidr_blocks      = ["10.7.7.0/24", "10.12.0.0/16"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },
    {
      description      = null
      from_port        = 27019
      to_port          = 27019
      protocol         = "tcp"
      cidr_blocks      = ["10.7.7.0/24"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },
    {
      description      = null
      from_port        = 65022
      to_port          = 65022
      protocol         = "tcp"
      cidr_blocks      = ["10.7.7.0/24"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress = [
    {
      description      = null
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  tags = {
    "Name" = "SG Mongo Testing"
  }
}
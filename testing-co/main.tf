# % terraform import aws_security_group.sg_ec2_mongo_testing sg-03914dc18396e9c7c

#resource "aws_security_group" "sg_ec2_mongo_testing" {
#    provider = aws.account_testing_co
  
#}

resource "aws_security_group" "sg_ec2_mongo_testing" {
    arn         = "arn:aws:ec2:us-east-2:145023115425:security-group/sg-03914dc18396e9c7c"
    description = "Security group for mongodb databases"
    egress      = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = null
            from_port        = 0
            ipv6_cidr_blocks = [
                "::/0",
            ]
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
    id          = "sg-03914dc18396e9c7c"
    ingress     = [
        {
            cidr_blocks      = [
                "10.7.7.0/24",
                "10.12.0.0/16",
            ]
            description      = null
            from_port        = 27018
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 27018
        },
        {
            cidr_blocks      = [
                "10.7.7.0/24",
            ]
            description      = null
            from_port        = 27019
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 27019
        },
        {
            cidr_blocks      = [
                "10.7.7.0/24",
            ]
            description      = null
            from_port        = 65022
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 65022
        },
    ]
    name        = "SG Mongo Testing"
    name_prefix = null
    owner_id    = "145023115425"
    tags        = {
        "Name" = "SG Mongo Testing"
    }
    tags_all    = {
        "Name" = "SG Mongo Testing"
    }
    vpc_id      = "vpc-019c03212464e3366"
}

# % terraform import aws_security_group.sg_ec2_mongodb_upgrade sg-03914dc18396e9c7c

resource "aws_security_group" "sg_ec2_mongodb_upgrade" {
    provider = aws.account_testing_co
  
}
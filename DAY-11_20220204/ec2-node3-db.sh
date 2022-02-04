#!/bin/bash 

# Ansible Controller - Ubuntu 20.04
aws ec2 run-instances \
--image-id "ami-0851b76e8b1bce90b" \
--instance-type "t2.micro" \
--count 1 \
--subnet-id "subnet-421fef29" \
--security-group-ids  "sg-06e4607030e3448cf"   \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=DB-Node3}]' \
--key-name "softobiz_keys" \
--user-data file://setup-hostname-db.txt --profile devops
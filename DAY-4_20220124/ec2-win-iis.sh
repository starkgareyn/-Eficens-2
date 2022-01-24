#!/bin/bash 

# WebServer Of Windows
aws ec2 run-instances \
--image-id "ami-0718157f62e008b13" \
--instance-type "t2.micro" \
--count 1 \
--subnet-id "subnet-fa64cca0" \
--security-group-ids "sg-0ab38acb31986250b" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=IIS-WebServer},{Key=Environment,Value=Development}]' \
--key-name "aws_california" --profile devops 
#--user-data file://install-web.txt --profile devops 
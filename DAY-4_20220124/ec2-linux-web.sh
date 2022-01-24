#!/bin/bash 

# WebServer Of Linux - Ubuntu 20.04
aws ec2 run-instances \
--image-id "ami-01f87c43e618bf8f0" \
--instance-type "t2.micro" \
--count 1 \
--subnet-id "subnet-fa64cca0" \
--security-group-ids "sg-0ab38acb31986250b" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=WebServer},{Key=Environment,Value=Development}]' \
--key-name "aws_california" --profile devops 
#--user-data file://install-web.txt --profile devops 
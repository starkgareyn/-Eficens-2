#!/bin/bash 

# Application Server on Ubuntu 20.04
aws ec2 run-instances \
--image-id "ami-01f87c43e618bf8f0" \
--instance-type "t2.medium" \
--count 1 \
--subnet-id "subnet-fa64cca0" \
--security-group-ids "sg-0ab38acb31986250b" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Tomcat},{Key=Environment,Value=Development}]' \
--key-name "aws_california" \
--user-data file://install-tomcat.txt --profile devops 

# aws ec2 terminate-instances --instance-ids i-00f2b3d81e75d8009 --profile devops

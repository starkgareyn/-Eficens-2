#!/bin/bash

# Create a Linux Operating System using AWS CLI Commands
aws ec2 run-instances \
--image-id "ami-0851b76e8b1bce90b" \
--instance-type "t2.medium" \
--count 1 \
--subnet-id "subnet-421fef29" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=k8s-Node1},{Key=Environment,Value=Development},{Key=Project Name,Value=Hatigen},{Key=Project ID,Value=20211204},{Key=Email ID,Value=trainings@hatigen.com},{Key=Mobile Number,Value=+91}]'  \
--security-group-ids  "sg-06e4607030e3448cf"   \
--key-name "softobiz_keys" \
--user-data file://k8s-node1-install.txt --profile devops
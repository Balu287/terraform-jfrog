#!/bin/bash
cd /home/circleci/src/examples/ec2-module
terraform init
sleep 30
terraform plan
sleep 30
terraform apply --auto-approve

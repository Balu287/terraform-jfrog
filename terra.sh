#!/bin/bash
terraform init
sleep 30
terraform plan
sleep 30
terraform apply --auto-approve

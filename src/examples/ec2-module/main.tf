# main.tf
provider "aws" {
  region = "us-east-1"
}
module "ec2" {
  source        = "https://sivapersonal.jfrog.io/artifactory/tf-terraform-modules-local/ec2-moduleterraform-aws-ec2-instance/aws"
  region        = "us-east-1"
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
output "instance_id" {
  value = module.ec2.instance_id
}

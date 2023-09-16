terraform {
  source = "tfr:///terraform-aws-modules/ec2-instance/aws?version=5.5.0"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  ami = "ami-053b0d53c279acc90"
  instance_type  = "t2.micro"
  tags = {
    Name = "Test Terra Instance"
  }
}
provider "aws" {
 region = "us-west-2"
}

module "ec2_instance" {
  source = "git@github.com:szubair/terraform-ec2-instance.git"

  name = "loyaltri-fe-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

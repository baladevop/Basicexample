provider "aws" {
  region = "us-east-1"
  access_key = "AKIARXEJ7IJ75RIH7HV7"
  secret_key = "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"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "akhila"

  ami                    = "ami-087c17d1fe0178315"
  instance_type          = "t2.micro"
  key_name               = "pavani"
  monitoring             = true
  vpc_security_group_ids = ["sg-0658ce05b3e13cfae"]
  subnet_id              = "subnet-02d9b7b0345d0c714"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

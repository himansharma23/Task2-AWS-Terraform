provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "free_tier_ec2" {
  ami           = "ami-0ff5003538b60d5ec"
  instance_type = "t2.micro"
  key_name      = "first"

  tags = {
    Name = "FreeTier-EC2"
  }
}

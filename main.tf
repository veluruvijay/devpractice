provider "aws" {
  region = "us-east-1"  # Change this to your preferred region
}

resource "aws_instance" "example" {
  ami           = "ami-053a45fff0a704a47"  # Change this to your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_vpc" "default" {
  id = "vpc-" # Replace with your default VPC ID
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change this to your desired AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-" # Replace with a subnet from the default VPC

  tags = {
    Name = "ExampleInstance"
  }
}

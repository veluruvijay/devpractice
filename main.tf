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

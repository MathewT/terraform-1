provider "aws" {
  access_key = "your key"
  secret_key = "your secret"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

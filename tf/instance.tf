provider "aws" {
  access_key = "AKIAJ6V7UM6CADAVSAAA"
  secret_key = "FLOTwoeNL4I7E1p1WsxkGJEq53xGiOBjWi6FxB5c"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
resource "aws_instance" "bc-redis-1" {
  ami           = "ami-5cd4a126"
  instance_type = "t2.micro"
  subnet_id = "subnet-9eb33ea1"
  vpc_security_group_ids = ["sg-24264f51"]
}

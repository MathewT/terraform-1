resource "aws_spot_instance_request" "bc-redis-1" {
  ami           = "ami-ee4eac93"
  instance_type = "m4.large"
  subnet_id = "subnet-9eb33ea1"
  vpc_security_group_ids = ["sg-24264f51"]
  iam_instance_profile = "bc-machine-role-2"
  key_name = "vpc-47"

  spot_price    = "0.05"
  wait_for_fulfillment = true

  tags {
    Name = "bc-redis-1"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get -y update
              sudo apt-get -y install apache2
              EOF
}

resource "aws_spot_instance_request" "bc-redis-1" {
  ami           = "ami-ee4eac93"
  instance_type = "m4.large"
  subnet_id = "subnet-9eb33ea1"
  vpc_security_group_ids = ["sg-24264f51"]
  iam_instance_profile = "bc-machine-role-2"
  key_name = "vpc-47"

  spot_price    = "0.05"
  wait_for_fulfillment = true
  spot_type = "persistent"
  block_duration_minutes = "60"

  connection {
    user = "ubuntu"
    private_key = "${file("/.ssh/vpc-47.pem")}"
    host = "${aws_spot_instance_request.bc-redis-1.public_ip}"
  }

  tags {
    Name = "bc-redis-1"
  }

  provisioner "file" {
    source = "shell/provision.sh"
    destination = "/home/ubuntu/provision.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash /home/ubuntu/provision.sh"
    ]
  }

/*   user_data = <<-EOF
              #!/bin/bash
              sudo apt-get -y update
              sudo apt-get -y install apache2
              EOF
              */
}

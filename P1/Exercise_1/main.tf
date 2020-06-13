# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-west-2"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = 1
  ami = "ami-0e34e7b9ca0ace12d"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count = 2
  ami = "ami-0e34e7b9ca0ace12d"
  instance_type = "m4.large"
  tags = {
    Name = "Udacity M4"
  }
}
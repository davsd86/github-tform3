resource "aws_instance" "test3" {
  ami           = "ami-0e34bbddc66def5ac"
  instance_type = "t3.micro"

  tags = {
    Name = "bitbucketest3"
  }
}
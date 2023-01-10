resource "aws_instance" "test3" {
  ami           = "ami-0fe0b2cf0e1f25c8a"
  instance_type = "t3.micro"

  tags = {
    Name = "bitbucketest8"
  }
}

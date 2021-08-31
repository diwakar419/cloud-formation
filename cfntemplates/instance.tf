provider "aws" {
  region = "us-east-1"
  access_key=var.aws_access_key
  secret_key=var.aws_secret_key 
}
resource "aws_instance" "web" {
  ami           = "ami-02dc8ad50da58fffd"
  instance_type = "t3.micro"

  tags = {
    Name = "Diwakar_TF"
  }
}

provider "aws" {
  region  = "eu-west-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "Stefan"
}


resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu-ami.id
  instance_type = "t2.micro"

  tags = {
    name = "ubuntu_test"
  }
}
   




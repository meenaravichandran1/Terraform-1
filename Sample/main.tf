provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "apptest" {
  instance_type = "t2.nano"
  ami           = "ami-0aa7d40eeae50c9a9"
}

resource "aws_instance" "apptes6t" {
  instance_type = "t2.nano"
  ami           = "ami-0aa7d40eeae50c9a9"

  depends_on = [aws_instance.apptest]
}

output "apptest" {
  value = aws_instance.apptest.id
}

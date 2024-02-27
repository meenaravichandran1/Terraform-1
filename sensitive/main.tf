variable "sensitive_data" {
  description = "Sensitive data to be passed to the EC2 instance"
  type        = string
  sensitive   = true
}

provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}


# EC2 instance resource
resource "aws_instance" "example_instance" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  # User data to be passed to the instance
  user_data = base64encode(var.sensitive_data)

  tags = {
    Name = "example-instance"
  }
}

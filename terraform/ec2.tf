resource "aws_instance" "app_server" {
  ami           = "ami-xxxxxxxx"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
}
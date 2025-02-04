# Creating ec2_instance
resource "aws_instance" "server1" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.sg-demo.name]
  key_name      = "week7d2"
  tags = {
    Name = "Terraform-server"
    Team = "DevOps"
  }
  user_data = file("install.sh")
}
/* # commenting many lines
#Creating EBS and attached
resource "aws_ebs_volume" "vol1" {
  availability_zone = aws_instance.server1.availability_zone
  size = 10
  tags = {
    Name = "Terraform-valume"
    Created = "Cloud"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.vol1.id
  instance_id = aws_instance.server1.id
}
*/


variable "ami" {
  default = "ami-026b57f3c383c2eec"
  type = string
}
variable "region_name" {
  default = "us-east-1"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "volume_size" {
  default = 10
}
variable "key_name" {
  default = "week7d2"
}


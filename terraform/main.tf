terraform {
  backend "s3" {
    bucket = "ftpg3nes1s"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
resource "aws_security_group" "prod" {
    name = "next-firewall"

}

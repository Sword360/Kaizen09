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
resource "aws_security_group" "prdev" {
    name = "ndos-firewall"
}

resource "aws_iam_user" "dev"{
    name="evan"
}

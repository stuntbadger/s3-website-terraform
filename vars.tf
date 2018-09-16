variable "aws_region" {
    default = "eu-west-2"
}
variable "aws_access_key" {
    default = "<aws key>" 
    }
variable "aws_secret_key" {
    default = "<aws secret key>"
}
variable "site_name" {
    description = "Domain name (DNS)"
    default ="www.eth2.co.uk"
}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

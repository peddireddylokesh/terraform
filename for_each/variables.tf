variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        frontend = "t3.micro"
        backend = "t3.micro"
    }
}

variable "domain_name" {
    type = string
    default = "lokeshportfo.site"
}
variable "zone_id" {
    type = string
    default = "Z00188163RC0DY3NOAH3R"
}
variable "aws_region" {
    type = string
    default = "us-east-1"
}

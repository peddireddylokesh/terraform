variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is my rhel-9 AMI ID"

}
variable "environment" {
  default = "prod"
}
variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is my instance type"
}
variable "ec2-tags" {
  type = map
  default = {
    Project     = "expense"
    Component   = "backend"
    Environment = "dev"
    Name        = "expense-backend-dev"
  }

}
variable "from_port" {
  type    = number
  default = 22
}
variable "to_port" {
  type    = number
  default = 22
}
variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
variable "sg_tags" {
  type = map(string)
  default = {
    Name = "expense-backend-dev"
  }
}
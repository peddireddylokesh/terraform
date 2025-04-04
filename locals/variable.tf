variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "The type of instance to create"

}

variable "project" {
    default = "expense"
}
variable "environment" {
    default = "dev"
}
variable "component" {
    default = "backend"
}


variable "instances" {
  default = ["mysql","backend","frontend"]
}

variable "zone_id" {
  default = "Z00188163RC0DY3NOAH3R"
}

variable "domain_name" {
  default = "lokeshportfo.site"
}

variable "comman_tags"{
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
    }
}
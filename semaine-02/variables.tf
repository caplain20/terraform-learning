variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t3.micro"
}

variable "region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-3"
}

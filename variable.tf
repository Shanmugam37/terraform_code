variable "ami_id" {
  type        = string
  description = "this the ami id value "
  default     = "ami-02259db6cfe9d0abf"
}
variable "instance_type" {
  type        = string
  description = "this variable is used for the instance_type"
  default     = "t2.micro"
}
# variable "security_group" {
#   type = 

#   description = "security_group is used here for the security purpose"
#   default = "aws_security_group.goodle_sec_group.id"
# }
variable "key_name" {
  type        = string
  description = "key-pair is used for the keyvalue "
  default     = "mumbaikey"
}

variable "image_id" {
  type        = string
  description = "this the image id value "
  default     = "ami-02259db6cfe9d0abf"
}

variable "load_balancer_arn" {
  type        = string
  description = "this arn is used for aws_auto_scaling_group_arn"
  default     = "arn:aws:elasticloadbalancing:ap-south-1:856725520313:targetgroup/123/cd148f9f7d77750a"
}

# variable "vpc" {
#   type = string
#   description = "this is used for the aws vpc"
#   default = aws_vpc
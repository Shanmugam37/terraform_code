# resource "aws_launch_configuration" "auto_scale_template" {
#   name            = "auto_scaling_template"
#   image_id        = var.image_id
#   security_groups = [aws_security_group.goodle_sec_group]
#   instance_type   = var.instance_type
#   key_name        = var.key_name
# }

# resource "aws_autoscaling_group" "auto_scaleing_group" {
#   name                 = "auto_scale_group"
#   max_size             = 5
#   min_size             = 2
#   desired_capacity     = 2
#   launch_configuration = aws_launch_configuration.auto_scale_template.id
#   availability_zones   = ["subnet-05e74dc9660b32d4f", "subnet-0d60784c5feb4bd54", "subnet-0a9d71e96a21501e4"]

#   tag {
#     key                 = "Name"
#     value               = "ExampleInstance"
#     propagate_at_launch = true
#   }
# }

# resource "aws_elb" "my_load_balancer" {
#   name               = "my-load-balancer"
#   security_groups    = [aws_security_group.goodle_sec_group.id]
#   availability_zones = ["ap_south_1a", "ap_south_1b", "ap_south_1c"]

#   listener {
#     lb_port           = 80
#     lb_protocol       = "http"
#     instance_port     = 80
#     instance_protocol = "http"
#   }

#   health_check {
#     timeout             = 5
#     target              = "HTTP:80/"
#     interval            = 20
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#   }

# resource "aws_vpc" "dada" {
#   cidr_block = "10.0.0.0/24"

# }
# resource "aws_lb_target_group" "alb-example" {
#   name        = "tf-example-lb-alb-tg"
#   target_type = "alb"
#   port        = 80
#   protocol    = "TCP"
#   vpc_id      = aws_vpc.dada.id
# } 
# resource "aws_lb_target_group" "lb_target_group" {

#   port        = 80
#   protocol    = "HTTP"
#   # vpc_id=aws_vpc.dada.id
# }

# }
# resource "aws_autoscaling_attachment" "autoscaling_attachment" {

#   autoscaling_group_name = aws_autoscaling_group.auto_scaleing_group.name

# }


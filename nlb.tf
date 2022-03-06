# resource "aws_lb" "nlb" {
#   name               = "nlb"
#   internal           = false
#   load_balancer_type = "network"
#   subnets            = [for subnet in aws_subnet.public : subnet.id]

#   enable_deletion_protection = true

#   tags = {
#     Environment = "production"
#   ***REMOVED***
# ***REMOVED***

# resource "aws_lb_listener" "nlb-listener-443" {
#   load_balancer_arn = aws_lb.nlb.arn
#   port              = "443"
#   protocol          = "TCP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.front_end.arn
#   ***REMOVED***
# ***REMOVED***

# resource "aws_lb_listener" "nlb-listener-1337" {
#   load_balancer_arn = aws_lb.nlb.arn
#   port              = "443"
#   protocol          = "TCP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.front_end.arn
#   ***REMOVED***
# ***REMOVED***

# resource "aws_lb_listener" "nlb-listener-80" {
#   load_balancer_arn = aws_lb.nlb.arn
#   port              = "80"
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.front_end.arn
#   ***REMOVED***
# ***REMOVED***


# resource "aws_lb_target_group" "allow-1337" {
#   name     = "routes ssh"
#   port     = 1337
#   protocol = "TCP"
#   vpc_id   = aws_vpc.main.id
# ***REMOVED***

# resource "aws_lb_target_group" "allow-80" {
#   name        = "routes http"
#   target_type = "alb"
#   port        = 80
#   protocol    = "HTTP"
#   vpc_id      = aws_vpc.main.id
# ***REMOVED***

# resource "aws_lb_target_group_attachment" "nlb-attachment" {
#   target_group_arn = aws_lb_target_group.eks-nodes-target.arn
#   target_id        = aws_eks_node_group.nodes_general.id
#   port             = 80
# ***REMOVED***

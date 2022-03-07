resource "aws_lb" "nlb" {

  depends_on = [time_sleep.wait_120_seconds]

  name               = "nlb"
  internal           = false
  load_balancer_type = "network"
  subnets            = [
      aws_subnet.private_1.id,
      aws_subnet.private_2.id,
      aws_subnet.private_3.id
    ]

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  ***REMOVED***
***REMOVED***

resource "aws_lb_listener" "nlb-listener-443" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = "443"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front-end-allow-443.arn
  ***REMOVED***
***REMOVED***

resource "aws_lb_listener" "nlb-listener-1337" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = "1337"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front-end-allow-1337.arn
  ***REMOVED***
***REMOVED***

resource "aws_lb_listener" "nlb-listener-8081" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = "8081"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front-end-allow-8081.arn
  ***REMOVED***
***REMOVED***




resource "aws_lb_target_group" "front-end-allow-1337" {
  name     = "routes-ssh"
  port     = 1337
  protocol = "TCP"
  vpc_id   = aws_vpc.main.id
***REMOVED***

resource "aws_lb_target_group" "front-end-allow-8081" {
  name        = "routes-http"
  target_type = "alb"
  port        = 8081
  protocol    = "TCP"
  vpc_id      = aws_vpc.main.id
***REMOVED***

resource "aws_lb_target_group" "front-end-allow-443" {
  name        = "routes-http"
  target_type = "alb"
  port        = 443
  protocol    = "TCP"
  vpc_id      = aws_vpc.main.id
***REMOVED***

resource "time_sleep" "wait_120_seconds" {

  depends_on = [aws_iam_role.nodes_general]

  create_duration = "120s"
***REMOVED***

resource "aws_lb_target_group_attachment" "nlb-attachment-8081" {
  target_group_arn = aws_lb_target_group.front-end-allow-8081.arn
  target_id        = file("file.txt")
  port             = 8081
***REMOVED***

resource "aws_lb_target_group_attachment" "nlb-attachment-443" {
  target_group_arn = aws_lb_target_group.front-end-allow-443.arn
  target_id        = file("file.txt")
  port             = 443
***REMOVED***

resource "aws_lb_target_group_attachment" "nlb-attachment-1337" {
  target_group_arn = aws_lb_target_group.front-end-allow-1337.arn
  target_id        = aws_eks_node_group.nodes_general.arn
  port             = 1337
***REMOVED***

output "nlb_id" {
  value       = aws_lb.nlb.dns_name
  description = "nlb dns address"
  # Setting an output value as sensitive prevents Terraform from showing its value in plan and apply.
  sensitive = false
***REMOVED***
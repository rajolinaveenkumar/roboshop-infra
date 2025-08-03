# Target group

resource "aws_lb_target_group" "expense_tg" {
  name = "${var.exp_project}-${var.environment}-expense-TG"

  port                 = 8080
  protocol             = "HTTP"
  vpc_id               = local.vpc_id
  target_type          = "ip"
  deregistration_delay = 60

  health_check {
    path                = "/"
    protocol            = "HTTP"
    port                = "8079"
    interval            = 10
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 2
    matcher             = "200-299"
  }
}

resource "aws_lb_listener_rule" "backend" {
  listener_arn = data.aws_ssm_parameter.listener_arn.value
  priority     = 10
  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.expense_tg.arn
  }
  condition {
    host_header {
      values = ["expense-${var.environment}.${var.domain_name}"]
    }
  }
}
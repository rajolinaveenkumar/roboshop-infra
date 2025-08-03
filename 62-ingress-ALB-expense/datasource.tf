data "aws_ssm_parameter" "listener_arn" {
  name = "/${var.project_name}/${var.environment}/web_alb_listener_arn"
}

data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}



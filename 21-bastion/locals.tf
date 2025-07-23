locals {
    server_name = "${var.project_name}-${var.environment}-bastion"
    instance_type = "t3.micro"
    public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_id.value)[0]
    zone_id = data.aws_route53_zone.get_domain.id
    zone_name = data.aws_route53_zone.get_domain.name
}
locals{
    https_certificate_arn = data.aws_ssm_parameter.ssl_cert_arn.value
    zone_id = data.aws_route53_zone.zone_info.id
}
resource "aws_acm_certificate" "cert" {
    #domain_name = "naveenrajoli.site" # if not using cdn
    domain_name = "*.naveenrajoli.site" # if using cdn

    validation_method = "DNS"

    tags = merge(
        
        var.common_tags,
        {
            Name            =  local.cert_name
            Owner    =  "Naveen Rajoli"
            Terraform       = true
        }
    )

}

resource "aws_route53_record" "expense" {
  for_each = {
    for dvo in aws_acm_certificate.cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = local.zone_id
}


# Validate the certificate
resource "aws_acm_certificate_validation" "acm_validation" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [for record in aws_route53_record.expense : record.fqdn]
}
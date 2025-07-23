data "aws_cloudfront_cache_policy" "noCache" {
  name = "Managed-CachingDisabled"
}

data "aws_cloudfront_cache_policy" "cacheEnable" {
  name = "Managed-CachingOptimized"
}

data "aws_ssm_parameter" "ssl_cert_arn" {
  name = "/${var.project_name}/${var.environment}/ssl_cert_arn"
}

data "aws_route53_zone" "zone_info" {
  name         = "naveenrajoli.site"
  
}

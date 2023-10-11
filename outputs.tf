output "bucket_name"{
    description = "Bucket name for our static website hosting"
    value = module.home_soul_hosting.bucket_name
}

output "website_endpoint"{
    description = "S3 static website hosting endpoint "
    value = module.home_soul_hosting.website_endpoint
}

output "cloudfront_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.home_soul_hosting.domain_name
}
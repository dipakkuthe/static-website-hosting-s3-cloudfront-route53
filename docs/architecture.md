# Architecture Notes

## Components

- S3 stores HTML, CSS, JavaScript and assets.
- CloudFront caches the website at edge locations.
- Route 53 maps the domain to CloudFront using an alias record.
- ACM provides HTTPS certificates for the custom domain.

## Best Practices

- Use CloudFront in front of S3 for performance and HTTPS.
- Keep S3 bucket access minimal.
- Use cache invalidations after production deployments.
- Store Terraform state remotely for team usage.
- Enable S3 versioning for recovery.

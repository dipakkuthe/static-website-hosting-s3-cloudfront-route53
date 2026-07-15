# Static Website Hosting using Amazon S3, CloudFront and Route 53

This project demonstrates production-style static website hosting on AWS using Amazon S3 for object storage, CloudFront for CDN delivery, ACM for HTTPS, and Route 53 for custom domain DNS.

## Skills Covered

- Amazon S3 static website hosting
- CloudFront CDN and cache invalidation
- Route 53 alias records
- ACM SSL/TLS certificate setup
- Bucket policy and public access controls
- Deployment automation

## Architecture

```text
User -> Route 53 -> CloudFront -> S3 static website bucket
```

CloudFront serves cached content globally and uses the S3 bucket as the origin. Route 53 points the custom domain to the CloudFront distribution.

## Project Structure

```text
site/                 Static website files
terraform/            Infrastructure as Code starter
scripts/              Deployment and invalidation helpers
docs/                 Architecture notes
```

## Deployment Flow

1. Create or update the S3 bucket.
2. Upload website files from `site/`.
3. Create CloudFront distribution with S3 origin.
4. Add ACM certificate in `us-east-1`.
5. Create Route 53 alias record for the domain.
6. Invalidate CloudFront cache after content updates.

## Commands

```bash
cd terraform
terraform init
terraform plan
terraform apply

../scripts/deploy-static-site.sh my-bucket-name E123CLOUDFRONTID
```

## Cleanup

```bash
cd terraform
terraform destroy
```

## Notes

Replace sample names, domain values, and certificate ARN before applying in a real AWS account.

# Architecture — Static Website Hosting (S3, CloudFront & Route 53)

A static website served securely and globally: content is stored in S3, delivered via the CloudFront CDN with HTTPS, and reached through a custom domain in Route 53.

```mermaid
flowchart LR
    U[User / Browser] -->|custom domain| R53[Route 53 DNS]
    R53 --> CF[CloudFront CDN - HTTPS]
    CF -->|origin fetch| S3[(S3 Bucket - static site)]
    ACM[ACM TLS Certificate] -.->|HTTPS| CF
```

## How it works

- Route 53 resolves the custom domain to the CloudFront distribution.
- CloudFront caches content at edge locations for low latency and serves it over HTTPS.
- The S3 bucket is the origin holding the static website files (private, accessed via CloudFront).
- An ACM certificate provides TLS so the site is served securely over HTTPS.

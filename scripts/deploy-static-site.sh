#!/usr/bin/env bash
set -euo pipefail

BUCKET_NAME="${1:?Usage: deploy-static-site.sh <bucket-name> <cloudfront-distribution-id>}"
DISTRIBUTION_ID="${2:?Usage: deploy-static-site.sh <bucket-name> <cloudfront-distribution-id>}"

aws s3 sync site/ "s3://${BUCKET_NAME}" --delete
aws cloudfront create-invalidation --distribution-id "${DISTRIBUTION_ID}" --paths "/*"

echo "Static website deployed and CloudFront invalidation requested."

#!/usr/bin/env bash
echo Clean Cloudflare cache...
curl -X DELETE https://api.cloudflare.com/client/v4/zones/$CLOUDFLARE_ZONE_ID/purge_cache \
  -H "X-Auth-Email: $CLOUDFLARE_EMAIL" \
  -H "X-Auth-Key: $CLOUDFLARE_KEY" \
  -H "Content-Type: application/json" \
  --data '{"purge_everything":true}'
